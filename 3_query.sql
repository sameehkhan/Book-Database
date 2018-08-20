1.) SELECT eid,fname,lname 
    FROM Editor 
    WHERE((SELECT eid FROM Edited_by WHERE isbn='8330418998'));


2.) SELECT name
    FROM Customer 
    JOIN Orders 
    ON Customer.cid = Orders.cid
    JOIN Order_book
    ON Orders.oid = Order_book.oid
    JOIN Book
    ON Order_book.isbn = Book.isbn
    WHERE btype="novel"
    ORDER BY name DESC;



3.) SELECT name,address 
    FROM Publisher 
    WHERE pid IN((SELECT pid FROM Book WHERE btype='textbook'));


4.) SELECT aid, fname, lname 
    FROM Author 
    WHERE aid IN (
        SELECT aid
        FROM Written_by
        JOIN Book 
        ON Book.isbn = Written_by.isbn
        WHERE btype = "novel"        
        GROUP BY aid
        HAVING count(*) > 2);  

5.) /*Get authors information (first name, last name) who 
    has written the book �Fundamentals of Database Systems
    */

    SELECT fname, lname 
    FROM Author 
    WHERE aid IN (
        SELECT aid
        FROM Written_by
        JOIN Book 
        ON Book.isbn = Written_by.isbn
	WHERE title = 'Fundamentals of Database Systems');




6.)  SELECT Book.title, Book.btype, Book.isbn  
     FROM Book
         JOIN Written_by
         ON Written_by.isbn = Book.isbn
         JOIN Author 
         ON Author.aid = Written_by.aid
     WHERE fname="Jeff" AND lname="Smith";  

7.) /* 7.	Get information (publisher id, publisher name, phone) 
            about publishers who have published more th an 2 novels. 
    */

    SELECT pid, name, phone
    FROM Publisher 
        JOIN Book
        ON Book.pid = Publisher.pid
    HAVING count(*) > 2;


8.) SELECT MAX(Book.price)
     FROM Book
         JOIN Written_by
         ON Written_by.isbn = Book.isbn
         JOIN Author 
         ON Author.aid = Written_by.aid
     WHERE fname="Jeff" AND lname="Smith"; 



9.) 

10.) SELECT Orders.oid, Orders.order_date
     FROM Orders
        JOIN Customer
        ON Customer.cid = Orders.cid;
     WHERE Customer.name="Mike Kay";   

11.)  SELECT isbn, title, price
      FROM Book
      JOIN 

12.) SELECT Orders.oid, Orders.order_date
     FROM Orders
     JOIN Order_book
     ON Order_book.oid = Orders.oid
     JOIN Book
     ON Book.isbn = Order_book.isbn
     WHERE title="Fundamentals of Database Systems";


15.) SELECT MAX(price), Book.title FROM Book;












		 	 