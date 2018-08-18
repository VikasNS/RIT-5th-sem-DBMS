DECLARE
  is_prime number;
  i number;
  inp number;
BEGIN
  i:=2;
  is_prime:=1;
  inp:=&inp;
  FOR I IN 2..inp/2
  LOOP
      IF mod(inp,i)=0
        THEN is_prime:=0;
        exit;
      END IF;
  END LOOP;
  IF is_prime=1
  then
    SYS.DBMS_OUTPUT.PUT_LINE('It is a prime Number');
  else
    SYS.DBMS_OUTPUT.PUT_LINE('It is not a prime Number');
  END IF;
END;

/*
Credits: Crazy Programmer
Link: https://www.thecrazyprogrammer.com/2016/09/plsql-program-prime-number.html
*/
