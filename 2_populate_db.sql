INSERT into Editor(eid) VALUE(1123);
UPDATE Editor SET fname='Alex' WHERE eid=1123;
UPDATE Editor SET lname='Johnson' WHERE eid=1123;
INSERT into Book(isbn) VALUE('8330418998');

INSERT into Customer

INSERT into Book(isbn,btype) VALUE('1234567891', 'novel');
INSERT into Book(isbn,btype) VALUE('9999999998', 'novel');

INSERT into Publisher(pid,name,address) VALUE(123,"John Doe","1234 Wallaby Way");
INSERT into Publisher(pid,name,address) VALUE(1234,"Josh Jones","3108 Arron Way");
INSERT into Book(isbn,pid,btype) VALUE(1111111,123,"textbook");
INSERT into Book(isbn,pid,btype) VALUE(1111112,1234,"textbook");

INSERT into Author(aid,fname,lname) VALUE(1996,'Dr.','Suess');
INSERT into Book(isbn,btype) VALUE(10101010,novel);   
INSERT into Written_by(isbn,aid) VALUE(10101010, 1996);


INSERT into Book(title,isbn,btype) VALUE('Fundamentals of Database Systems',1234,'textbook');
INSERT into Author(aid,fname,lname)VALUE(1997,'Joe','Shmoe');
INSERT into Written_by(isbn,aid) VALUE(1234,1997);

INSERT into Book(title,btype,isbn) VALUE('Jeffs Book #1','biography',010101222);
INSERT into Book(title,btype,isbn) VALUE('Jeffs Book #2','biography',010101223);
INSERT into Author(aid,fname,lname) VALUE(55555555,"Jeff","Smith");
INSERT into Written_by(isbn,aid) VALUE(010101222,55555555);
INSERT into Written_by(isbn,aid) VALUE(010101223,55555555);

UPDATE Book SET price=100 WHERE isbn=1234;
UPDATE Book SET price=200 WHERE pid=1234;
UPDATE Book SET price=200 WHERE isbn=1234567891;
UPDATE Book SET title="Moby Dick" WHERE isbn=1234567891;
UPDATE Book SET title="Tom Sawyer" WHERE pid=1234;

