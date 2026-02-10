USE library_db;

-- All books
SELECT * FROM Books;

-- Books with publisher
SELECT b.Title, p.Name AS Publisher
FROM Books b
JOIN Publisher p ON b.Pub_ID = p.Pub_ID;

-- Borrowed books details
SELECT m.Name, b.Title, br.Issue_date, br.Return_date
FROM Borrow br
JOIN Member m ON br.Member_ID = m.Member_ID
JOIN Books b ON br.Book_ID = b.Book_ID;

-- Count total books
SELECT COUNT(*) AS Total_Books FROM Books;

-- Available books
SELECT * FROM Books WHERE Available='Yes';
