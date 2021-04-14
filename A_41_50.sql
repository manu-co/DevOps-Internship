*/41) Display name,salary,hra,pf,da,total salary for each employee. The output should be in the order of total salary,hra 15% of salary,da 10% of salary,pf 5% salary,total salary will be(salary+hra+da)-pf./*
select ename,sal,sal/100*15 as hra,sal/100*5 as pf,sal/100*10 as da, sal+sal/100*15+sal/100*10-sal/100*5 as total from emp;

--42) Display depart numbers and total number of employees working in each department.
select deptno,count(deptno)from emp group by deptno;

--43) Display the various jobs and total number of employees within each job group.
select job,count(job)from emp group by job;

--44) Display the depart numbers and total salary for each department.
select deptno,sum(sal) from emp group by deptno;

--45) Display the depart numbers and max salary for each department.
select deptno,max(sal) from emp group by deptno;

--46) Display the various jobs and total salary for each job
select job,sum(sal) from emp group by job;

--47) Display the various jobs and total salary for each job
select job,min(sal) from emp group by job;

--48) Display the depart numbers with more than three employees in each dept.
select deptno,count(deptno) from emp group by deptno having count(*)>3;

*/49) Display the various jobs along with total salary for each of the jobs where total salary is greater than 40000./*
select job,sum(sal) from emp group by job having sum(sal)>40000;

*/50) Display the various jobs along with total number of employees in each job.The output should contain only those jobs with more than three employees./*
select job,count(empno) from emp group by job having count(job)>3;