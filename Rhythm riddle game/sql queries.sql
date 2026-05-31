 create database music;
 use music;
 CREATE TABLE users (
    id INT AUTO_INCREMENT PRIMARY KEY,
    username VARCHAR(100) UNIQUE NOT NULL,
    password VARCHAR(100) NOT NULL
);
CREATE TABLE scores (
    id INT AUTO_INCREMENT PRIMARY KEY,
    user_id INT NOT NULL,
    score INT NOT NULL,
    total_questions INT NOT NULL,
    genre VARCHAR(50) NOT NULL,
    played_on TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (user_id) REFERENCES users(id)
);
CREATE TABLE songs (
    id INT AUTO_INCREMENT PRIMARY KEY,
    title VARCHAR(255) NOT NULL,
    language ENUM('Hindi','English') NOT NULL,
    genre ENUM('Bollywood','Punjabi','Qawwali','Kpop','Pop','Rap') NOT NULL,
    song_path VARCHAR(500) NOT NULL,
    question VARCHAR(255) NOT NULL,
    option1 VARCHAR(255) NOT NULL,
    option2 VARCHAR(255) NOT NULL,
    option3 VARCHAR(255) NOT NULL,
    option4 VARCHAR(255) NOT NULL,
    answer VARCHAR(255) NOT NULL
);
show tables;

INSERT INTO songs (title, language, genre, song_path, question, option1, option2, option3, option4, answer)
VALUES
('Boombayah', 'English', 'Kpop', '"E:\SEM 3\Mini Project\python sql and frontend code\static\music\Kpop\boombayah mp3free.org.mp3"',
 'Who is the singer of this song?', 'BLACKPINK', 'BTS', 'Stray Kids', 'IVE', 'BLACKPINK'),

('Butter', 'English', 'Kpop', '"E:\SEM 3\Mini Project\python sql and frontend code\static\music\Kpop\butter mp3free.org.mp3"',
 'Who is the singer of this song?', 'BTS', 'BLACKPINK', 'PSY', 'Jennie', 'BTS'),

('Dynamite', 'English', 'Kpop', '"E:\SEM 3\Mini Project\python sql and frontend code\static\music\Kpop\dynamite mp3free.org.mp3"',
 'Who is the singer of this song?', 'BTS', 'Stray Kids', 'BLACKPINK', 'IVE', 'BTS'),

('Kill This Love', 'English', 'Kpop', '"E:\SEM 3\Mini Project\python sql and frontend code\static\music\Kpop\kill-this-love mp3free.org.mp3"',
 'Who is the singer of this song?', 'BLACKPINK', 'PSY', 'BTS', 'Jennie', 'BLACKPINK'),

('Like Jennie', 'English', 'Kpop', '"E:\SEM 3\Mini Project\python sql and frontend code\static\music\Kpop\like-jennie mp3free.org.mp3"',
 'Who is the singer of this song?', 'Jennie', 'Lisa', 'Jisoo', 'Rosé', 'Jennie'),

('Love Dive', 'English', 'Kpop', '"E:\SEM 3\Mini Project\python sql and frontend code\static\music\Kpop\love-dive mp3free.org.mp3"',
 'Who is the singer of this song?', 'IVE', 'BLACKPINK', 'BTS', 'Stray Kids', 'IVE'),

('Maniac', 'English', 'Kpop', '"E:\SEM 3\Mini Project\python sql and frontend code\static\music\Kpop\maniac mp3free.org.mp3"',
 'Who is the singer of this song?', 'Stray Kids', 'BTS', 'PSY', 'IVE', 'Stray Kids'),

('Money', 'English', 'Kpop', '"E:\SEM 3\Mini Project\python sql and frontend code\static\music\Kpop\money mp3free.org.mp3"',
 'Who is the singer of this song?', 'Lisa', 'Jennie', 'BLACKPINK', 'PSY', 'Lisa'),

('Savage Love', 'English', 'Kpop', '"E:\SEM 3\Mini Project\python sql and frontend code\static\music\Kpop\savage-love mp3free.org.mp3"',
 'Who performs this song?', 'Jawsh 685 & Jason Derulo (feat. BTS)', 'BTS', 'BLACKPINK', 'EXO', 'Jawsh 685 & Jason Derulo (feat. BTS)'),

('That That', 'English', 'Kpop', '"E:\SEM 3\Mini Project\python sql and frontend code\static\music\Kpop\that-that mp3free.org.mp3"',
 'Who is the singer of this song?', 'PSY ft. Suga', 'BTS', 'BLACKPINK', 'Stray Kids', 'PSY ft. Suga');

select*from songs;
INSERT INTO songs (title, language, genre, song_path, question, option1, option2, option3, option4, answer)
VALUES
('August', 'English', 'Pop', '"E:\SEM 3\Mini Project\python sql and frontend code\static\music\pop\august mp3free.org.mp3"',
 'Who is the singer of this song?', 'Taylor Swift', 'Ed Sheeran', 'Ellie Goulding', 'BØRNS', 'Taylor Swift'),

('Cardigan', 'English', 'Pop', '"E:\SEM 3\Mini Project\python sql and frontend code\static\music\pop\cardigan mp3free.org.mp3"',
 'Who is the singer of this song?', 'Taylor Swift', 'Ed Sheeran', 'Ruth B.', 'Ellie Goulding', 'Taylor Swift'),

('Dandelion', 'English', 'Pop', '"E:\SEM 3\Mini Project\python sql and frontend code\static\music\pop\dandelions mp3free.org.mp3"',
 'Who is the singer of this song?', 'Ruth B.', 'Taylor Swift', 'Ed Sheeran', 'Ellie Goulding', 'Ruth B.'),

('Love Me Like You Do', 'English', 'Pop', '"E:\SEM 3\Mini Project\python sql and frontend code\static\music\pop\love-me-like-you-do mp3free.org.mp3"',
 'Who is the singer of this song?', 'Ellie Goulding', 'Taylor Swift', 'Ed Sheeran', 'Ruth B.', 'Ellie Goulding'),

('Lover', 'English', 'Pop', '"E:\SEM 3\Mini Project\python sql and frontend code\static\music\pop\lover mp3free.org.mp3"',
 'Who is the singer of this song?', 'Ellie Goulding', 'Taylor Swift', 'Ed Sheeran', 'Ruth B.', 'Taylor Swift'),

('Past Lives', 'English', 'Pop', '"E:\SEM 3\Mini Project\python sql and frontend code\static\music\pop\pastlives mp3free.org.mp3"',
 'Who is the singer of this song?', 'BØRNS', 'Taylor Swift', 'Ed Sheeran', 'Ellie Goulding', 'BØRNS'),

('Perfect', 'English', 'Pop', '"E:\SEM 3\Mini Project\python sql and frontend code\static\music\pop\perfect mp3free.org.mp3"',
 'Who is the singer of this song?', 'Ed Sheeran', 'Taylor Swift', 'Ellie Goulding', 'Ruth B.', 'Ed Sheeran'),

('Shake It Off', 'English', 'Pop', '"E:\SEM 3\Mini Project\python sql and frontend code\static\music\pop\shake-it-off mp3free.org.mp3"',
 'Who is the singer of this song?', 'Taylor Swift', 'Ed Sheeran', 'Ruth B.', 'Ellie Goulding', 'Taylor Swift'),

('Shape of You', 'English', 'Pop', '"E:\SEM 3\Mini Project\python sql and frontend code\static\music\pop\shape-of-you mp3free.org.mp3"',
 'Who is the singer of this song?', 'Ed Sheeran', 'Taylor Swift', 'Ellie Goulding', 'Ruth B.', 'Ed Sheeran'),

('The Way I Loved You', 'English', 'Pop', '"E:\SEM 3\Mini Project\python sql and frontend code\static\music\pop\the-way-i-loved-you mp3free.org.mp3"',
 'Who is the singer of this song?', 'Taylor Swift', 'Ed Sheeran', 'Ellie Goulding', 'Ruth B.', 'Taylor Swift');

select*from songs;

INSERT INTO songs (title, language, genre, song_path, question, option1, option2, option3, option4, answer)
VALUES
('30 for 30', 'English', 'Rap', '"E:\SEM 3\Mini Project\python sql and frontend code\static\music\Rap\30-for-30 mp3free.org.mp3"',
 'Who performs this song?', 'Kendrick Lamar & SZA', 'Drake', 'Gunna', 'Young Thug', 'Kendrick Lamar & SZA'),

('Actin Up', 'English', 'Rap', '"E:\SEM 3\Mini Project\python sql and frontend code\static\music\Rap\actin-up mp3free.org.mp3"',
 'Who performs this song?', 'Tommy Richman', 'Kendrick Lamar', 'Drake', 'Flipsyde', 'Tommy Richman'),

('Gimme a Hug', 'English', 'Rap', '"E:\SEM 3\Mini Project\python sql and frontend code\static\music\Rap\gimme-a-hug mp3free.org.mp3"',
 'Who performs this song?', 'Drake', 'The Weeknd', 'Playboi Carti', 'Young Thug', 'Drake'),

('Him All Along', 'English', 'Rap', '"E:\SEM 3\Mini Project\python sql and frontend code\static\music\Rap\him-all-along mp3free.org.mp3"',
 'Who performs this song?', 'Gunna', 'Kendrick Lamar', 'Drake', 'Young Thug', 'Gunna'),

('Luther', 'English', 'Rap', '"E:\SEM 3\Mini Project\python sql and frontend code\static\music\Rap\luther mp3free.org.mp3"',
 'Who performs this song?', 'Kendrick Lamar & SZA', 'Gunna', 'Playboi Carti', 'Drake', 'Kendrick Lamar & SZA'),

('Money on Money', 'English', 'Rap', '"E:\SEM 3\Mini Project\python sql and frontend code\static\music\Rap\money-on-money mp3free.org.mp3"',
 'Who performs this song?', 'Young Thug feat. Future', 'Drake', 'Gunna', 'Kendrick Lamar', 'Young Thug feat. Future'),

('My World', 'English', 'Rap', '"E:\SEM 3\Mini Project\python sql and frontend code\static\music\Rap\my-world mp3free.org.mp3"',
 'Who performs this song?', 'DE MIYAA & Lil Rae', 'Flipsyde', 'Playboi Carti & The Weeknd', 'Gunna', 'DE MIYAA & Lil Rae'),

('Someday', 'English', 'Rap', '"E:\SEM 3\Mini Project\python sql and frontend code\static\music\Rap\someday mp3free.org.mp3"',
 'Who performs this song?', 'Flipsyde', 'Tommy Richman', 'DE MIYAA', 'Playboi Carti', 'Flipsyde');

select*from songs;

INSERT INTO songs (title, language, genre, song_path, question, option1, option2, option3, option4, answer)
VALUES
('Azul', 'Hindi', 'Punjabi', '"E:\SEM 3\Mini Project\python sql and frontend code\static\music\punjabi\azul mp3free.org.mp3"',
 'Who is the singer of this song?', 'Guru Randhawa', 'Diljit Dosanjh', 'Amar Arshi', 'Ali Sethi', 'Guru Randhawa'),

('Ikk Kudi', 'Hindi', 'Punjabi', '"E:\SEM 3\Mini Project\python sql and frontend code\static\music\punjabi\ikk-kudi mp3free.org.mp3"',
 'Who is the singer of this song?', 'Diljit Dosanjh', 'Shahid Mallya', 'Ali Sethi', 'Guru Randhawa', 'Diljit Dosanjh'),

('Kala Chashma', 'Hindi', 'Punjabi', '"E:\SEM 3\Mini Project\python sql and frontend code\static\music\punjabi\kala-chashma mp3free.org.mp3"',
 'Who is the singer (original version)?', 'Amar Arshi', 'Badshah', 'Neha Kakkar', 'Diljit Dosanjh', 'Amar Arshi'),

('Kali Activa', 'Hindi', 'Punjabi', '"E:\SEM 3\Mini Project\python sql and frontend code\static\music\punjabi\kali-activa mp3free.org.mp3"',
 'Who is the singer of this song?', 'Rupinder Handa', 'Diljit Dosanjh', 'Amar Arshi', 'Guru Randhawa', 'Rupinder Handa'),

('London Thumakda', 'Hindi', 'Punjabi', '"E:\SEM 3\Mini Project\python sql and frontend code\static\music\punjabi\london-thumakda mp3free.org.mp3"',
 'Who are the singers of this song?', 'Labh Janjua, Neha Kakkar, Sonu Kakkar', 'Diljit Dosanjh', 'Amar Arshi', 'Ali Sethi', 'Labh Janjua, Neha Kakkar, Sonu Kakkar'),

('Lover', 'Hindi', 'Punjabi', '"E:\SEM 3\Mini Project\python sql and frontend code\static\music\punjabi\lover mp3free.org.mp3"',
 'Who is the singer of this song?', 'Guri', 'Diljit Dosanjh', 'Ali Sethi', 'Guru Randhawa', 'Diljit Dosanjh'),

('Passoorie', 'Hindi', 'Punjabi', '"E:\SEM 3\Mini Project\python sql and frontend code\static\music\punjabi\pasoori mp3free.org.mp3"',
 'Who are the singers of this song?', 'Ali Sethi & Shae Gill', 'Diljit Dosanjh', 'Guri', 'Amar Arshi', 'Ali Sethi & Shae Gill'),

('Tu Juliet Jatt Di', 'Hindi', 'Punjabi', '"E:\SEM 3\Mini Project\python sql and frontend code\static\music\punjabi\tu-juliet-jatt-di mp3free.org.mp3"',
 'Who are the singers of this song?', 'Diljit Dosanjh & Harnoor', 'Guru Randhawa', 'Guri', 'Ali Sethi', 'Diljit Dosanjh & Harnoor'),

('Waalian', 'Hindi', 'Punjabi', '"E:\SEM 3\Mini Project\python sql and frontend code\static\music\punjabi\waalian mp3free.org.mp3"',
 'Who is the singer of this song?', 'Harnoor', 'Diljit Dosanjh', 'Amar Arshi', 'Guru Randhawa', 'Harnoor');


select*from songs;

INSERT INTO songs (title, language, genre, song_path, question, option1, option2, option3, option4, answer)
VALUES
('Afreen Afreen', 'Hindi', 'Qawwali', '"E:\SEM 3\Mini Project\python sql and frontend code\static\music\Qawwali\afreen-afreen mp3free.org.mp3"',
 'Who is the singer of this song?', 'Nusrat Fateh Ali Khan', 'Rahat Fateh Ali Khan', 'Sabri Brothers', 'Ali Sethi', 'Nusrat Fateh Ali Khan'),

('Allah Hu Allah Hu', 'Hindi', 'Qawwali', '"E:\SEM 3\Mini Project\python sql and frontend code\static\music\Qawwali\allah-hu-allah-hu mp3free.org.mp3"',
 'Who is the singer of this song?', 'Sabri Brothers', 'Nusrat Fateh Ali Khan', 'Atif Aslam', 'Rahat Fateh Ali Khan', 'Nusrat Fateh Ali Khan'),

('Bhar Do Jholi Meri', 'Hindi', 'Qawwali', '"E:\SEM 3\Mini Project\python sql and frontend code\static\music\Qawwali\bhar-do-jholi-meri mp3free.org.mp3"',
 'Who is the singer of this song?', 'Sabri Brothers', 'Adnan Sami', 'Nusrat Fateh Ali Khan', 'Rahat Fateh Ali Khan', 'Sabri Brothers'),

('Dama Dam Mast Qalandar', 'Hindi', 'Qawwali', '"E:\SEM 3\Mini Project\python sql and frontend code\static\music\Qawwali\dumadum-mast-qalandar mp3free.org.mp3"',
 'Who is the singer of this song?', 'Noor Jehan', 'Nusrat Fateh Ali Khan', 'Sabri Brothers', 'Abida Parveen', 'Noor Jehan'),

('Haiderium', 'Hindi', 'Qawwali', '"E:\SEM 3\Mini Project\python sql and frontend code\static\music\Qawwali\haiderium mp3free.org.mp3"',
 'Who are the singers of this song?', 'Zain Ali & Zohaib Ali', 'Sabri Brothers', 'Nusrat Fateh Ali Khan', 'Atif Aslam', 'Zain Ali & Zohaib Ali'),

('Halka Halka Suroor', 'Hindi', 'Qawwali', '"E:\SEM 3\Mini Project\python sql and frontend code\static\music\Qawwali\halka-halka-saroor mp3free.org.mp3"',
 'Who is the singer of this song?', 'Rahat Fateh Ali Khan', 'Nusrat Fateh Ali Khan', 'Sabri Brothers', 'Ali Sethi', 'Nusrat Fateh Ali Khan'),

('Sanson Ki Mala Pe', 'Hindi', 'Qawwali', '"E:\SEM 3\Mini Project\python sql and frontend code\static\music\Qawwali\sanson-ki-mala-pe mp3free.org.mp3"',
 'Who is the singer of this song?', 'Nusrat Fateh Ali Khan', 'Kavita Krishnamurthy', 'Rahat Fateh Ali Khan', 'Noor Jehan', 'Nusrat Fateh Ali Khan'),

('Tajdar-e-Haram', 'Hindi', 'Qawwali', '"E:\SEM 3\Mini Project\python sql and frontend code\static\music\Qawwali\tajdareharam mp3free.org.mp3"',
 'Who is the singer of this song?', 'Sabri Brothers', 'Atif Aslam', 'Nusrat Fateh Ali Khan', 'Rahat Fateh Ali Khan', 'Sabri Brothers');


select*from songs;

INSERT INTO songs (title, language, genre, song_path, question, option1, option2, option3, option4, answer)
VALUES
('Alag Aasman', 'Hindi', 'Bollywood', '"E:\SEM 3\Mini Project\python sql and frontend code\static\music\bollywood\alag-aasmaan mp3free.org.mp3"',
 'Who is the singer of this song?', 'Anuv Jain', 'Prateek Kuhad', 'Darshan Raval', 'Arijit Singh', 'Anuv Jain'),

('Badtameez Dil', 'Hindi', 'Bollywood', '"E:\SEM 3\Mini Project\python sql and frontend code\static\music\bollywood\badtameez-dil mp3free.org.mp3"',
 'Who performs this song?', 'Benny Dayal & Shefali Alvares', 'Neeti Mohan & Benny Dayal', 'Arijit Singh & Neha Kakkar', 'Vishal Dadlani & Shekhar', 'Benny Dayal & Shefali Alvares'),

('Desi Girl', 'Hindi', 'Bollywood', '"E:\SEM 3\Mini Project\python sql and frontend code\static\music\bollywood\desi-girl mp3free.org.mp3"',
 'Who performs this song?', 'Sunidhi Chauhan, Vishal Dadlani', 'Neha Kakkar, Vishal Dadlani', 'Sunidhi Chauhan, Shankar Mahadevan', 'Shreya Ghoshal, Vishal Dadlani', 'Sunidhi Chauhan, Vishal Dadlani'),

('Ghungroo', 'Hindi', 'Bollywood', '"E:\SEM 3\Mini Project\python sql and frontend code\static\music\bollywood\ghungroo mp3free.org.mp3"',
 'Who performs this song?', 'Arijit Singh & Shilpa Rao', 'Arijit Singh & Neeti Mohan', 'Arijit Singh & Sunidhi Chauhan', 'Arijit Singh & Tulsi Kumar', 'Arijit Singh & Shilpa Rao'),

('Kashmir Main Tu Kanyakumari', 'Hindi', 'Bollywood', '"E:\SEM 3\Mini Project\python sql and frontend code\static\music\bollywood\kashmir-main-tu-kanyakumari mp3free.org.mp3"',
 'Who performs this song?', 'Arijit Singh, Neeti Mohan & Sunidhi Chauhan', 'Arijit Singh, Shreya Ghoshal & Sunidhi Chauhan', 'Arijit Singh, Neeti Mohan & Shalmali Kholgade', 'Arijit Singh, Neeti Mohan & Harshdeep Kaur', 'Arijit Singh, Neeti Mohan & Sunidhi Chauhan'),

('Love You Zindagi', 'Hindi', 'Bollywood', '"E:\SEM 3\Mini Project\python sql and frontend code\static\music\bollywood\love-you-zindagi mp3free.org.mp3"',
 'Who performs this song?', 'Jasleen Royal & Amit Trivedi', 'Jasleen Royal & Arijit Singh', 'Neeti Mohan & Amit Trivedi', 'Shreya Ghoshal & Amit Trivedi', 'Jasleen Royal & Amit Trivedi'),

('Mauja Hi Mauja', 'Hindi', 'Bollywood', '"E:\SEM 3\Mini Project\python sql and frontend code\static\music\bollywood\mauja-hi-mauja mp3free.org.mp3"',
 'Who is the singer of this song?', 'Mika Singh', 'Daler Mehndi', 'Honey Singh', 'Badshah', 'Mika Singh'),

('Likhe Jo Khat Tujhe', 'Hindi', 'Bollywood', '"E:\SEM 3\Mini Project\python sql and frontend code\static\music\bollywood\sanam-likhe-jo-khat-tujhe mp3free.org.mp3"',
 'Who is the singer of this remake?', 'Sanam', 'Arijit Singh', 'Darshan Raval', 'Mohit Chauhan', 'Sanam'),

('Woh Din', 'Hindi', 'Bollywood', '"E:\SEM 3\Mini Project\python sql and frontend code\static\music\bollywood\woh-din mp3free.org.mp3"',
 'Who is the singer of this song?', 'Arijit Singh', 'Armaan Malik', 'Darshan Raval', 'Mohit Chauhan', 'Arijit Singh'),

('Zaalima', 'Hindi', 'Bollywood', '"E:\SEM 3\Mini Project\python sql and frontend code\static\music\bollywood\zaalima mp3free.org.mp3"',
 'Who performs this song?', 'Arijit Singh & Harshdeep Kaur', 'Arijit Singh & Tulsi Kumar', 'Arijit Singh & Neeti Mohan', 'Arijit Singh & Shreya Ghoshal', 'Arijit Singh & Harshdeep Kaur');


select*from songs;
ALTER TABLE users MODIFY password VARCHAR(255);

select * from scores;
drop table songs;

INSERT INTO songs (title, language, genre, song_path, question, option1, option2, option3, option4, answer)
VALUES
('Boombayah', 'English', 'Kpop', 'music/Kpop/boombayah mp3free.org.mp3',
 'Who is the singer of this song?', 'BLACKPINK', 'BTS', 'Stray Kids', 'IVE', 'BLACKPINK'),

('Butter', 'English', 'Kpop', 'music/Kpop/butter mp3free.org.mp3',
 'Who is the singer of this song?', 'BTS', 'BLACKPINK', 'PSY', 'Jennie', 'BTS'),

('Dynamite', 'English', 'Kpop', 'music/Kpop/dynamite mp3free.org.mp3',
 'Who is the singer of this song?', 'BTS', 'Stray Kids', 'BLACKPINK', 'IVE', 'BTS'),

('Kill This Love', 'English', 'Kpop', 'music/Kpop/kill-this-love mp3free.org.mp3',
 'Who is the singer of this song?', 'BLACKPINK', 'PSY', 'BTS', 'Jennie', 'BLACKPINK'),

('Like Jennie', 'English', 'Kpop', 'music/Kpop/like-jennie mp3free.org.mp3',
 'Who is the singer of this song?', 'Jennie', 'Lisa', 'Jisoo', 'Rosé', 'Jennie'),

('Love Dive', 'English', 'Kpop', 'music/Kpop/love-dive mp3free.org.mp3',
 'Who is the singer of this song?', 'IVE', 'BLACKPINK', 'BTS', 'Stray Kids', 'IVE'),

('Maniac', 'English', 'Kpop', 'music/Kpop/maniac mp3free.org.mp3',
 'Who is the singer of this song?', 'Stray Kids', 'BTS', 'PSY', 'IVE', 'Stray Kids'),

('Money', 'English', 'Kpop', 'music/Kpop/money mp3free.org.mp3',
 'Who is the singer of this song?', 'Lisa', 'Jennie', 'BLACKPINK', 'PSY', 'Lisa'),

('Savage Love', 'English', 'Kpop', 'music/Kpop/savage-love mp3free.org.mp3',
 'Who performs this song?', 'Jawsh 685 & Jason Derulo (feat. BTS)', 'BTS', 'BLACKPINK', 'EXO', 'Jawsh 685 & Jason Derulo (feat. BTS)'),

('That That', 'English', 'Kpop', 'music/Kpop/that-that mp3free.org.mp3',
 'Who is the singer of this song?', 'PSY ft. Suga', 'BTS', 'BLACKPINK', 'Stray Kids', 'PSY ft. Suga');


INSERT INTO songs (title, language, genre, song_path, question, option1, option2, option3, option4, answer)
VALUES
('August', 'English', 'Pop', 'music/pop/august mp3free.org.mp3',
 'Who is the singer of this song?', 'Taylor Swift', 'Ed Sheeran', 'Ellie Goulding', 'BØRNS', 'Taylor Swift'),

('Cardigan', 'English', 'Pop', 'music/pop/cardigan mp3free.org.mp3',
 'Who is the singer of this song?', 'Taylor Swift', 'Ed Sheeran', 'Ruth B.', 'Ellie Goulding', 'Taylor Swift'),

('Dandelion', 'English', 'Pop', 'music/pop/dandelions mp3free.org.mp3',
 'Who is the singer of this song?', 'Ruth B.', 'Taylor Swift', 'Ed Sheeran', 'Ellie Goulding', 'Ruth B.'),

('Love Me Like You Do', 'English', 'Pop', 'music/pop/love-me-like-you-do mp3free.org.mp3',
 'Who is the singer of this song?', 'Ellie Goulding', 'Taylor Swift', 'Ed Sheeran', 'Ruth B.', 'Ellie Goulding'),

('Lover', 'English', 'Pop', 'music/pop/lover mp3free.org.mp3',
 'Who is the singer of this song?', 'Taylor Swift', 'Ellie Goulding', 'Ed Sheeran', 'Ruth B.', 'Taylor Swift'),

('Past Lives', 'English', 'Pop', 'music/pop/pastlives mp3free.org.mp3',
 'Who is the singer of this song?', 'BØRNS', 'Taylor Swift', 'Ed Sheeran', 'Ellie Goulding', 'BØRNS'),

('Perfect', 'English', 'Pop', 'music/pop/perfect mp3free.org.mp3',
 'Who is the singer of this song?', 'Ed Sheeran', 'Taylor Swift', 'Ellie Goulding', 'Ruth B.', 'Ed Sheeran'),

('Shake It Off', 'English', 'Pop', 'music/pop/shake-it-off mp3free.org.mp3',
 'Who is the singer of this song?', 'Taylor Swift', 'Ed Sheeran', 'Ruth B.', 'Ellie Goulding', 'Taylor Swift'),

('Shape of You', 'English', 'Pop', 'music/pop/shape-of-you mp3free.org.mp3',
 'Who is the singer of this song?', 'Ed Sheeran', 'Taylor Swift', 'Ellie Goulding', 'Ruth B.', 'Ed Sheeran'),

('The Way I Loved You', 'English', 'Pop', 'music/pop/the-way-i-loved-you mp3free.org.mp3',
 'Who is the singer of this song?', 'Taylor Swift', 'Ed Sheeran', 'Ellie Goulding', 'Ruth B.', 'Taylor Swift');


INSERT INTO songs (title, language, genre, song_path, question, option1, option2, option3, option4, answer)
VALUES
('30 for 30', 'English', 'Rap', 'music/Rap/30-for-30 mp3free.org.mp3',
 'Who performs this song?', 'Kendrick Lamar & SZA', 'Drake', 'Gunna', 'Young Thug', 'Kendrick Lamar & SZA'),

('Actin Up', 'English', 'Rap', 'music/Rap/actin-up mp3free.org.mp3',
 'Who performs this song?', 'Tommy Richman', 'Kendrick Lamar', 'Drake', 'Flipsyde', 'Tommy Richman'),

('Gimme a Hug', 'English', 'Rap', 'music/Rap/gimme-a-hug mp3free.org.mp3',
 'Who performs this song?', 'Drake', 'The Weeknd', 'Playboi Carti', 'Young Thug', 'Drake'),

('Him All Along', 'English', 'Rap', 'music/Rap/him-all-along mp3free.org.mp3',
 'Who performs this song?', 'Gunna', 'Kendrick Lamar', 'Drake', 'Young Thug', 'Gunna'),

('Luther', 'English', 'Rap', 'music/Rap/luther mp3free.org.mp3',
 'Who performs this song?', 'Kendrick Lamar & SZA', 'Gunna', 'Playboi Carti', 'Drake', 'Kendrick Lamar & SZA'),

('Money on Money', 'English', 'Rap', 'music/Rap/money-on-money mp3free.org.mp3',
 'Who performs this song?', 'Young Thug feat. Future', 'Drake', 'Gunna', 'Kendrick Lamar', 'Young Thug feat. Future'),

('My World', 'English', 'Rap', 'music/Rap/my-world mp3free.org.mp3',
 'Who performs this song?', 'DE MIYAA & Lil Rae', 'Flipsyde', 'Playboi Carti & The Weeknd', 'Gunna', 'DE MIYAA & Lil Rae'),

('Someday', 'English', 'Rap', 'music/Rap/someday mp3free.org.mp3',
 'Who performs this song?', 'Flipsyde', 'Tommy Richman', 'DE MIYAA', 'Playboi Carti', 'Flipsyde');


INSERT INTO songs (title, language, genre, song_path, question, option1, option2, option3, option4, answer)
VALUES
('Azul', 'Hindi', 'Punjabi', 'music/punjabi/azul mp3free.org.mp3',
 'Who is the singer of this song?', 'Guru Randhawa', 'Diljit Dosanjh', 'Amar Arshi', 'Ali Sethi', 'Guru Randhawa'),

('Ikk Kudi', 'Hindi', 'Punjabi', 'music/punjabi/ikk-kudi mp3free.org.mp3',
 'Who is the singer of this song?', 'Diljit Dosanjh', 'Shahid Mallya', 'Ali Sethi', 'Guru Randhawa', 'Diljit Dosanjh'),

('Kala Chashma', 'Hindi', 'Punjabi', 'music/punjabi/kala-chashma mp3free.org.mp3',
 'Who is the singer (original version)?', 'Amar Arshi', 'Badshah', 'Neha Kakkar', 'Diljit Dosanjh', 'Amar Arshi'),

('Kali Activa', 'Hindi', 'Punjabi', 'music/punjabi/kali-activa mp3free.org.mp3',
 'Who is the singer of this song?', 'Rupinder Handa', 'Diljit Dosanjh', 'Amar Arshi', 'Guru Randhawa', 'Rupinder Handa'),

('London Thumakda', 'Hindi', 'Punjabi', 'music/punjabi/london-thumakda mp3free.org.mp3',
 'Who are the singers of this song?', 'Labh Janjua, Neha Kakkar, Sonu Kakkar', 'Diljit Dosanjh', 'Amar Arshi', 'Ali Sethi', 'Labh Janjua, Neha Kakkar, Sonu Kakkar'),

('Lover', 'Hindi', 'Punjabi', 'music/punjabi/lover mp3free.org.mp3',
 'Who is the singer of this song?', 'Guri', 'Diljit Dosanjh', 'Ali Sethi', 'Guru Randhawa', 'Diljit Dosanjh'),

('Passoorie', 'Hindi', 'Punjabi', 'music/punjabi/pasoori mp3free.org.mp3',
 'Who are the singers of this song?', 'Ali Sethi & Shae Gill', 'Diljit Dosanjh', 'Guri', 'Amar Arshi', 'Ali Sethi & Shae Gill'),

('Tu Juliet Jatt Di', 'Hindi', 'Punjabi', 'music/punjabi/tu-juliet-jatt-di mp3free.org.mp3',
 'Who are the singers of this song?', 'Diljit Dosanjh & Harnoor', 'Guru Randhawa', 'Guri', 'Ali Sethi', 'Diljit Dosanjh & Harnoor'),

('Waalian', 'Hindi', 'Punjabi', 'music/punjabi/waalian mp3free.org.mp3',
 'Who is the singer of this song?', 'Harnoor', 'Diljit Dosanjh', 'Amar Arshi', 'Guru Randhawa', 'Harnoor');


INSERT INTO songs (title, language, genre, song_path, question, option1, option2, option3, option4, answer)
VALUES
('Afreen Afreen', 'Hindi', 'Qawwali', 'music/Qawwali/afreen-afreen mp3free.org.mp3',
 'Who is the singer of this song?', 'Nusrat Fateh Ali Khan', 'Rahat Fateh Ali Khan', 'Sabri Brothers', 'Ali Sethi', 'Nusrat Fateh Ali Khan'),

('Allah Hu Allah Hu', 'Hindi', 'Qawwali', 'music/Qawwali/allah-hu-allah-hu mp3free.org.mp3',
 'Who is the singer of this song?', 'Sabri Brothers', 'Nusrat Fateh Ali Khan', 'Atif Aslam', 'Rahat Fateh Ali Khan', 'Nusrat Fateh Ali Khan'),

('Bhar Do Jholi Meri', 'Hindi', 'Qawwali', 'music/Qawwali/bhar-do-jholi-meri mp3free.org.mp3',
 'Who is the singer of this song?', 'Sabri Brothers', 'Adnan Sami', 'Nusrat Fateh Ali Khan', 'Rahat Fateh Ali Khan', 'Sabri Brothers'),

('Dama Dam Mast Qalandar', 'Hindi', 'Qawwali', 'music/Qawwali/dumadum-mast-qalandar mp3free.org.mp3',
 'Who is the singer of this song?', 'Noor Jehan', 'Nusrat Fateh Ali Khan', 'Sabri Brothers', 'Abida Parveen', 'Noor Jehan'),

('Haiderium', 'Hindi', 'Qawwali', 'music/Qawwali/haiderium mp3free.org.mp3',
 'Who are the singers of this song?', 'Zain Ali & Zohaib Ali', 'Sabri Brothers', 'Nusrat Fateh Ali Khan', 'Atif Aslam', 'Zain Ali & Zohaib Ali'),

('Halka Halka Suroor', 'Hindi', 'Qawwali', 'music/Qawwali/halka-halka-saroor mp3free.org.mp3',
 'Who is the singer of this song?', 'Rahat Fateh Ali Khan', 'Nusrat Fateh Ali Khan', 'Sabri Brothers', 'Ali Sethi', 'Nusrat Fateh Ali Khan'),

('Sanson Ki Mala Pe', 'Hindi', 'Qawwali', 'music/Qawwali/sanson-ki-mala-pe mp3free.org.mp3',
 'Who is the singer of this song?', 'Nusrat Fateh Ali Khan', 'Kavita Krishnamurthy', 'Rahat Fateh Ali Khan', 'Noor Jehan', 'Nusrat Fateh Ali Khan'),

('Tajdar-e-Haram', 'Hindi', 'Qawwali', 'music/Qawwali/tajdareharam mp3free.org.mp3',
 'Who is the singer of this song?', 'Sabri Brothers', 'Atif Aslam', 'Nusrat Fateh Ali Khan', 'Rahat Fateh Ali Khan', 'Sabri Brothers');


INSERT INTO songs (title, language, genre, song_path, question, option1, option2, option3, option4, answer)
VALUES
('Alag Aasman', 'Hindi', 'Bollywood', 'music/bollywood/alag-aasmaan mp3free.org.mp3',
 'Who is the singer of this song?', 'Anuv Jain', 'Prateek Kuhad', 'Darshan Raval', 'Arijit Singh', 'Anuv Jain'),

('Badtameez Dil', 'Hindi', 'Bollywood', 'music/bollywood/badtameez-dil mp3free.org.mp3',
 'Who performs this song?', 'Benny Dayal & Shefali Alvares', 'Neeti Mohan & Benny Dayal', 'Arijit Singh & Neha Kakkar', 'Vishal Dadlani & Shekhar', 'Benny Dayal & Shefali Alvares'),

('Desi Girl', 'Hindi', 'Bollywood', 'music/bollywood/desi-girl mp3free.org.mp3',
 'Who performs this song?', 'Sunidhi Chauhan, Vishal Dadlani', 'Neha Kakkar, Vishal Dadlani', 'Sunidhi Chauhan, Shankar Mahadevan', 'Shreya Ghoshal, Vishal Dadlani', 'Sunidhi Chauhan, Vishal Dadlani'),

('Ghungroo', 'Hindi', 'Bollywood', 'music/bollywood/ghungroo mp3free.org.mp3',
 'Who performs this song?', 'Arijit Singh & Shilpa Rao', 'Arijit Singh & Neeti Mohan', 'Arijit Singh & Sunidhi Chauhan', 'Arijit Singh & Tulsi Kumar', 'Arijit Singh & Shilpa Rao'),

('Kashmir Main Tu Kanyakumari', 'Hindi', 'Bollywood', 'music/bollywood/kashmir-main-tu-kanyakumari mp3free.org.mp3',
 'Who performs this song?', 'Arijit Singh, Neeti Mohan & Sunidhi Chauhan', 'Arijit Singh, Shreya Ghoshal & Sunidhi Chauhan', 'Arijit Singh, Neeti Mohan & Shalmali Kholgade', 'Arijit Singh, Neeti Mohan & Harshdeep Kaur', 'Arijit Singh, Neeti Mohan & Sunidhi Chauhan'),

('Love You Zindagi', 'Hindi', 'Bollywood', 'music/bollywood/love-you-zindagi mp3free.org.mp3',
 'Who performs this song?', 'Jasleen Royal & Amit Trivedi', 'Jasleen Royal & Arijit Singh', 'Neeti Mohan & Amit Trivedi', 'Shreya Ghoshal & Amit Trivedi', 'Jasleen Royal & Amit Trivedi'),

('Mauja Hi Mauja', 'Hindi', 'Bollywood', 'music/bollywood/mauja-hi-mauja mp3free.org.mp3',
 'Who is the singer of this song?', 'Mika Singh', 'Daler Mehndi', 'Honey Singh', 'Badshah', 'Mika Singh'),

('Likhe Jo Khat Tujhe', 'Hindi', 'Bollywood', 'music/bollywood/sanam-likhe-jo-khat-tujhe mp3free.org.mp3',
 'Who is the singer of this remake?', 'Sanam', 'Arijit Singh', 'Darshan Raval', 'Mohit Chauhan', 'Sanam'),

('Woh Din', 'Hindi', 'Bollywood', 'music/bollywood/woh-din mp3free.org.mp3',
 'Who is the singer of this song?', 'Arijit Singh', 'Armaan Malik', 'Darshan Raval', 'Mohit Chauhan', 'Arijit Singh'),

('Zaalima', 'Hindi', 'Bollywood', 'music/bollywood/zaalima mp3free.org.mp3',
 'Who performs this song?', 'Arijit Singh & Harshdeep Kaur', 'Arijit Singh & Tulsi Kumar', 'Arijit Singh & Neeti Mohan', 'Arijit Singh & Shreya Ghoshal', 'Arijit Singh & Harshdeep Kaur');
