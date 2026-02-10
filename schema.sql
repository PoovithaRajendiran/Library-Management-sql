CREATE DATABASE library_db;
USE library_db;

-- Publisher table
CREATE TABLE Publisher (
    Pub_ID INT PRIMARY KEY,
    Name VARCHAR(50),
    Address VARCHAR(100)
);

-- Books table
CREATE TABLE Books (
    Book_ID INT PRIMARY KEY,
    Title VARCHAR(100),
    Author VARCHAR(50),
    Price DECIMAL(6,2),
    Available VARCHAR(10),
    Pub_ID INT,
    FOREIGN KEY (Pub_ID) REFERENCES Publisher(Pub_ID)
);

-- Member table
CREATE TABLE Member (
    Member_ID INT PRIMARY KEY,
    Name VARCHAR(50),
    Address VARCHAR(100),
    Member_type VARCHAR(20),
    Member_date DATE,
    Expiry_date DATE
);

-- Borrow table
CREATE TABLE Borrow (
    Issue_ID INT PRIMARY KEY AUTO_INCREMENT,
    Book_ID INT,
    Member_ID INT,
    Issue_date DATE,
    Due_date DATE,
    Return_date DATE,
    FOREIGN KEY (Book_ID) REFERENCES Books(Book_ID),
    FOREIGN KEY (Member_ID) REFERENCES Member(Member_ID)
);
