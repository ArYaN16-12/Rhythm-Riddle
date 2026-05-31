from flask import Flask, render_template, request, redirect, url_for, session, flash
from werkzeug.security import generate_password_hash, check_password_hash
import mysql.connector
import random

app = Flask(__name__)
app.secret_key = "mysecretkey"

# ------------------ Database Connection ------------------
def get_db():
    return mysql.connector.connect(
        host="localhost",
        user="root",
        password="kakarot",
        database="music"
    )

# ------------------ Home ------------------
@app.route("/")
def index():
    return render_template("index.html")

# ------------------ Signup ------------------
@app.route("/signup", methods=["GET", "POST"])
def signup():
    if request.method == "POST":
        username = request.form["username"]
        password = request.form["password"]
        confirm_password = request.form["confirm_password"]

        if password != confirm_password:
            return "Passwords do not match!"

        db = get_db()
        cur = db.cursor(dictionary=True)

        # Check if user already exists
        cur.execute("SELECT * FROM users WHERE username=%s", (username,))
        if cur.fetchone():
            cur.close()
            db.close()
            return "Username already exists!"

        # Hash the password
        hashed_password = generate_password_hash(password)

        # Insert user into database
        cur.execute("INSERT INTO users (username, password) VALUES (%s, %s)", (username, hashed_password))
        db.commit()
        cur.close()
        db.close()

        return redirect(url_for("login"))

    return render_template("signup.html")

# ------------------ Login ------------------
@app.route("/login", methods=["GET", "POST"])
def login():
    if request.method == "POST":
        username = request.form["username"]
        password = request.form["password"]

        db = get_db()
        cur = db.cursor(dictionary=True)
        cur.execute("SELECT * FROM users WHERE username=%s", (username,))
        user = cur.fetchone()
        cur.close()
        db.close()

        if user and check_password_hash(user["password"], password):
            session["user_id"] = user["id"]
            session["username"] = user["username"]
            return redirect(url_for("language"))
        else:
            return "Invalid login!"

    return render_template("login.html")

# ------------------ Language ------------------
@app.route("/language", methods=["GET", "POST"])
def language():
    if request.method == "POST":
        session["language"] = request.form["language"]
        return redirect(url_for("genre"))
    return render_template("language.html")

# ------------------ Genre ------------------
@app.route("/genre", methods=["GET", "POST"])
def genre():
    if "language" not in session:
        return redirect(url_for("language"))

    if request.method == "POST":
        genre = request.form["genre"]
        language = session["language"]

        # Save selected genre in session for later use
        session["genre"] = genre

        db = get_db()
        cur = db.cursor(dictionary=True)
        cur.execute("SELECT * FROM songs WHERE language=%s AND genre=%s", (language, genre))
        songs = cur.fetchall()
        cur.close()
        db.close()

        chosen = random.sample(songs, min(5, len(songs)))  # pick 5 random songs
        session["quiz"] = {"songs": chosen, "index": 0, "score": 0, "total": len(chosen)}
        return redirect(url_for("question"))

    # Show genres based on chosen language
    genres = ["Bollywood", "Punjabi", "Qawwali"] if session["language"] == "Hindi" else ["Kpop", "Pop", "Rap"]
    return render_template("genre.html", genres=genres)

# ------------------ Question ------------------
@app.route("/question", methods=["GET", "POST"])
def question():
    quiz = session.get("quiz")
    if not quiz:
        return redirect(url_for("language"))

    if request.method == "POST":
        answer = request.form.get("option")
        correct = quiz["songs"][quiz["index"]]["answer"]

        if answer == correct:
            quiz["score"] += 1

        quiz["index"] += 1
        session["quiz"] = quiz

        # When all questions are done
        if quiz["index"] >= quiz["total"]:
            return redirect(url_for("result"))

    q = quiz["songs"][quiz["index"]]
    options = [q["option1"], q["option2"], q["option3"], q["option4"]]
    random.shuffle(options)
    return render_template("question.html", q=q, options=options, index=quiz["index"] + 1, total=quiz["total"])

# ------------------ Result (Saves Data in Scores Table) ------------------
@app.route("/result")
def result():
    quiz = session.get("quiz")
    if not quiz:
        return redirect(url_for("language"))

    score = quiz["score"]
    total = quiz["total"]
    user_id = session.get("user_id")
    genre = session.get("genre")

    # Save result into scores table
    db = get_db()
    cur = db.cursor()
    cur.execute("""
        INSERT INTO scores (user_id, score, total_questions, genre)
        VALUES (%s, %s, %s, %s)
    """, (user_id, score, total, genre))
    db.commit()
    cur.close()
    db.close()

    session.pop("quiz", None)
    return render_template("result.html", score=score, total=total)

# ------------------ Run Flask App ------------------
if __name__ == "__main__":
    app.run(debug=True)
