SET SERVEROUTPUT ON;
	
DECLARE
	A COW.WNUM%TYPE:=&a;
	B GOAT.TNUM%TYPE:=&b;
	C CHICKEN.NCAGE%TYPE:=&c;
	D DUCK.KCAGE%TYPE:=&d;
	
BEGIN
	FOR I IN (SELECT WNUM FROM COW@site_link WHERE WNUM=A) LOOP
		IF A=I.WNUM THEN
			DBMS_OUTPUT.PUT_LINE('COW AVAILABLE');
		END IF;
	END LOOP;
	
	FOR I IN (SELECT TNUM FROM GOAT@site_link WHERE TNUM=B) LOOP
		IF B=I.TNUM THEN
			DBMS_OUTPUT.PUT_LINE('GOAT AVAILABLE');
		END IF;
	END LOOP;
	
	FOR I IN (SELECT NCAGE FROM CHICKEN@site_link WHERE NCAGE=C) LOOP
		IF C=I.NCAGE THEN
			DBMS_OUTPUT.PUT_LINE('CHICKEN AVAILABLE');
		END IF;
	END LOOP;
	
	FOR I IN (SELECT KCAGE FROM DUCK@site_link WHERE KCAGE=D) LOOP
		IF D=I.KCAGE THEN
			DBMS_OUTPUT.PUT_LINE('DUCK AVAILABLE');
		END IF;
	END LOOP;	
	
END;
/