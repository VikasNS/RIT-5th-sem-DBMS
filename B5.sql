 DECLARE
  one NUMBER(3) DEFAULT 0;
  two NUMBER(3) DEFAULT 1;
  fib NUMBER(3) DEFAULT 0;
  N NUMBER(1) DEFAULT 0;
 BEGIN
  LOOP
    fib:=one+two;
    one:=two;
    two:=fib;
    N:=N+1;
    SYS.DBMS_OUTPUT.PUT_LINE(fib);
    exit when N > 7;
  END LOOP;
 END;
