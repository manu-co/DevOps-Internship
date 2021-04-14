*/61) Display the names of the employees from department number 10 with salary greater than that of all employee working in other departments./*
select ename from emp where deptno=10 and sal>all(select sal from emp where deptno not in 10);

--62) Display the names of the employees in Uppercase.
select upper(ename)from emp;

--63) Display the names of the employees in Lowecase.
select lower(ename)from emp;

--64) Display the names of the employees in Propercase.
select initcap(ename)from emp;

--65) Display the length of Your name using appropriate function.
select length(‘name’) from dual;

--66) Display the length of all the employee names.
select length(ename) from emp;

--67) select name of the employee concatenate with employee number.
select ename||empno from emp;

*/68) User appropriate function and extract 3 characters starting from 2 characters from the following string ‘Oracle’. i.e the out put should be ‘ac’./*
select substr(‘oracle’,3,2) from dual;

*/69) Find the First occurance of character ‘a’ from the following string i.e ‘Computer Maintenance Corporation’./*
SELECT INSTR(‘Computer Maintenance Corporation’,'a’,1) FROM DUAL;

--70) Replace every occurance of alphabhet A with B in the string Allens(use translate function)
select translate(‘Allens’,'A’,'B’) from dual;

*/71) Display the informaction from emp table.Where job manager is found it should be displayed as boos(Use replace function)./*
select replace(JOB,’MANAGER’,'BOSS’) FROM EMP;

*/72) Display empno,ename,deptno from emp table.Instead of display department numbers display the related department name(Use decode function)./*
select empno,ename,decode(deptno,10,’ACCOUNTING’,20,’RESEARCH’,30,’SALES’,40,’OPRATIONS’) from emp;

--73) Display your age in days.
select to_date(sysdate)-to_date(’10-sep-77′)from dual;

--74) Display your age in months.
select months_between(sysdate,’10-sep-77′) from dual;

--75) Display the current date as 15th Augest Friday Nineteen Ninety Saven.
select to_char(sysdate,’ddth Month day year’) from dual;

*/76) Display the following output for each row from emp table. A has joined the company on wednesday 13th August ninten nintey./*
select ENAME||’ HAS JOINED THE COMPANY ON ‘||to_char(HIREDATE,’day ddth Month year’) from EMP;

--77) Find the date for nearest saturday after current date.
SELECT NEXT_DAY(SYSDATE,’SATURDAY’)FROM DUAL;

--78) Display current time.
select to_char(sysdate,’hh:MM:ss’) from dual.

--79) Display the date three months Before the current date.
select add_months(sysdate,3) from dual;

--80) Display the common jobs from department number 10 and 20.
select job from emp where deptno=10 and job in(select job from emp where deptno=20);

*/81)Display the names of employees who earn a salary more than that of A or that of salary grether than that of B./*
select ename,sal from emp where sal> (select sal from emp where ename=’A')and sal> (select sal from emp where ename=’B');

--81) Display the jobs found in department 10 and 20 Eliminate duplicate jobs.
select distinct(job) from emp where deptno=10 or deptno=20;

--(or)

select distinct(job) from emp where deptno in(10,20);

--82) Display the jobs which are unique to department 10.
select distinct(job) from emp where deptno=10;

--83) Display the details of those who do not have any person working under them.
select e.ename from emp,emp e where emp.mgr=e.empno group by e.ename having count(*)=1;

--84) Display the details of those employees who are in sales department and grade is 3.
select * from emp where deptno=(select deptno from dept where dname=’SALES’)and sal between(select losal from salgrade where grade=3)and (select hisal from salgrade where grade=3);

--85) Display those who are not managers and who are managers any one.
--i)display the managers names
select distinct(m.ename) from emp e,emp m where m.empno=e.mgr;
--ii)display the who are not managers
select ename from emp where ename not in(select distinct(m.ename) from emp e,emp m where m.empno=e.mgr);

--86) Display those employee whose name contains not less than 4 characters.
select ename from emp where length(ename)>4;

--87) Display those department whose name start with “S” while the location name ends with “K”.
select dname from dept where dname like ‘S%’ and loc like ‘%K’;

--88) Display those employees whose manager name is akash.
select p.ename from emp e,emp p where e.empno=p.mgr and e.ename=’Akash’;

--89) Display those employees whose salary is more than 3000 after giving 20% increment.
select ename,sal from emp where (sal+sal*.2)>3000;

--90) Display all employees while their dept names;
select ename,dname from emp,dept where emp.deptno=dept.deptno;

--91) Display ename who are working in sales dept.
select ename from emp where deptno=(select deptno from dept where dname=’SALES’);

*/92) Display employee name,deptname,salary and comm for those sal in between 2000 to 5000 while location is Ahmedabad ./*
select ename,dname,sal,comm from emp,dept where sal between 2000 and 5000 and loc=’AHMEDABAD’ and emp.deptno=dept.deptno;

--93)Display those employees whose salary greter than his manager salary.
select p.ename from emp e,emp p where e.empno=p.mgr and p.sal>e.sal;

--94) Display those employees who are working in the same dept where his manager is work.
select p.ename from emp e,emp p where e.empno=p.mgr and p.deptno=e.deptno;

--95) Display those employees who are not working under any manager.
select ename from emp where mgr is null;

*/96) Display grade and employees name for the dept no 10 or 30 but grade is not 4 while joined the company before 31-dec-82./*
select ename,grade from emp,salgrade where sal between losal and hisal and deptno in(10,30) and grade<>4 and hiredate<’31-DEC-82′;

--97) Update the salary of each employee by 10% increment who are not eligiblw for commission.
update emp set sal=sal+sal*10/100 where comm is null;

*/98) SELECT those employee who joined the company before 31-dec-82 while their dept location is newyork or Chicago./*
SELECT EMPNO,ENAME,HIREDATE,DNAME,LOC FROM EMP,DEPT WHERE (EMP.DEPTNO=DEPT.DEPTNO)AND HIREDATE <’31-DEC-82′ AND DEPT.LOC IN(‘CHICAGO’,'NEW YORK’);

--99) DISPLAY EMPLOYEE NAME,JOB,DEPARTMENT,LOCATION FOR ALL WHO ARE WORKING AS MANAGER?
select ename,JOB,DNAME,LOCATION from emp,DEPT where mgr is not null;

--100) DISPLAY THOSE EMPLOYEES WHOSE MANAGER NAME IS AKKI? –[AND ALSO DISPLAY THEIR MANAGER NAME]?
SELECT P.ENAME FROM EMP E, EMP P WHERE E.EMPNO=P.MGR AND E.ENAME=’AKKI’;
