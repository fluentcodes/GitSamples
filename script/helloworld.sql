BEGIN
   dbms_output.put_line('Hello World Direct');
END;

DECLARE
   -- variable declaration
   message  varchar2(20):= 'Hello World!';
BEGIN
   --output
   dbms_output.put_line(message);
END;

DECLARE
   total NUMBER(10):= 0;
BEGIN
   SELECT count(*) INTO total FROM vs_user.KUNDENFIRMA k;
   dbms_output.put_line('KUNDENFIRMA: ' || total);
END;

CREATE OR REPLACE FUNCTION totalCustomers
RETURN number
IS
   total number(2) := 0;
BEGIN
   SELECT count(*) INTO total FROM vs_user.KUNDENFIRMA k;
   RETURN total;
END;


