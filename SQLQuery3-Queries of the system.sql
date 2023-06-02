SELECT b.ISBN, b.Title, bo.Date_of_borrow, s.User_ID, s.Name, s.Department
FROM Book b
INNER JOIN Borrow bo ON b.ISBN = bo.MM_ISBN
INNER JOIN Student_Faculty s ON bo.MM_User_Id = s.User_ID
WHERE b.Publisher = 'Bloomsbury';--For the book whose publisher is "Bloomsbury" list the Book ISBN, title, date of borrow, user id, name of the borrower, and department.

SELECT Book.ISBN, Book.Title, Author.Author_Name, Book_copy.Copy_no
FROM Book
JOIN Author ON Book.ISBN = Author.B_ISBN
JOIN Book_copy ON Book.ISBN = Book_copy.BC_ISBN
WHERE Book_copy.Is_checked_out = 'No';--retrieves book information along with the names of the authors and the book copies that are available


SELECT COUNT(*)
FROM Borrow
WHERE DATEDIFF(month, Return_date, GETDATE()) = 1--Calculate the number of books that have been checked out in the past month

SELECT AVG(DATEDIFF(day, Date_of_borrow, Return_date)) AS Average_Borrowing_Time
FROM Borrow--Calculate the average length of time that books are borrowed from the library.

SELECT * FROM Student_Faculty
WHERE DoB >= '1990' AND DoB < '2000';--Find all users who were born during the 1990s


SELECT a.Author_Name, b.Title, b.Publisher
FROM Author a
INNER JOIN Book b ON a.B_ISBN = b.ISBN
WHERE a.Author_Name IN 
(
  SELECT Author_Name
  FROM Author
  GROUP BY Author_Name
  HAVING COUNT(*) > 1
);--For each author who have more than one book, retrieve the author name, title, Publisher.


SELECT Student_Faculty.Name, COUNT(*) as Num_Borrowed
FROM Student_Faculty
JOIN Borrow ON Student_Faculty.User_ID = Borrow.MM_User_Id
GROUP BY Student_Faculty.Name--count the number of books borrowed by each student




SELECT B.ISBN
FROM Book B
INNER JOIN Genre G ON B.G_Name = G.Name
INNER JOIN Keywords K ON B.G_Name = K.Genre_Keys
WHERE G.Name = 'Mystery' OR K.Genre_Keys = 'Plot twists';--The ISBN of all books whose genre is “Mystery” or Genre keys is “Plot twists”.

SELECT *
FROM Book
WHERE ISBN NOT IN 
(
  SELECT MM_ISBN
  FROM Borrow
  WHERE Date_of_borrow >= DATEADD(month, -1, GETDATE())
);-- Retrieve all the books that have not been borrowed in the past month.


CREATE TRIGGER limit_borrowed_books
ON Borrow
AFTER INSERT
AS
BEGIN
    IF EXISTS (
        SELECT MM_User_Id
        FROM Borrow
        WHERE MM_User_Id = (SELECT MM_User_Id FROM inserted)
        GROUP BY MM_User_Id
        HAVING COUNT(*) >= 3
    )
    BEGIN
        RAISERROR('Sorry, maximum number of books to be borrowed at once is 2.', 16, 1);
        ROLLBACK TRANSACTION;
    END
END;


