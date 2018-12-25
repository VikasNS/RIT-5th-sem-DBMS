/* To create a table */

CREATE TABLE table_name (
column_name1 type,
column_name1 type,
CONSTRAINT pk_cl_name PRIMARY KEY (column_name1, column_name2),
CONSTRAINT fk_c1_name FORIEGN KEY (column_name) REFERENCES other_table_name(other_column_name)
);
/* types NUMBER,VARCHAR2 */
/* DATE type : TO_DATE('27-NOV-2011','DD-MON-YYYY') */


/*Delete Table*/
DROP TABLE table_name cascade constraints;

/* To insert a row into the table */
INSERT INTO table_name (column_name1, column_name2, column_name3) VALUES(value_1,value_2,value_3);

/* Rename Table */
ALTER TABLE table_name
RENAME TO new_table_name;

/* Rename Column */
ALTER TABLE table_name
RENAME COLUMN old_name TO new_name;

/* Delete Column */
ALTER TABLE table_name 
DROP COLUMN column_name;

/* To update a row */
UPDATE table_name SET column_name = value WHERE other_column_name = 1;

/* To delete a row */
DELETE FROM table_name WHERE column_name = value

/* To group and count no of items in each group */
SELECT count(*) from table_name GROUP BY column_name

/* To group and count no of no null items of a specific column in each group */
SELECT count(column_name_to_count_the_no_of_not_null_values) from table_name GROUP BY column_name

/* to dispaly the grouped by column and the count in each column */
SELECT column_name,count(*) from table_name GROUP BY column_name

/* To group and count no of no distinct items of a specific column in each group */
SELECT count(DISTINCT column_name_to_count_the_no_of_distinct_values) from table_name GROUP BY column_name

/* Between */
SELECT column_name from table_name where column BETWEEN value_1 AND value_2

/* ALL(and) and ANY(or)*/
SELECT column_name from table_name where column_name > ALL(value1,value2,value3)
SELECT column_name from table_name where column_name > ANY(value1,value2,value3)


/* LIKE */
% means one or more charecters
_ means one charecter
SELECT column_name from table_name where column_name like '%e%' 

/* NULL */
SELECT column_name from table_name where column_name is NULL
SELECT column_name from table_name where column_name is NULL





//////////////////// PL/SQL //////////////////////////////////////////

/* Implicit Cursor */

SELECT column_name INTO variable_name from table_name;

/* Variable Declaration */

variable_name table_name.column_name%type;
varibale_name table_name%rowtype;


/* Funtions */

%FOUND 
/*Returns TRUE if an INSERT, UPDATE, or DELETE statement affected one or more rows 
or a SELECT INTO statement returned one or more rows. Otherwise, it returns FALSE.*/

%NOTFOUND
/*The logical opposite of %FOUND. It returns TRUE if an INSERT, UPDATE, or DELETE statement affected no rows,
or a SELECT INTO statement returned no rows. Otherwise, it returns FALSE*/
	
%ISOPEN
/*Always returns FALSE for implicit cursors, because Oracle closes the SQL cursor 
automatically after executing its associated SQL statement.*/

%ROWCOUNT
/*Returns the number of rows affected by an INSERT, 
UPDATE, or DELETE statement, or returned by a SELECT INTO statement.*/

















