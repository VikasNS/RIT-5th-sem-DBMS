/* To create a table */

CREATE TABLE table_name (
column_name1 type,
column_name1 type,
CONSTRAINT pk_cl_name PRIMARY KEY (column_name1, column_name2),
CONSTRAINT fk_c1_name FORIEGN KEY (column_name) REFERENCES other_table_name(other_column_name)
);
/* typeS NUMBER,VARCHAR2 */


/* To insert a row into the table */

INSERT INTO table_name (column_name1, column_name2, column_name3) VALUES(value_1,value_2,value_3);

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
SELECT count(column_name_to_count_the_no_of_distinct_values) from table_name GROUP BY column_name

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





