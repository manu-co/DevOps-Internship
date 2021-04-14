*/
101) Display name and salary of ford if his salary is equal to hisal of his grade
SQL>select ename,sal,grade from emp,salgrade where sal between losal and hisal and ename =’FORD’ AND HISAL=SAL;

102) Display employee name,job,depart name ,manager name,his grade and make out an under department wise?
SQL>SELECT E.ENAME,E.JOB,DNAME,EMP.ENAME,GRADE FROM EMP,EMP E,SALGRADE,DEPT WHERE EMP.SAL BETWEEN LOSAL AND HISAL AND EMP.EMPNO=E.MGR AND EMP.DEPTNO=DEPT.DEPTNO ORDER BY DNAME;

103) List out all employees name,job,salary,grade and depart name for every one in the company except ‘CLERK’.Sort on salary display the highest salary?
SQL>SELECT ENAME,JOB,DNAME,SAL,GRADE FROM EMP,SALGRADE,DEPT WHERE SAL BETWEEN LOSAL AND HISAL AND EMP.DEPTNO=DEPT.DEPTNO AND JOB NOT IN(‘CLERK’)ORDER BY SAL ASC;

104) Display the employee name,job and his manager.Display also employee who are without manager?
SQL>select e.ename,e.job,eMP.ename AS Manager from emp,emp e where emp.empno(+)=e.mgr;

105) Find out the top 5 earners of company?
SQL>SELECT DISTINCT SAL FROM EMP E WHERE 5>=(SELECT COUNT(DISTINCT SAL) FROM EMP A WHERE A.SAL>=E.SAL)ORDER BY SAL DESC;

106) Display name of those employee who are getting the highest salary?
SQL>select ename from emp where sal=(select max(sal) from emp);

107) Display those employee whose salary is equal to average of maximum and minimum?
SQL>select ename from emp where sal=(select max(sal)+min(sal)/2 from emp);

108) Select count of employee in each department where count greater than 3?
SQL>select count(*) from emp group by deptno having count(deptno)>3;

109) Display dname where at least 3 are working and display only department name?
SQL>select distinct d.dname from dept d,emp e where d.deptno=e.deptno and 3>any (select count(deptno) from emp group by deptno);

110) Display name of those managers name whose salary is more than average salary of his company?
SQL>SELECT E.ENAME,EMP.ENAME FROM EMP,EMP E WHERE EMP.EMPNO=E.MGR AND E.SAL>(SELECT AVG(SAL) FROM EMP);

111)Display those managers name whose salary is more than average salary of his employee?
SQL>SELECT DISTINCT EMP.ENAME FROM EMP,EMP E WHERE
E.SAL <(SELECT AVG(EMP.SAL) FROM EMP
WHERE EMP.EMPNO=E.MGR GROUP BY EMP.ENAME) AND
EMP.EMPNO=E.MGR;

112) Display employee name,sal,comm and net pay for those employee whose net pay is greter than or equal to any other employee salary of the company?
SQL>select ename,sal,comm,sal+nvl(comm,0) as NetPay from emp where sal+nvl(comm,0) >any (select sal from emp);

113) Display all employees names with total sal of company with each employee name?
SQL>SELECT ENAME,(SELECT SUM(SAL) FROM EMP) FROM EMP;

114) Find out last 5(least)earners of the company.?
SQL>SELECT DISTINCT SAL FROM EMP E WHERE
5>=(SELECT COUNT(DISTINCT SAL) FROM EMP A WHERE A.SAL<=E.SAL)
ORDER BY SAL DESC;

115) Find out the number of employees whose salary is greater than their manager salary?
SQL>SELECT E.ENAME FROM EMP ,EMP E WHERE EMP.EMPNO=E.MGR AND EMP.SAL<E.SAL;

116) Display those department where no employee working?
SQL>select dname from emp,dept where emp.deptno not in(emp.deptno);

117) Display those employee whose salary is ODD value?
SQL>select * from emp where sal<0;

118) Display those employee whose salary contains alleast 3 digits?
SQL>select * from emp where length(sal)>=3;

119) Display those employee who joined in the company in the month of Dec?
SQL>select ename from emp where to_char(hiredate,’MON’)=’DEC’;

120) Display those employees whose name contains “A”?
SQL>select ename from emp where instr(ename,’A')>0;
or
SQL>select ename from emp where ename like(‘%A%’);

121) Display those employee whose deptno is available in salary?
SQL>select emp.ename from emp, emp e where emp.sal=e.deptno;

122) Display those employee whose first 2 characters from hiredate -last 2 characters of salary?
SQL>select ename,SUBSTR(hiredate,1,2)||ENAME||substr(sal,-2,2) from emp;

123) Display those employee whose 10% of salary is equal to the year of joining?
SQL>select ename from emp where to_char(hiredate,’YY’)=sal*0.1;

124) Display those employee who are working in sales or research?
SQL>SELECT ENAME FROM EMP WHERE DEPTNO IN(SELECT DEPTNO FROM DEPT WHERE DNAME IN(‘SALES’,'RESEARCH’));

125) Display the grade of Akki?
SQL>SELECT ENAME,GRADE FROM EMP,SALGRADE WHERE SAL BETWEEN LOSAL AND HISAL AND Ename=’Akki’;

126) Display those employees who joined the company before 15 of the month?
SQL>select ename from emp where to_char(hiredate,’DD’)<15;

127) Display those employee who has joined before 15th of the month.
SQL>select ename from emp where to_char(hiredate,’DD’)<15;

128) Delete those records where no of employees in a particular department is less than 3.
SQL>delete from emp where deptno=(select deptno from emp group by deptno having count(deptno)<3);

129) Display the name of the department where no employee working.
SQL> SELECT E.ENAME,E.JOB,M.ENAME,M.JOB FROM EMP E,EMP M WHERE E.MGR=M.EMPNO;

130) Display those employees who are working as manager.
SQL>SELECT M.ENAME MANAGER FROM EMP M ,EMP E WHERE E.MGR=M.EMPNO GROUP BY M.ENAME;

131) Display those employees whose grade is equal to any number of sal but not equal to first number of sal?
SQL> SELECT ENAME,GRADE FROM EMP,SALGRADE WHERE GRADE NOT IN(SELECT SUBSTR(SAL,0,1)FROM EMP);

132) Print the details of all the employees who are Sub-ordinate to BLAKE?
SQL>select emp.ename from emp, emp e where emp.mgr=e.empno and e.ename=’BLAKE’;

133) Display employee name and his salary whose salary is greater than highest average of department number?
SQL>SELECT SAL FROM EMP WHERE SAL>(SELECT MAX(AVG(SAL)) FROM EMP GROUP BY DEPTNO);

134) Display the 10th record of emp table(without using rowid)
SQL>SELECT * FROM EMP WHERE ROWNUM<11 MINUS SELECT * FROM EMP WHERE ROWNUM<10;

135) Display the half of the ename’s in upper case and remaining lowercase?
SQL>SELECT SUBSTR(LOWER(ENAME),1,3)||SUBSTR(UPPER(ENAME),3,LENGTH(ENAME)) FROM EMP;

136) Display the 10th record of emp table without using group by and rowid?
SQL>SELECT * FROM EMP WHERE ROWNUM<11 MINUS SELECT * FROM EMP WHERE ROWNUM<10;

137) Create a copy of emp table;
SQL>create table new_table as select * from emp where 1=2;

138) Select ename if ename exists more than once.
SQL>select ename from emp e group by ename having count(*)>1;

139) Display all enames in reverse order?(SMITH:HTIMS).
SQL>SELECT REVERSE(ENAME)FROM EMP;

140) Display those employee whose joining of month and grade is equal.
SQL>SELECT ENAME FROM EMP WHERE SAL BETWEEN
(SELECT LOSAL FROM SALGRADE WHERE
GRADE=TO_CHAR(HIREDATE,’MM’)) AND
(SELECT HISAL FROM SALGRADE WHERE
GRADE=TO_CHAR(HIREDATE,’MM’));

141) Display those employee whose joining DATE is available in deptno.
SQL>SELECT ENAME FROM EMP WHERE TO_CHAR(HIREDATE,’DD’)=DEPTNO;

142) Display those employees name as follows
A ALLEN
B BLAKE
SQL> SELECT SUBSTR(ENAME,1,1),ENAME FROM EMP;

143) List out the employees ename,sal,PF(20% OF SAL) from emp;
SQL>SELECT ENAME,SAL,SAL*.2 AS PF FROM EMP;

144) Create table emp with only one column empno;
SQL>Create table emp as select empno from emp where 1=2;

145) Add this column to emp table ename vrachar2(20).
SQL>alter table emp add(ename varchar2(20));

146) Oops I forgot give the primary key constraint. Add in now.
SQL>alter table emp add primary key(empno);

147) Now increase the length of ename column to 30 characters.
SQL>alter table emp modify(ename varchar2(30));

148) Add salary column to emp table.
SQL>alter table emp add(sal number(10));

149) I want to give a validation saying that salary cannot be greater 10,000 (note give a name to this constraint)
SQL>alter table emp add constraint chk_001 check(sal<=10000);

150) For the time being I have decided that I will not impose this validation.My boss has agreed to pay more than 10,000.
SQL>again alter the table or drop constraint with alter table emp drop constraint chk_001 (or)Disable the constraint by using alter table emp modify constraint chk_001 disable;

151) My boss has changed his mind. Now he doesn’t want to pay more than 10,000.so revoke that salary constraint.
SQL>alter table emp modify constraint chk_001 enable;

152) Add column called as mgr to your emp table;
SQL>alter table emp add(mgr number(5));

153) Oh! This column should be related to empno. Give a command to add this constraint.
SQL>ALTER TABLE EMP ADD CONSTRAINT MGR_DEPT FOREIGN KEY(MGR) REFERENCES EMP(EMPNO);

154) Add deptno column to your emp table;
SQL>alter table emp add(deptno number(5));

155) This deptno column should be related to deptno column of dept table;
SQL>alter table emp add constraint dept_001 foreign key(deptno) reference dept(deptno) [deptno should be primary key];

156) Give the command to add the constraint.
SQL>alter table <table_name) add constraint <constraint_name> <constraint type>;

157) Create table called as newemp. Using single command create this table as well as get data into this table(use create table as);
SQL>create table newemp as select * from emp;
SQL>Create table called as newemp. This table should contain only
empno,ename,dname.
SQL>create table newemp as select empno,ename,dname from emp,dept where
1=2;

158) Delete the rows of employees who are working in the company for more than 2 years.
SQL>delete from emp where (sysdate-hiredate)/365>2;

159) Provide a commission(10% Comm Of Sal) to employees who are not earning any commission.
SQL>select sal*0.1 from emp where comm is null;

160) If any employee has commission his commission should be incremented by 10% of his salary.
SQL>update emp set comm=sal*.1 where comm is not null;

161) Display employee name and department name for each employee.
SQL>select empno,dname from emp,dept where emp.deptno=dept.deptno;

162)Display employee number,name and location of the department in which he is working.
SQL>select empno,ename,loc,dname from emp,dept where emp.deptno=dept.deptno;

163) Display ename,dname even if there are no employees working in a particular department(use outer join).
SQL>select ename,dname from emp,dept where emp.deptno=dept.deptno(+);

164) Display employee name and his manager name.
SQL>select p.ename,e.ename from emp e,emp p where e.empno=p.mgr;

165) Display the department name and total number of employees in each department.
SQL>select dname,count(ename) from emp,dept where emp.deptno=dept.deptno group by dname;

166)Display the department name along with total salary in each department.
SQL>select dname,sum(sal) from emp,dept where emp.deptno=dept.deptno group by dname;

167) Display itemname and total sales amount for each item.
SQL>select itemname,sum(amount) from item group by itemname;

168) Write a Query To Delete The Repeted Rows from emp table;
SQL>Delete from emp where rowid not in(select min(rowid)from emp group by ename);

169) TO DISPLAY 5 TO 7 ROWS FROM A TABLE
SQL>select ename from emp where rowid in(select rowid from emp where rownum<=7 minus select rowid from empi where rownum<5);

170) DISPLAY TOP N ROWS FROM TABLE?
SQL>SELECT * FROM
(SELECT * FROM EMP ORDER BY ENAME DESC)
WHERE ROWNUM <10;

171) DISPLAY TOP 3 SALARIES FROM EMP;
SQL>SELECT SAL FROM ( SELECT * FROM EMP ORDER BY SAL DESC ) WHERE ROWNUM <4;

172) DISPLAY 9th FROM THE EMP TABLE?
SQL>SELECT ENAME FROM EMP
WHERE ROWID=(SELECT ROWID FROM EMP WHERE ROWNUM<=10
MINUS
SELECT ROWID FROM EMP WHERE ROWNUM <10);

select second max salary from emp;
select max(sal) fromemp where sal<(select max(sal) from emp);

173) Delete the 10th record of emp table.
SQL>DELETE FROM EMP WHERE EMPNO=(SELECT EMPNO FROM EMP WHERE ROWNUM<11 MINUS
SELECT EMPNO FROM EMP WHERE ROWNUM<10);
/*