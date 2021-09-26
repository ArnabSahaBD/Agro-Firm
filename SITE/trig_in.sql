CREATE OR REPLACE TRIGGER TRIGGER_LOGIN_COW
AFTER INSERT ON COW FOR EACH ROW
BEGIN
	INSERT INTO LOG_INSERT@site_link VALUES(:NEW.WNUM,SYSDATE);
END;
/

CREATE OR REPLACE TRIGGER TRIGGER_LOGIN_GOAT
AFTER INSERT ON GOAT FOR EACH ROW
BEGIN
	INSERT INTO LOG_INSERT@site_link VALUES(:NEW.TNUM,SYSDATE);
END;
/

CREATE OR REPLACE TRIGGER TRIGGER_LOGIN_CHICKEN
AFTER INSERT ON CHICKEN FOR EACH ROW
BEGIN
	INSERT INTO LOG_INSERT@site_link VALUES(:NEW.NCAGE,SYSDATE);
END;
/

CREATE OR REPLACE TRIGGER TRIGGER_LOGIN_DUCK
AFTER INSERT ON DUCK FOR EACH ROW
BEGIN
	INSERT INTO LOG_INSERT@site_link VALUES(:NEW.KCAGE,SYSDATE);
END;
/