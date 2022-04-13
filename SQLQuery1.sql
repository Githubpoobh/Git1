Create Table A (Aid int, Name varchar(20)) 
Create Table B (Bid int, Name varchar(20),Aid int)
Create Table C (Cid int, Name varchar(20),Bid int)

insert Into A values(1,'Sam')
insert Into A values(2,'tom')
insert Into A values(3,'harry')
insert Into A values(4,'katich')
insert Into A values(5,'kate')

insert Into B values(11,'harry',3) 
insert Into B values(12,'katich',4)
insert Into B values(13,'kate',5)
insert Into B values(14,'mate',6)
insert Into B values(15,'sat',7) 

insert Into C values(21,'harry',13) 
insert Into C values(22,'katich',14)
insert Into C values(23,'kate',15)
insert Into C values(24,'mate',16) 
insert Into C values(25,'sat',17)

select *from A;
select * from B;
select * from C;

---A join B (select * from table 1join table 2on tabel1.col=table2.col

select * from A inner join B on A.aid=B.aid; --- to show all table 
select A.aid from A inner join b on A.aid=B.aid;----want aid from tabel 1
select a.aid ,b.name from A inner join b on a.aid=b.aid;
select a.aid, a.name,b.name from a inner join b on a.aid=b.aid;--- to show perticular column

---left join
select * from A left join b on A.aid=B.aid;

select a.aid, a.name from a left join b on a.aid=b.aid;
---right join
select * from a right join b on a.aid=b.aid;
select a.aid, a.name from A right join b on a.aid=b.aid;
select b.bid, b.name ,b.aid from a right join b on A.aid=b.aid;

A.aid=B.aid    B.bid=C.bid    A=C

select * from a join b on a.aid=b.aid join c on b.bid=c.bid;---joined 3 tables A,B,C

select * from a left join b on a.aid=b.aid left join c on b.bid=c.bid;
select * from a right join b on a.aid=b.bid right join c on b.bid=c.bid;

----full join

select * from a full join b on a.aid=b.aid;


select * from A left join b on A .Aid=B.Aid;
select A.Aid from A inner join b on A .Aid=B.Aid;
select A.Aid, A.name,B.name from A inner join b on A .Aid=B.Aid;

select * from a join b on a.aid=b.aid join c on b.bid=c.bid;
select* from a full join b on a.aid=b.aid;
select * from a join b on a.aid=b.aid join c on b.bid=c.bid;----join D on c.cid=d.cid

drop table A;


create table EMP_new (id int, name varchar (10),Company varchar (10),Work varchar (10));
insert into EMP_new values (1,'Amit','Info','pune')
insert into EMP_new values (2,'Puja','Tcs','Mumbai')
insert into EMP_new values (3,'Poonam','Tech','Pune')
insert into EMP_new values (4,'Abhi','Logic','Nagpur')
insert into EMP_new values (5,'Kirti','Lim','Nagar')

select * from EMP_new
select * from job

create table Job (salary int,base varchar (10),id int)
insert into job values (10000,'Pune',1)
insert into job values (20000,'Mumbai',3)
insert into job values (30000,'Nagpur',4)
insert into job values (40000,'Pune',5)
insert into job values (35000,'Nagar',2)
select * from job
select * from Emp_new join job on emp_new.id=job.id;
select * from Emp_new,job where emp_new.id=job.id;------equi join put , and use where 
select * from Emp_new,job where emp_new.id=job.id and emp_new.work=job.base;
 -----cross join------multiply tables 


 select * from A cross join B

 select * from emp_new, job where emp_new.id=job.id;

 select* from emp_new, job where emp_new.id=job.id and emp_new.work=job.base;
 select * from emp_new cross join job;
 ---- self join.... we have only one table and we need to join in that one...
 create table SELF_TEST_EMP(EID int, ENAME varchar(20),ManagerID varchar(20))

insert into SELF_TEST_EMP values(1,'Shivam',2)
insert into SELF_TEST_EMP values(2,'krishna',4)
insert into SELF_TEST_EMP values(3,'meera',NULL)
insert into SELF_TEST_EMP values(4,'radha',2)
insert into SELF_TEST_EMP values(5,'bali',1)

select * from self_test_emp;
select * from self_test_emp as t1, self_test_emp as t2 where t1.managerid=t2.eid;
select t1.eid,t1.ename from self_test_emp as t1, self_test_emp as t2 where t1.managerid=t2.eid;

-----4 march 2022----
---cte common table explanation--with CTE(table_name)as
                                      CTE query
									  Select*from CTE(table_name) where=condition----syntex
with new_salary as
select*,dense_rank()over (order by salary desc)as new_dense_rank from study)
select*from new_salary where new_dense_rank=2;

with new_salary as
select*,row_number ()over (order by salary desc)as new_dense_rank from study)
select*from new_salary where new_dense_rank=2;----complete highest salary

with new_salary as
select*,dense_rank()over (partition by dept order by salary desc)as new_dense_rank from study)
select*from new_salary where new_dense_rank=2;----------dept wise 2nd highest salary

create table over_Test(EMPID int, FirstName varchar(20),Gender varchar(2),salary int)
insert into over_Test values(1,'Mohini','F',1000)
insert into over_Test values(2,'Rohit','M',2000)
insert into over_Test values(3,'Amit','M',4000)
insert into over_Test values(4,'Sonal','F',5000) 
insert into over_Test values(5,'Minal','F',6000)
insert into over_Test values(6,'Amar','M',3600) 
insert into over_Test values(7,'Shital','F',4500) 
insert into over_Test values(8,'Sohil','M',6000) 
insert into over_Test values(9,'praveen','F',9000)
insert into over_Test values(10,'Mithali','F',9000)
insert into over_Test values(11,'seema','F',9000)
insert into over_Test values(12,'meena','F',10000)
select * from over_Test

select gender, max(salary) from over_test


----------------------------------------------------------------
--server functions
---1.upper
select upper('class');---shows data in capial letters
select*,upper (name) from employee;
select name,UPPER(name) as new_name from employee;

----2. lower
select lower('class');---shows data in capial letters
select*,lower (name) from employee;
select name,lower(name) as new_name from employee; 
--INITCAP---executes in oracale not inssms

----3 Datalength
select *,len(name)from employee;
---4 reverse
select*,reverse(name)from employee;
select reverse('pooja');---if we dont have table

---5.Replicate

select replicate('class',4); 
select*,replicate (name,4)from employee;

---6.concat---2 columns in one time

select name,name+''+dep as new from employee;
select *, concat(name,'',dep)as new from employee;
select upper ('pooja');
select lower ('pooja')
select reverse('pooja')
select replicate ('pooja',2)
select len('pooja');
select concat('pooja,'','mech');

































