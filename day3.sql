use day_3;
select pow(3,2);
select abs(-2);
select sqrt(4);
select repeat(rand(),5);
select rand();
select truncate(100.6567,2);
select truncate( rand(),2);
select pi() as pival;
select truncate(pi(),3);
select floor(9.1);
select round(9.5);
select length('hello');
select truncate(9999.9,0);
select truncate(99999.98,0);
select substr('hello',2);
select substr('hellosai', 2,5);
create table emp2( emp_first varchar(20) , emp_last varchar(20), emp_city varchar (20));
insert into emp2(emp_first , emp_last,emp_city) values('siva','kumari','kadapa'),
                                                      ('sudham','ishu','bnglr'),
                                                      ('siva','sai','pune');
select* from emp2;
select concat(emp_first,emp_last) from emp2;
select emp_first from emp2 where emp_first like'a%';
select concat(emp_city,'city') from emp2 where emp_city='pune';

select concat_ws("***",emp_first,emp_last,emp_city) from emp2 where emp_first='siva';
create table emp3(empname varchar(20), empsal decimal(7,2));
insert into emp3(empname,empsal)values('siva',5000.00),
                                      ('sai',9000.678),
									('ram', 40000.99);
select truncate(empsal,2) from emp3;
select truncate(avg(empsal),2) from emp3;
select repeat( truncate( rand(),2),10);
drop table emp1;
flashback table emp1 to before drop;
create table orders(oid int , ordte date, ds varchar(30));
insert into orders(oid , ordte, ds)values(2,'2224-08-06','nd'),(21,'2024-08-07','d'),(45,'2024-07-09','nd'),(5,'2024-08-06','d'),(9,'2024-07-06','d'),
                                               (7,'2024-10-08','d');
create table items(itemid int(2),itname varchar(20), itemprice decimal(3,2) );
    insert into items(itemid,itname,itemprice)values(1,'pic frame',45),(2,'pen',67.2),(5,'pencil',21),(7,'rubber',34),(9,'cutter',23),(21, 'measuring table',78),
													(45,'notebook',25),(1,'pic',45);
                                                    commit;
				select itemid,itname,ds
                from items join orders
                on itemid=oid;
                select distinct oid from orders;
                select itemid, itname, ds,oid
                from items left join orders
                on itemid=oid;
                 select itemid, itname, ds,oid
                from items right join orders
                on itemid=oid;
                
	create table delivary(delboy varchar(20), did int ,feedback varchar(20));
     insert into delivary(delboy,did,feedback)values('user1',45,'good'),('user2',9,'bad'),('user3',6,'normal');
     select itemid,itname,ds,did
	 from items join orders
     on itemid=oid
     join delivary
     on oid=did;
     select ds
	 from items join orders
     on itemid=oid where itemid=21;
     select itemid,ds
     from items join orders
     on itemid=oid where ds='nd';
     select count(ds)
     from items join orders
     on itemid=oid where ds !='d';
     select itemid,itname
     from items join orders
     on itemid=oid where ds='d';
     select *, count(*)
     from orders 
     group by oid;
     select * from emp3;
     select * from emp3 group by empsal having empname='siva';
     select distinct(empsal) from emp3;
     select itemid from items union select oid from orders;
     select itemid from items;
     select oid from orders;
      select itemid from items union all select oid from orders;
                                                    