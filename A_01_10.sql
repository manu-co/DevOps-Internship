--1) Display the details of all employees
Select * from emp;

--2) Display the depart information from department table
select * from dept;

--3) Display the name and job for all the employees
select ename,job from emp;

--4) Display the name and salary for all the employees
select ename,sal from emp;

--5) Display the employee no and totalsalary for all the employees
select empno,ename,sal,comm, sal+nvl(comm,0) as”total salary” from emp;

--6) Display the employee name and annual salary for all employees.
select ename, 12*(sal+nvl(comm,0)) as “annual Sal” from emp;

--7) Display the names of all the employees who are working in depart number 10.
select emame from emp where deptno=10;

--8 ) Display the names of all the employees who are working as clerks and drawing a salary more than 3000.
select ename from emp where job=’CLERK’ and sal>3000;

--9) Display the employee number and name who are earning comm.
select empno,ename from emp where comm is not null;

--10) Display the employee number and name who do not earn any comm.
select empno,ename from emp where comm is null;