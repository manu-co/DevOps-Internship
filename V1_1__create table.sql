CREATE TABLE EMP(
  empno NUMBER NOT NULL ,
  ename VARCHAR(45) NOT NULL,
  job VARCHAR(45) ,
  manager NUMBER ,
  hiredate DATE ,
  sal NUMBER NOT NULL,
  comm NUMBER DEFAULT 0.00,
  deptno NUMBER NOT NULL,
  PRIMARY KEY(empno));