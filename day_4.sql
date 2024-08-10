CREATE TABLE customer_master(
    CUSTOMER_NUMBER VARCHAR(6),
    FIRSTNAME VARCHAR(30),
   
 middlename VARCHAR(30),
    lastname VARCHAR(30),
    CUSTOMER_CITY VARCHAR(15),
   
 CUSTOMER_CONTACT_NO VARCHAR(10),
    occupation VARCHAR(10),
  CUSTOMER_DATE_OF_BIRTH DATE,
   
 CONSTRAINT customer_custid_pk PRIMARY KEY (CUSTOMER_NUMBER)
); 
insert into customer_master values('C00001',	'RAMESH',	'CHANDRA',	
'SHARMA',	'DELHI',	'9543198345',	'SERVICE'	,'1976-12-06');
insert into customer_master values('C00002',	'AVINASH',	'SUNDER',	
'MINHA',	'DELHI',	'9876532109'	,'SERVICE',	'1974-10-16');
	

insert into customer_master values('C00003',	'RAHUL',	
'NULL',	'RASTOGI',	'DELHI',	'9765178901',	'STUDENT',	'1981-09-26');
	

insert into customer_master values('C00004',	'PARUL',	
'NULL',	'GANDHI',	'DELHI',	'9876532109'	,'HOUSEWIFE',
	'1976-11-03');
	

insert into customer_master values('C00005',	
'NAVEEN'	,'CHANDRA',	'AEDEKAR',	'MUMBAI',	'8976523190',	'SERVICE'	,'1976-09-19');
	

insert into customer_master 
values('C00006',	'CHITRESH',	'NULL',	'BARWE',	'MUMBAI',	'7651298321',	'STUDENT'	,'1992-11-06');
	

insert into customer_master
 values('C00007',	'AMIT'	,'KUMAR',	'BORKAR',	'MUMBAI',	'9875189761',	'STUDENT',	'1981-09-06');
	

insert into customer_master 
values('C00008',	'NISHA',	NULL,	'DAMLE',	'MUMBAI',	'7954198761',	'SERVICE',	'1975-12-03');
	

insert into customer_master 
values('C00009',	'ABHISHEK',	NULL,	'DUTTA',	'KOLKATA'	,'9856198761',	'SERVICE'	,'1973-05-22');
	

insert into customer_master
 values('C00010',	'SHANKAR'	,NULL,	'NAIR',	'CHENNAI',	'8765489076',	'SERVICE',	'1976-07-12');
 CREATE TABLE branch_master(
    branch_id VARCHAR(6),
   
 branch_name VARCHAR(30),
    branch_city VARCHAR(30),
    
CONSTRAINT branch_bid_pk PRIMARY KEY (branch_id)
);
insert into branch_master values('B00001',	'ASAF ALI ROAD','DELHI');


insert into branch_master values('B00002','NEW DELHI MAIN BRANCH','DELHI');


insert into branch_master values('B00003'	,'DELHI CANTT',	'DELHI');
	

insert into branch_master values('B00004'	,'JASOLA',	'DELHI');
	

insert into branch_master values('B00005'	,'MAHIM'	,'MUMBAI');
	

insert into branch_master  values('B00006'	,'VILE PARLE',	'MUMBAI');
	

insert into branch_master  values('B00007',	'MANDVI'	,'MUMBAI');
	

insert into branch_master  values('B00008'	,'JADAVPUR',	'KOLKATA');
	

insert into branch_master values('B00009'	,'KODAMBAKKAM',	'CHENNAI');
CREATE TABLE account_master
(account_number VARCHAR(255),
    customer_number VARCHAR(255),
   
 branch_id VARCHAR(255),
    opening_balance INT(20),
    account_opening_date DATE,
    account_type VARCHAR(10),
   
 account_status VARCHAR(10),
    PRIMARY KEY (account_number),
   FOREIGN KEY (customer_number) references customer_master(customer_number),
 
 FOREIGN KEY (branch_id) references branch_master(branch_id)
);
insert into account_master values('A00001' ,	'C00001'	,'B00001'	,1000	,'2012-12-15',	'SAVING',	'ACTIVE');


insert into account_master  values('A00002'	,'C00002'	,'B00001'	,1000	,'2012-06-12'	,'SAVING',	'ACTIVE');
	

insert into account_master  values('A00003'	,'C00003',	'B00002',	1000	,'2012-05-17'	,'SAVING',	'ACTIVE');
	

insert into account_master values('A00004'	,'C00002',	'B00005',	1000	,'2013-01-27'	,'SAVING	','ACTIVE');
	

insert into account_master  values('A00005'	,'C00006',	'B00006',	1000	,'2012-12-17'	,'SAVING','ACTIVE');
	

insert into account_master  values('A00006'	,'C00007',	'B00007',	1000	,'2010-08-12'	,'SAVING	','SUSPENDED');
	

insert into account_master values('A00007'	,'C00007',	'B00001',	1000	,'2012-10-02'	,'SAVING	','ACTIVE');
	

insert into account_master  values('A00008'	,'C00001'	,'B00003',	1000	,'2009-11-09'	,'SAVING	','TERMINATED');
	

insert into account_master values('A00009'	,'C00003',	'B00007',	1000	,'2008-11-30'	,'SAVING',	'TERMINATED');
	

insert into account_master  values('A00010'	,'C00004',	'B00002',	1000	,'2013-03-01'	,'SAVING',	'ACTIVE');
CREATE TABLE transaction_details(
    transaction_number VARCHAR(6),
   
 account_number VARCHAR(6),
    date_of_transaction DATE,
    medium_of_transaction VARCHAR(20),
   
 transaction_type VARCHAR(20),
    transaction_amount INT(7),
   
 CONSTRAINT transaction_details_tnumber_pk PRIMARY KEY (transaction_number),
   
 CONSTRAINT transaction_details_acnumber_fk FOREIGN KEY (account_number)
      
  REFERENCES account_master (account_number)
);
insert into transaction_details  values('T00001',	'A00001',	'2013-01-01',	'CHEQUE',	'DEPOSIT',	2000);


insert into transaction_details  values
('T00002'	,'A00001'	,'2013-02-01'	,'CASH'	,'WITHDRAWAL',	1000);
	

insert into transaction_details  values
('T00003',	'A00002	', '2013-01-01',	'CASH'	,'DEPOSIT',	2000);
	

insert into transaction_details  values('T00004',	'A00002',	'2013-02-01' , 'CASH'	,'DEPOSIT',	3000);
	

insert into transaction_details  values('T00005',	'A00007',	'2013-01-11',	'CASH'	,'DEPOSIT',	7000);
	

insert into transaction_details  values('T00006',	'A00007',	'2013-01-13',	'CASH'	,'DEPOSIT',	9000);
	

insert into transaction_details  values('T00007',	'A00001',	'2013-03-13',	'CASH'	,'DEPOSIT'	,4000);
	

insert into transaction_details  values('T00008',	'A00001',	'2013-03-14',	'CHEQUE'	,'DEPOSIT'	,3000);


insert into transaction_details  values('T00009',	'A00001',	'2013-03-21',	'CASH'	,'WITHDRAWAL'	,9000);
	

insert into transaction_details  values('T00010',	'A00001',	'2013-03-22',	'CASH'	,'WITHDRAWAL'	,2000);
	

insert into transaction_details  values('T00011',	'A00002',	'2013-03-25',	'CASH'	,'WITHDRAWAL'	,7000);
	

insert into transaction_details  values('T00012',	'A00007',	'2013-03-26',	'CASH'	,'WITHDRAWAL'	,2000);

create table loan_details(customer_number varchar(255),
branch_id varchar(255),
loan_amount bigint(20),
foreign key(customer_number) references customer_master(customer_number));

insert into Loan_details  values('C00001',	'B00001',	100000);
	

insert into Loan_details  values('C00002',	'B00002',	200000);
	

insert into Loan_details  values('C00009',	'B00008',	400000);
	

insert into Loan_details  values('C00010',	'B00009',	500000);
	

insert into Loan_details  values('C00001',	'B00003',	600000);
	

insert into Loan_details  values('C00002',	'B00001',	600000);




select*from Loan_details;
show  databases ;
show tables from testing_240;
show tables from day_3;
create table sampleprimarykey(id int(4) primary key, name varchar(20), address varchar(50));
insert into sampleprimarykey(id, name,address)values(3,'siva','kdp'),(4,'rama','kdp'),(3,'siva','kkd');

create table sampleunique_key(id int(4), name1 varchar(30)unique);

insert into sampleunique_key(id, name1)values(1,'siva'),(2,'rama');

create table notnull(id int(4), name1 varchar(30)not null);
insert into notnull(id, name1)values(1, null),(2,null);
select*from notnull;
select account_number, CUSTOMER_NUMBER, FIRSTNAME, middlename ,lastname,  account_opening_date
from 


create table book(booktype varchar(30) ,bookid int(5),bookname varchar(30),bookauthor varchar(30),bookprice decimal(5,2));
insert into book(booktype ,bookid,bookname,bookauthor,bookprice) values('fiction',101,'go with the flow','abrahim', 599.50),
                                                                        ('non fiction',102,'no need','silica',600.00),
                                                                        ('fiction',103, 'need', 'simha', 80.00),
                                                                        ('fiction', 105, 'more', 'doon',50.00);
        select * from book group by booktype;                                                                
select min(bookprice) from book group by booktype;
select max(bookprice) from book group by booktype;
create table emp1( empname varchar(30), deptname varchar(30), empsal decimal(7,2));
insert into emp1(empname,deptname,empsal)values('siva','hr',5000.00),('kumari','qa',5000.00),('shallow', 'admin',6000.00),('ss','admin',80.00),('rr','hr',50.00),
                                               ('tt', 'hr',40.00);
 select count(empname) from emp1  where empsal<(select avg(empsal) from emp1 group by deptname 
                                                   having deptname='hr');
           select  *from emp1  where empsal<(select avg(empsal) from emp1 group by deptname 
                                                   having deptname='hr');
                                                                                                          