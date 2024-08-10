create table bank(
Bank_Name varchar(100) not null,
Bank_Code int primary key,
Bank_Address varchar(100) not null);
insert into bank(Bank_Name,Bank_Code,Bank_Address) values('SBI', 1001, 'Marathahalli, Banglore'),
                                                          ('HDFC', 1002, 'kharadi, pune'),
                                                          ('AXIS', 1003, 'kadapa, Andrapradesh');
## here bank table is created and inserted some dummy data ##
create table branch(
Branch_Id int primary key,
Branch_Name varchar(100) unique,
Branch_Address varchar(100) not null,
Bank_Code int,
foreign key(Bank_Code)  references bank(Bank_Code) on delete cascade);
insert into branch(Branch_Id,Branch_Name,Branch_Address,Bank_Code)values(1,'marathahalli', 'Marathahalli, Banglore',1001),
                                                                         (2, 'kharadi', 'kharadi, pune', 1002),
                                                                          (3, 'kadapa','kadapa, Andrapradesh',1003);
## here branch table is created and inserted some dummy data in branch table ##
create table customer(
Customer_ID int primary key,
Customer_Name varchar(100) not null,
cust_phoneNumber varchar(200) not null,
cust_address varchar(100) not null);
insert into customer(Customer_ID,Customer_Name,cust_phoneNumber,cust_address) values(201, 'siva', '9988776655','Marathahalli, Banglore'),
                                                                              (202,'ishu', '9955664433', 'kharadi, pune'),
                                                                              (203, 'vaishu','9955664433','kadapa, Andrapradesh');
## customer table is created and inserted some dummy data ##
create table Account(
Account_Number int primary key,
Account_Type varchar(100)  not null,
balance decimal(7,2) not null,
Branch_Id int,
foreign key(Branch_Id) references branch(Branch_Id) on update cascade);
insert into Account(Account_Number,Account_Type,balance,Branch_Id) values(2608243, 'savings', 50000.00, 1),
                                                                           (2608244,'dmat', 60000.00,2),
                                                                           (2608245,'savings', 40000.00,3);
## account table is created and inserted dummy data ##
create table Loan(
Loan_ID int primary key,
Loan_Type varchar(4) check (Loan_Type in('pl','hl')),
Amount decimal(7,2) not null,
Branch_Id int,
foreign key(Branch_Id) references branch(Branch_Id ));
insert into  Loan(Loan_ID,Loan_Type,Amount,Branch_Id) values (301, 'pl', 50000.00,1),
														     (302, 'hl', 60000.00, 2),
                                                             (303, 'hl', 70000.00,3);
## loan table is created and inserted dummy data ##
commit;
## fetching records from all the tables ##
select* from bank;
select* from branch;
select* from customer;
select*from Account;
select* from Loan;


																		