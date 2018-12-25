/*
DROP TABLE BRANCH cascade constraints;
DROP TABLE CUSTOMER cascade constraints;
DROP TABLE ACCOUNT cascade constraints;
*/

CREATE TABLE BRANCH (
Code VARCHAR2(2),
Name VARCHAR2(3),
Assets NUMBER(6),
CONSTRAINT pk_code PRIMARY KEY (Code)
);

CREATE TABLE CUSTOMER(
SSN NUMBER(1),
Name VARCHAR2(5),
Place VARCHAR2(3),
CONSTRAINT pk_ssn PRIMARY KEY (SSN)
);

CREATE TABLE ACCOUNT(
AccNo VARCHAR2(2),
SSN NUMBER(1),
Code VARCHAR2(2),
Balance NUMBER(6),
CONSTRAINT fk_ssn FOREIGN KEY (SSN) REFERENCES CUSTOMER(SSN),
CONSTRAINT fk_code FOREIGN KEY (Code) REFERENCES BRANCH(Code)
);

INSERT INTO BRANCH (Code,Name,Assets) VALUES('B1','MSR',10000);
INSERT INTO BRANCH (Code,Name,Assets) VALUES('B2','RNR',20000);
INSERT INTO BRANCH (Code,Name,Assets) VALUES('B3','SMR',15000);
INSERT INTO BRANCH (Code,Name,Assets) VALUES('B4','SKR',25000);

INSERT INTO CUSTOMER(SSN,Name,Place)  VALUES(1,'Ram','BNG');
INSERT INTO CUSTOMER(SSN,Name,Place)  VALUES(2,'Asha','MNG');
INSERT INTO CUSTOMER(SSN,Name,Place)  VALUES(3,'Usha','MYS');
INSERT INTO CUSTOMER(SSN,Name,Place)  VALUES(4,'Usha','DEL');


INSERT INTO ACCOUNT(AccNo,SSN,Code,Balance) VALUES('A1',1,'B1',100000);
INSERT INTO ACCOUNT(AccNo,SSN,Code,Balance) VALUES('A2',1,'B1',200000);
INSERT INTO ACCOUNT(AccNo,SSN,Code,Balance) VALUES('A3',2,'B2',100000);
INSERT INTO ACCOUNT(AccNo,SSN,Code,Balance) VALUES('A4',3,'B2',100000);
INSERT INTO ACCOUNT(AccNo,SSN,Code,Balance) VALUES('A5',3,'B2',100000);
INSERT INTO ACCOUNT(AccNo,SSN,Code,Balance) VALUES('A5',3,'B2',100000);
INSERT INTO ACCOUNT(AccNo,SSN,Code,Balance) VALUES('A7',4,'B2',200000);

BEGIN

DBMS_OUTPUT.PUT_LINE('BRANCH');
FOR i in (SELECT * FROM BRANCH)
  LOOP
    DBMS_OUTPUT.PUT_LINE('Code:' || ' ' || i.Code || ' ' || 'Name:' || ' ' || i.Name || ' ' || 'Assets:' || ' ' || i.Assets);
  END LOOP;

DBMS_OUTPUT.PUT_LINE('');
DBMS_OUTPUT.PUT_LINE('CUSTOMER');
FOR i in (SELECT * FROM CUSTOMER)
  LOOP
    DBMS_OUTPUT.PUT_LINE('SSN:' || ' ' || i.SSN ||  ' ' || 'Name:' || ' ' || i.Name || ' ' || 'Place:' || ' ' || i.Place);
  END LOOP;

DBMS_OUTPUT.PUT_LINE('');

DBMS_OUTPUT.PUT_LINE('Accounts Table');
FOR i in (SELECT * FROM ACCOUNT)
  LOOP
    DBMS_OUTPUT.PUT_LINE('AccNo: '||i.AccNo || ' ' || 'SSN: ' || i.SSN || ' ' || 'Code: ' || i.Code || ' ' || 'Balance: ' || i.Balance);
  END LOOP;

FOR i in (SELECT * FROM ACCOUNT WHERE AccNo IN ('A1','A2','A3'))
  LOOP
    UPDATE ACCOUNT
    SET BALANCE=0 where ACCNO=i.ACCNO;
  END LOOP;

DBMS_OUTPUT.PUT_LINE('');
DBMS_OUTPUT.PUT_LINE('Updated Accounts Table');
FOR i in (SELECT * FROM ACCOUNT)
  LOOP
    DBMS_OUTPUT.PUT_LINE('AccNo: '||i.AccNo || ' ' || 'SSN: ' || i.SSN || ' ' || 'Code: ' || i.Code || ' ' || 'Balance: ' || i.Balance);
  END LOOP;

END;
/                                               
                                                

