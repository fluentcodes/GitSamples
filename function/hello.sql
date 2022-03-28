BEGIN
    DBMS_OUTPUT.PUT_LINE('HELLO WORLD');
END;

CREATE OR REPLACE FUNCTION HELLO
IS
BEGIN
	DBMS_OUTPUT.PUT_LINE('HELLO WORLD');
END HELLO;

BEGIN
   dbms_output.put_line(werdiw.getMultiple(3, 5));
END;

CREATE OR REPLACE function WERDIW.getMultiple(num1 in number, num2 in number)
return number
is
  num3 number(8);
begin
  num3 :=num1*num2;
  return num3;
end;