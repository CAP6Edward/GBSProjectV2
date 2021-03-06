-- CREATE DATABASE FOR USERS
CREATE DATABASE  GBSUSERSDB;
USE GBSUSERSDB;

CREATE TABLE USERS(USER_NAME VARCHAR(50) PRIMARY KEY NOT NULL, USER_PASSWORD VARCHAR(50) NOT NULL, CREATION_DATE DATE NOT NULL, NUMBER_OF_ACCOUNTS INT NOT NULL,TOTAL_BALANCE FLOAT NOT NULL, CONTACT_NUMBER VARCHAR(11) NOT NULL);
INSERT INTO USERS VALUES("edward98","alphanumeric","2021-12-09",1,25000.0,"09987654321");
INSERT INTO USERS VALUES("rodriguez123","password","2021-12-15",1,10000.0,"09123654789");
INSERT INTO USERS VALUES("joseph03","testing","2021-12-17",2,90000.0,"09147852361");
INSERT INTO USERS VALUES("ejay19","313445","2021-12-19",1,5000.0,"09351236547");
SELECT * FROM USERS;

-- CREATE DATABASE FOR ACCOUNTS
CREATE DATABASE GBSACCOUNTSDB;
USE GBSACCOUNTSDB;

CREATE TABLE ACCOUNTS(ACCOUNT_NUMBER VARCHAR(10) PRIMARY KEY NOT NULL,USER_NAME VARCHAR(50) NOT NULL,ACCOUNT_BALANCE FLOAT NOT NULL);
INSERT INTO ACCOUNTS VALUES("1001","edward98",25000.0);
INSERT INTO ACCOUNTS VALUES("1002","edward98",10000.0);
INSERT INTO ACCOUNTS VALUES("2001","rodriguez123",10000.0);
INSERT INTO ACCOUNTS VALUES("3001","joseph03",50000.0);
INSERT INTO ACCOUNTS VALUES("3002","joseph03",40000.0);
INSERT INTO ACCOUNTS VALUES("4001","ejay19",5000.0);
SELECT * FROM ACCOUNTS;

CREATE TABLE TRANSACTIONS(TRANSACTION_ID INT PRIMARY KEY AUTO_INCREMENT NOT NULL, FROM_ACCOUNT VARCHAR(10) NOT NULL,TO_ACCOUNT VARCHAR(10) NOT NULL,AMOUNT FLOAT NOT NULL);
INSERT INTO TRANSACTIONS VALUES(1,"1001","1002",5000.0);
INSERT INTO TRANSACTIONS VALUES(2,"1001","2001",10000.0);
INSERT INTO TRANSACTIONS VALUES(29,"2001","3001",7000.0);
SELECT * FROM TRANSACTIONS;