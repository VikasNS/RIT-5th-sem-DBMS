# RIT-5th Database Management Systems

Part A
I. Execute the following exercises

1. Consider the relations

EMPLOYEE (SSN, Name, DeptNo)

ASSIGNED_TO (USN , ProjectNo)

PROJECT (ProjectNo, ProjectArea)

 Create the above tables, insert suitable tuples and perform the following operations in Oracle SQL

a. Obtain the SSN of employees assigned to database projects.

b. Find the number of employees working in each department

c. Update the ProjectNo of Employee bearing SSN=1 to ProjectNo=20



2. Create the below tables, insert suitable tuples and perform the following operations using MongoDB

EMPLOYEE (SSN, Name, DeptNo)

ASSIGNED_TO (USN , ProjectNo)

a. List all the employees of department “XYZ”.

b. Name the employees working on Project Number :#PNo


II. Execute the following exercises

1. Consider the relations

PART (PNO, PNAME, COLOUR),

SUPPLIER ( SNO, SNAME, ADDRESS)

SUPPLY (PNO, SNO, QUANTITY)

Create the above tables, insert suitable tuples and perform the following operations in Oracle SQL:

a. Obtain the PNO of parts supplied by supplier ‘Ram’.

b. Obtain the Names of suppliers who supply bolts

c. Delete the parts which are green in colour



2. Create the below tables, insert suitable tuples and perform the following operations using
MongoDB

PART (PNO, PNAME, COLOUR),

 SUPPY (SNO, SNAME, PNO, ADDRESS)

a. Update the parts identifier

b. Display all suppliers who supply the part with part identifier: #PNO



III. Execute the following exercises

1. Consider the relations

BOAT (BID, BNAME, COLOUR),

SAILOR (SID, SNAME, AGE, RATING)

RESERVES (BID, SID, DAY)

Create the above tables, insert suitable tuples and perform the following operations in Oracle SQL:

a. Obtain the bid of the boats reserved by „Ram‟.

b. Retrieve the bid of the boats reserved by all the sailors.

c. Find the number of boats reserved by each sailor

2. Create the below tables, insert suitable tuples and perform the following operations using
MongoDB

BOAT (BID, BNAME, COLOUR)

RESERVES (BID, SNAME, SID, DAY)

a. Obtain the number of boats obtained by sailor :#sname

b. Retrieve boats of color :”White”




IV. Execute the following exercises
1. Consider the relations

PART (PNO, PNAME, COLOUR),

WAREHOUSE (WNO, WNAME, CITY)

SHIPMENT (PNO, WNO, QUANTITY, DATE)

Create the above tables, insert suitable tuples and perform the following operations in Oracle SQL:

15

a. Obtain the Names of warehouses which have shipped red coloured parts.

b. Retrieve the PNO of the parts shipped by all the warehouses.

c. Find the number of parts supplied by each warehouse

2. Create the below tables, insert suitable tuples and perform the following operations using
MongoDB

PART (PNO, PNAME, COLOUR)

SHIPMENT (PNO, WNO, WNAME, QUANTITY, DATE)

a. Find the parts shipped from warehouse :Wname”

b. List the total quantity supplied from each warehouse

V. Execute the following exercises

1. Consider the relations

BOOK (ISBN, TITLE, AUTHOR, PUBLISHER)

STUDENT (USN, NAME, SEM, DEPTNO),

BORROW (ISBN, USN, DATE)

 Create the above tables, insert suitable tuples and perform the following operations in Oracle SQL:
 
a. Obtain the name of the student who has borrowed the book bearing ISBN „123‟

b. Obtain the Names of students who have borrowed database books.

c. Find the number of books borrowed by each student.

2. Create the below tables, insert suitable tuples and perform the following operations using

MongoDB

BOOK (ISBN, TITLE, AUTHOR, PUBLISHER)

BORROW (ISBN, USN, DATE)

a. Obtain the name of the student who has borrowed the book bearing
