/*
DROP TABLE BOOK cascade constraints;
DROP TABLE STUDENT cascade constraints;
DROP TABLE BORROW cascade constraints;
*/

CREATE TABLE BOOK (
ISBN NUMBER(10),
TITLE VARCHAR2(50),
AUTHOR VARCHAR2(50),
PUBLISHER VARCHAR2(50),
CONSTRAINT pk_isbn PRIMARY KEY (ISBN)
);

CREATE TABLE STUDENT(
USN VARCHAR2(10),
NAME VARCHAR2(10),
SEM NUMBER(2),
DEPT NUMBER(2),
CONSTRAINT pk_usn PRIMARY KEY (USN)
);

CREATE TABLE BORROW(
ISBN NUMBER(10),
USN VARCHAR2(10),
BorrowDate DATE,
CONSTRAINT pk_isbn_usn PRIMARY KEY (ISBN,USN),
CONSTRAINT fk_isbn FOREIGN KEY (ISBN) REFERENCES BOOK(ISBN),
CONSTRAINT fk_usn FOREIGN KEY (USN) REFERENCES STUDENT(USN)
);


INSERT INTO BOOK (ISBN,TITLE,AUTHOR,PUBLISHER) VALUES(123,'Oracle PL/SQL','Benjamin Rosenzweig','Example');
INSERT INTO BOOK (ISBN,TITLE,AUTHOR,PUBLISHER) VALUES(321,'Digital Image Processing','Pearson','Rafael C.Gonzalez');
INSERT INTO BOOK (ISBN,TITLE,AUTHOR,PUBLISHER) VALUES(231,'“Fundamentals of Digital Image Processing','Anil K. Jain','Pearson Education');
INSERT INTO BOOK (ISBN,TITLE,AUTHOR,PUBLISHER) VALUES(132,'Natural Language Processing','Tanveer Siddiqui',' Oxford University');
INSERT INTO BOOK (ISBN,TITLE,AUTHOR,PUBLISHER) VALUES(111,'Embedded Systems','Lyla B Das','Pearson Education');
INSERT INTO BOOK (ISBN,TITLE,AUTHOR,PUBLISHER) VALUES(222,' Introduction To Embedded Systems','Shibu K V','MGH');
INSERT INTO BOOK (ISBN,TITLE,AUTHOR,PUBLISHER) VALUES(333,'Linear Algebra and its Applications','David C Lay','Pearson');
INSERT INTO BOOK (ISBN,TITLE,AUTHOR,PUBLISHER) VALUES(243,'Linear Algebra and its Applications','Gilbert Strang','Thomson learning Asia');


INSERT INTO STUDENT(USN,NAME,SEM,DEPT) VALUES('1MS16IS114','Raju',5,1);
INSERT INTO STUDENT(USN,NAME,SEM,DEPT) VALUES('1MS17EE114','Tom',3,2);
INSERT INTO STUDENT(USN,NAME,SEM,DEPT) VALUES('1MS18EC114','Tingri',1,3);

INSERT INTO BORROW(ISBN,USN,BorrowDate) VALUES(123,'1MS16IS114',TO_DATE('27-AUG-2011','DD-MON-YYYY'));
INSERT INTO BORROW(ISBN,USN,BorrowDate) VALUES(321,'1MS16IS114',TO_DATE('3-OCT-2010','DD-MON-YYYY'));
INSERT INTO BORROW(ISBN,USN,BorrowDate) VALUES(231,'1MS16IS114',TO_DATE('15-MAR-2015','DD-MON-YYYY'));
INSERT INTO BORROW(ISBN,USN,BorrowDate) VALUES(132,'1MS17EE114',TO_DATE('1-JUL-2014','DD-MON-YYYY'));
INSERT INTO BORROW(ISBN,USN,BorrowDate) VALUES(111,'1MS17EE114',TO_DATE('14-MAR-2016','DD-MON-YYYY'));
INSERT INTO BORROW(ISBN,USN,BorrowDate) VALUES(222,'1MS17EE114',TO_DATE('25-JAN-2010','DD-MON-YYYY'));
INSERT INTO BORROW(ISBN,USN,BorrowDate) VALUES(333,'1MS18EC114',TO_DATE('27-NOV-2011','DD-MON-YYYY'));
INSERT INTO BORROW(ISBN,USN,BorrowDate) VALUES(243,'1MS18EC114',TO_DATE('27-NOV-2011','DD-MON-YYYY'));


SELECT NAME FROM STUDENT WHERE USN IN (SELECT USN FROM BORROW WHERE ISBN = 123);
/*DATABASAE BOOK?*/
SELECT COUNT(USN) FROM BORROW GROUP BY USN;
