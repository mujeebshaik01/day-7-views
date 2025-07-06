DELIMITER //
CREATE PROCEDURE AddNewBook(
    IN bookTitle VARCHAR(100),
    IN authorName VARCHAR(100),
    IN pubYear INT
)
BEGIN
    INSERT INTO books (title, author, publication_year)
    VALUES (bookTitle, authorName, pubYear);
END //
DELIMITER ;

CALL AddNewBook('The Guide', 'R.K. Narayan', 1958);

DELIMITER //
CREATE PROCEDURE CountBooksByAuthor(IN authorName VARCHAR(100))
BEGIN
    SELECT COUNT(*) AS total_books
    FROM books
    WHERE author = authorName;
END //
DELIMITER ;

DELIMITER //
CREATE PROCEDURE UpdateBookTitle(
    IN bookID INT,
    IN newTitle VARCHAR(100)
)
BEGIN
    UPDATE books
    SET title = newTitle
    WHERE id = bookID;
END //
DELIMITER ;

DELIMITER //
CREATE PROCEDURE DeleteOldBooks(IN cutoffYear INT)
BEGIN
    DELETE FROM books
    WHERE publication_year < cutoffYear;
END //
DELIMITER ;