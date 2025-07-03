CREATE TABLE books (
    book_id INTEGER PRIMARY KEY,
    title TEXT NOT NULL,
    author TEXT NOT NULL,
    rating REAL
);



CREATE TABLE exam_results (
    result_id INTEGER PRIMARY KEY,
    student_id TEXT NOT NULL,
    name TEXT,
    subject TEXT NOT NULL,
    score INTEGER
);



INSERT INTO books (book_id, title, author, rating) VALUES
(1, 'The Ramayana Explained', 'Valmiki Scholar', 4.7),
(2, 'SQL Made Simple', 'Shaik Coder', 4.2),
(3, 'AI & You', 'Tech Sage', 4.8),
(4, 'Cloud Mastery', 'Sky Writer', 3.9);



INSERT INTO exam_results (result_id, student_id, name, subject, score) VALUES
(1, 'S101', 'Arya Patel', 'Maths', 92),
(2, 'S102', 'Ravi Kumar', 'Science', 85),
(3, 'S103', 'Meena Das', 'History', 78),
(4, 'S104', 'Fatima Rizvi', 'Maths', 88);



CREATE VIEW high_rated_books AS
SELECT title, author, rating
FROM books
WHERE rating >= 4.5;


CREATE VIEW student_scores AS
SELECT student_id, subject, score
FROM exam_results;