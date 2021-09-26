CREATE OR REPLACE FUNCTION TOTALCOW
RETURN NUMBER IS 
   TOTALC NUMBER := 0; 
BEGIN 
   SELECT COUNT(*) INTO TOTALC FROM COW@site_link; 
   RETURN TOTALC; 
END TOTALCOW; 
/ 

CREATE OR REPLACE FUNCTION TOTALGOAT
RETURN NUMBER IS 
   TOTALT NUMBER := 0; 
BEGIN 
   SELECT COUNT(*) INTO TOTALT FROM GOAT@site_link; 
   RETURN TOTALT; 
END TOTALGOAT; 
/

CREATE OR REPLACE FUNCTION TOTALCHICKEN
RETURN NUMBER IS 
   TOTALN NUMBER := 0; 
BEGIN 
   SELECT COUNT(*) INTO TOTALN FROM CHICKEN@site_link; 
   RETURN TOTALN; 
END TOTALCHICKEN; 
/ 

CREATE OR REPLACE FUNCTION TOTALDUCK
RETURN NUMBER IS 
   TOTALK NUMBER := 0; 
BEGIN 
   SELECT COUNT(*) INTO TOTALK FROM DUCK@site_link; 
   RETURN TOTALK; 
END TOTALDUCK; 
/  