--31) Display the maximum salary being paid to CLERK.
select max(sal) from emp where job=’CLERK’;

--32) Display the maximum salary being paid to depart number 20.
select max(sal) from emp where deptno=20;

--33) Display the minimum salary being paid to any SALESMAN.
select min(sal) from emp where job=’SALESMAN’;

--34) Display the average salary drawn by MANAGERS.
select avg(sal) from emp where job=’MANAGER’;

--35) Display the total salary drawn by ANALYST working in depart number 40.
select sum(sal) from emp where job=’ANALYST’ and deptno=40;

*/36) Display the names of the employee in order of salary i.e the name of the employee earning lowest salary should salary appear first./*
select ename from emp order by sal;

--37) Display the names of the employee in descending order of salary.
select ename from emp order by sal desc;

--38) Display the names of the employee in order of employee name.
select ename from emp order by ename;

*/39) Display empno,ename,deptno,sal sort the output first base on name and within name by deptno and with in deptno by sal./*
select empno,ename,deptno,sal from emp order by;

*/40) Display the name of the employee along with their annual salary(sal*12).The name of the employee earning highest annual salary should apper first./*
select ename,sal*12 from emp order by sal desc;