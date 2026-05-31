# Rhythm-Riddle
Rhythm Riddle is an interactive music quiz web application that combines entertainment with music knowledge. Players listen to song clips, answer genre-based questions, and compete for high scores through a timed quiz experience.

## Features
- User Registration & Login System
- Secure Password Hashing
- Genre-Based Quiz Selection
- Random Question Generation
- 40-Second Timer for Each Question
- Automatic Score Calculation
- Scoreboard System
- MySQL Database Integration
- Responsive Web Interface
- Session Management with Flask

## Tech Stack

### frontend
- HTML
- CSS
- JavaScript

### Backend
- Python
- Flask

### Database
- MySQL

### Security
- Werkzeug Password Hashing
- Session-Based Authentication


## How It Works

1. User creates an account or logs in.
2. Select a preferred language.
3. Choose a music genre.
4. System randomly selects 5 questions.
5. Listen to the song clip and answer the question.
6. Each question has a 40-second timer.
7. Final score is calculated automatically.
8. Results are stored in the database.
9. Scoreboard displays player performance.

## Supported Genres

### Hindi
- Bollywood
- Punjabi
- Qawwali

### English
- K-Pop
- Pop
- Rap

## Database Tables

### Users
Stores registered user information.

```sql
users
├── id
├── username
└── password

### Songs
Stores song information and quiz questions.

```sql
songs
├── id
├── title
├── language
├── genre
├── song_path
├── question
├── option1
├── option2
├── option3
├── option4
└── answer
```

### Scores
Stores quiz results.

```sql
scores
├── id
├── user_id
├── score
├── total_questions
├── genre
└── played_on
```

## Security Features

- Password Hashing using Werkzeug
- Session-Based Authentication
- Input Validation
- Protected Routes
- Secure Database Operations

## Note

Audio files used in this project are not included in this repository due to size and copyright considerations.

To run the project completely:

1. Create the required music folders.
2. Add your own audio files.
3. Update the `song_path` entries in the database accordingly.

The application logic, database schema, and quiz functionality remain fully available in this repository.



This project is developed for educational and learning purposes.

Feel free to fork, modify, and improve the project.`  
