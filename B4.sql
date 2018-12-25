DROP Table PART100 cascade constraints;
DROP TABLE PART200 CASCADE CONSTRAINTS;

SET SERVEROUTPUT ON;

CREATE TABLE PART100 (
PNO NUMBER(2),
PNAME VARCHAR2(10),
COLOUR VARCHAR2(10),
CONSTRAINT pk_pno100 PRIMARY KEY (PNO)
);

CREATE TABLE PART200 (
PNO NUMBER(2),
PNAME VARCHAR2(10),
COLOUR VARCHAR2(10),
CONSTRAINT pk_pno200 PRIMARY KEY (PNO)
);

INSERT INTO PART100 (PNO,PNAME,COLOUR) VALUES(1,'Wheel','Green');
INSERT INTO PART100 (PNO,PNAME,COLOUR) VALUES(2,'Wheel','RED');
INSERT INTO PART100 (PNO,PNAME,COLOUR) VALUES(3,'Steering','Brown');
INSERT INTO PART100 (PNO,PNAME,COLOUR) VALUES(4,'Steering','Black');
INSERT INTO PART100 (PNO,PNAME,COLOUR) VALUES(5,'Helmet','Black');
INSERT INTO PART100 (PNO,PNAME,COLOUR) VALUES(6,'Helmet','RED');
INSERT INTO PART100 (PNO,PNAME,COLOUR) VALUES(7,'Bolts','Brown');
INSERT INTO PART100 (PNO,PNAME,COLOUR) VALUES(8,'Bolts','Green');


DECLARE
  my_row PART100%ROWTYPE;
  CURSOR C1
    IS
    SELECT * FROM PART100;

BEGIN

  OPEN C1;
  
  LOOP
  
    FETCH C1 INTO my_row;
    EXIT when C1%NOTFOUND;
   
    INSERT INTO PART200 (PNO,PNAME,COLOUR) VALUES(my_row.PNO,my_row.PNAME,my_row.COLOUR);
   
  END LOOP;
    
   DBMS_OUTPUT.PUT_LINE('No of Columns Inserterd ' || c1%rowcount);
   close c1;
   
END;
/
