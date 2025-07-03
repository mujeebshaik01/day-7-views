
# 📘 Library & Exam Results Database

This project defines a simple relational database containing information about books and student exam results. It includes schema creation, data population, and view definitions for analytical convenience.

---

## 📂 Tables

### 1. `books`
Stores information about various books including their title, author, and reader rating.

| Column    | Type     | Description              |
|-----------|----------|--------------------------|
| book_id   | INTEGER  | Primary key              |
| title     | TEXT     | Title of the book        |
| author    | TEXT     | Name of the author       |
| rating    | REAL     | Book rating (1.0 to 5.0) |

### 2. `exam_results`
Stores exam results for students across different subjects.

| Column     | Type     | Description                  |
|------------|----------|------------------------------|
| result_id  | INTEGER  | Primary key                  |
| student_id | TEXT     | Unique identifier for student|
| name       | TEXT     | Full name of student         |
| subject    | TEXT     | Subject name                 |
| score      | INTEGER  | Score obtained (out of 100)  |

---

## 🌟 Views

### `high_rated_books`
Returns books with a rating of **4.5 or higher**.

```sql
SELECT title, author, rating
FROM books
WHERE rating >= 4.5;


student_scores
Provides simplified student performance data: student_id, subject, and score.
SELECT student_id, subject, score
FROM exam_results;



🛠️ Usage
- Analyze top-rated books for recommendations.
- Retrieve student scores for academic dashboards.
- Extend the schema to include categories, exam dates, or feedback as needed.

📌 Sample Data Included
- Books: 4 entries
- Exam Results: 4 entries


