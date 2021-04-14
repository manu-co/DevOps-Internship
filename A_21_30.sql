--21) Display the names of employees whose names have second alphabet A in their names.
select ename from emp where ename like ‘_A%’;

--22) select the names of the employee whose names is exactly five characters in length.
select ename from emp where length(ename)=5;

--23) Display the names of the employee who are not working as MANAGERS.
select ename from emp where job not in(‘MANAGER’);

--24) Display the names of the employee who are not working as SALESMAN OR CLERK OR ANALYST.
select ename from emp where job not in(‘SALESMAN’,'CLERK’,'ANALYST’);

--25) Display all rows from emp table.The system should wait after every screen full of informaction.
set pause on;

--26) Display the total number of employee working in the company.
select count(*) from emp;

--27) Display the total salary beiging paid to all employees.
select sum(sal) from emp;

--28) Display the maximum salary from emp table.
select max(sal) from emp;

--29) Display the minimum salary from emp table.
select min(sal) from emp;

--30) Display the average salary from emp table.
select avg(sal) from emp;