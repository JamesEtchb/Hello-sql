CREATE TABLE Books_je (
    Id INT PRIMARY KEY,
    Tile TEXT,
    Genre TEXT,
    Author TEXT,
    Quantity INT
)

CREATE TABLE Users_je (
    Id INT PRIMARY KEY,
    First_Name TEXT,
    Last_Name TEXT,
    Email VARCHAR(100) UNIQUE NOT NULL
)

ALTER TABLE Books_je
MODIFY COLUMN Tile Title;

CREATE TABLE Checkout_je (
    Id INT PRIMARY KEY,
    book_id INT,
    user_id INT,
    checkout_date TEXT,
    return_date DATETIME,
     FOREIGN KEY (book_id) REFERENCES Books_je(Id),
     FOREIGN KEY (user_id) REFERENCES Users_je(Id)
)

INSERT INTO Books_je (id, Tile, Genre, Author)
VALUES (1, "The Old Man and the Sea", "Fiction", "Ernest Hemingway")

SELECT * FROM Books_je

UPDATE Books_je
SET Quantity = 100
WHERE Id = 1;



SELECT Tile 
FROM Books_je
WHERE Genre = "Fiction"

INSERT INTO Books_je 
VALUES 
(2, "A tale of two cities", "Fiction", "Charles Dickens", 200)
