/*
DROP TABLE EMPLOYEE cascade constraints;
DROP TABLE PROJECT cascade constraints;
DROP TABLE ASSIGNED_TO cascade constraints;
*/

CREATE TABLE EMPLOYEE (
SSN NUMBER(2),
Name VARCHAR2(10),
DeptNo NUMBER(2),
CONSTRAINT pk_ssn PRIMARY KEY (SSN)
);

CREATE TABLE PROJECT(
ProjectNo NUMBER(5),
ProjectArea VARCHAR2(20),
CONSTRAINT pk_project_no PRIMARY KEY (ProjectNo)
);

CREATE TABLE ASSIGNED_TO(
SSN NUMBER(2),
ProjectNo NUMBER(5),
CONSTRAINT pk_ssn_project_no PRIMARY KEY (SSN,ProjectNo),
CONSTRAINT fk_ssn FOREIGN KEY (SSN) REFERENCES EMPLOYEE(SSN),
CONSTRAINT fk_project_no FOREIGN KEY (ProjectNo) REFERENCES PROJECT(ProjectNo)
);

INSERT INTO EMPLOYEE (SSN,Name,DeptNo) VALUES (1,'Swamy',1);
INSERT INTO EMPLOYEE (SSN,Name,DeptNo) VALUES (2,'Tingri',1);
INSERT INTO EMPLOYEE (SSN,Name,DeptNo) VALUES (3,'Tenali',1);
INSERT INTO EMPLOYEE (SSN,Name,DeptNo) VALUES (4,'Vijay',1);
INSERT INTO EMPLOYEE (SSN,Name,DeptNo) VALUES (5,'Vinay',2);
INSERT INTO EMPLOYEE (SSN,Name,DeptNo) VALUES (6,'Daniel',2);
INSERT INTO EMPLOYEE (SSN,Name,DeptNo) VALUES (7,'Joseph',2);
INSERT INTO EMPLOYEE (SSN,Name,DeptNo) VALUES (8,'Alia',2);
INSERT INTO EMPLOYEE (SSN,Name,DeptNo) VALUES (9,'Kim',3);
INSERT INTO EMPLOYEE (SSN,Name,DeptNo) VALUES (10,'Gadafi',3);
INSERT INTO EMPLOYEE (SSN,Name,DeptNo) VALUES (11,'Osama',3);
INSERT INTO EMPLOYEE (SSN,Name,DeptNo) VALUES (12,'Saddam',3);

INSERT INTO PROJECT (ProjectNo,ProjectArea) VALUES (1,'Database');
INSERT INTO PROJECT (ProjectNo,ProjectArea) VALUES (2,'Atomic Bomb');
INSERT INTO PROJECT (ProjectNo,ProjectArea) VALUES (3,'Chemical Weapon');
INSERT INTO PROJECT (ProjectNo,ProjectArea) VALUES (4,'Microprocessor');
INSERT INTO PROJECT (ProjectNo,ProjectArea) VALUES (20,'Networking');

INSERT INTO ASSIGNED_TO (SSN,ProjectNo) VALUES (1,4);
INSERT INTO ASSIGNED_TO (SSN,ProjectNo) VALUES (2,4);
INSERT INTO ASSIGNED_TO (SSN,ProjectNo) VALUES (3,4);
INSERT INTO ASSIGNED_TO (SSN,ProjectNo) VALUES (4,1);
INSERT INTO ASSIGNED_TO (SSN,ProjectNo) VALUES (5,1);
INSERT INTO ASSIGNED_TO (SSN,ProjectNo) VALUES (6,4);
INSERT INTO ASSIGNED_TO (SSN,ProjectNo) VALUES (7,1);
INSERT INTO ASSIGNED_TO (SSN,ProjectNo) VALUES (8,4);
INSERT INTO ASSIGNED_TO (SSN,ProjectNo) VALUES (9,2);
INSERT INTO ASSIGNED_TO (SSN,ProjectNo) VALUES (10,3);
INSERT INTO ASSIGNED_TO (SSN,ProjectNo) VALUES (11,3);
INSERT INTO ASSIGNED_TO (SSN,ProjectNo) VALUES (12,3);

SELECT SSN FROM ASSIGNED_TO WHERE ProjectNo = (SELECT ProjectNo FROM PROJECT WHERE ProjectArea = 'Database');
SELECT DEPTNO,COUNT(*) FROM EMPLOYEE GROUP BY DEPTNO;
UPDATE ASSIGNED_TO SET ProjectNo=20 WHERE SSN=1;
