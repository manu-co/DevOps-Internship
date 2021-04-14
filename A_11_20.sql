--11) Display the names of employees who are working as clerks,salesman or analyst and drawing a salary more than 3000.
select ename from emp where job=’CLERK’ OR JOB=’SALESMAN’ OR JOB=’ANALYST’ AND SAL>3000;

--12) Display the names of the employees who are working in the company for the past 5 years;
select ename from emp where to_char(sysdate,’YYYY’)-to_char(hiredate,’YYYY’)>=5;

--13) Display the list of employees who have joined the company before 30-JUN-90 or after 31-DEC-90.
select ename from emp where hiredate < ’30-JUN-1990′ or hiredate >’31-DEC-90′;

--14) Display current Date.
select sysdate from dual;

--15) Display the list of all users in your database(use catalog table).
select username from all_users;

--16) Display the names of all tables from current user;
select tname from tab;

--17) Display the name of the current user.
show user;

--18) Display the names of employees working in depart number 10 or 20 or 40 or employees working as CLERKS,SALESMAN or ANALYST.
select ename from emp where deptno in(10,20,40) or job in(‘CLERKS’,'SALESMAN’,'ANALYST’);

--19) Display the names of employees whose name starts with alaphabet S.
select ename from emp where ename like ‘S%’;

--20) Display the Employee names for employees whose name ends with alaphabet S.
select ename from emp where ename like ‘%S’;