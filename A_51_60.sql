--51) Display the name of the empployee who earns highest salary.
select ename from emp where sal=(select max(sal) from emp);

*/52) Display the employee number and name for employee working as clerk and earning highest salary among clerks./*
select empno,ename from emp where where job=’CLERK’ and sal=(select max(sal) from emp where job=’CLERK’);

--53) Display the names of salesman who earns a salary more than the highest salary of any clerk.
select ename,sal from emp where job=’SALESMAN’ and sal>(select max(sal) from emp where job=’CLERK’);

--54) Display the names of clerks who earn a salary more than the lowest salary of any salesman.
select ename from emp where job=’CLERK’ and sal>(select min(sal) from emp where job=’SALESMAN’);

--55) Display the names of the employees who earn highest salary in their respective departments.
select ename,sal,deptno from emp where sal in(select max(sal) from emp group by deptno);

--56) Display the names of the employees who earn highest salaries in their respective job groups.
select ename,sal,job from emp where sal in(select max(sal) from emp group by job);

--57) Display the employee names who are working in accounting department.
select ename from emp where deptno=(select deptno from dept where dname=’ACCOUNTING’);

--58) Display the employee names who are working in Ahmedabad .
select ename from emp where deptno=(select deptno from dept where LOC=’Ahmedabad’);

--59) Display the Job groups having total salary greater than the maximum salary for managers.
SELECT JOB,SUM(SAL) FROM EMP GROUP BY JOB HAVING SUM(SAL)>(SELECT MAX(SAL) FROM EMP WHERE JOB=’MANAGER’);

*/60) Display the names of employees from department number 10 with salary grether than that of any employee working in other department./*
select ename from emp where deptno=10 and sal>any(select sal from emp where deptno not in 10);
