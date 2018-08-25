DROP TABLE PART cascade constraints;
DROP TABLE WAREHOUSE cascade constraints;
DROP TABLE SHIPMENT cascade constraints;

CREATE TABLE PART (
PNO NUMBER(2),
PNAME VARCHAR2(10),
COLOUR VARCHAR2(10),
CONSTRAINT pk_pno PRIMARY KEY (PNO)
);

CREATE TABLE WAREHOUSE(
WHO NUMBER(2),
WNAME VARCHAR2(10),
CITY VARCHAR2(10),
CONSTRAINT pk_who PRIMARY KEY (WHO)
);

CREATE TABLE SHIPMENT(
PNO NUMBER(2),
WHO NUMBER(2),
QUANTITY NUMBER(2),
ShipDate DATE,
CONSTRAINT fk_pno FOREIGN KEY (PNO) REFERENCES PART(PNO),
CONSTRAINT fk_who FOREIGN KEY (WHO) REFERENCES WAREHOUSE(WHO)
);




INSERT INTO PART (PNO,PNAME,COLOUR) VALUES(1,'Wheel','Green');
INSERT INTO PART (PNO,PNAME,COLOUR) VALUES(2,'Wheel','RED');
INSERT INTO PART (PNO,PNAME,COLOUR) VALUES(3,'Steering','Brown');
INSERT INTO PART (PNO,PNAME,COLOUR) VALUES(4,'Steering','Black');
INSERT INTO PART (PNO,PNAME,COLOUR) VALUES(5,'Helmet','Black');
INSERT INTO PART (PNO,PNAME,COLOUR) VALUES(6,'Helmet','RED');
INSERT INTO PART (PNO,PNAME,COLOUR) VALUES(7,'Bolts','Brown');
INSERT INTO PART (PNO,PNAME,COLOUR) VALUES(8,'Bolts','Green');


INSERT INTO WAREHOUSE(WHO,WNAME,CITY) VALUES(1,'R group','Bangalore');
INSERT INTO WAREHOUSE(WHO,WNAME,CITY) VALUES(2,'G group','Mysore');
INSERT INTO WAREHOUSE(WHO,WNAME,CITY) VALUES(3,'B group','Lahore');

INSERT INTO SHIPMENT(PNO,WHO,QUANTITY,ShipDate) VALUES(1,1,10,TO_DATE('27-AUG-2011','DD-MON-YYYY'));
INSERT INTO SHIPMENT(PNO,WHO,QUANTITY,ShipDate) VALUES(2,1,20,TO_DATE('3-OCT-2010','DD-MON-YYYY'));
INSERT INTO SHIPMENT(PNO,WHO,QUANTITY,ShipDate) VALUES(3,1,30,TO_DATE('15-MAR-2015','DD-MON-YYYY'));
INSERT INTO SHIPMENT(PNO,WHO,QUANTITY,ShipDate) VALUES(4,2,24,TO_DATE('1-JUL-2014','DD-MON-YYYY'));
INSERT INTO SHIPMENT(PNO,WHO,QUANTITY,ShipDate) VALUES(5,2,55,TO_DATE('14-MAR-2016','DD-MON-YYYY'));
INSERT INTO SHIPMENT(PNO,WHO,QUANTITY,ShipDate) VALUES(6,3,19,TO_DATE('25-JAN-2010','DD-MON-YYYY'));
INSERT INTO SHIPMENT(PNO,WHO,QUANTITY,ShipDate) VALUES(8,3,22,TO_DATE('27-NOV-2011','DD-MON-YYYY'));


SELECT WNAME FROM WAREHOUSE WHERE WHO IN (SELECT WHO FROM SHIPMENT WHERE PNO IN (SELECT PNO FROM PART WHERE COLOUR = 'Red'));
SELECT PNO FROM SHIPMENT WHERE WHO IN (SELECT WHO FROM WAREHOUSE);
SELECT COUNT(WHO) From SHIPMENT GROUP BY WHO;
