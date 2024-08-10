create table bank(
Bank_Name varchar(100) not null,
Bank_Code int primary key,
Bank_Address varchar(100) not null);
insert into bank(Bank_Name,Bank_Code,Bank_Address) values('SBI', 1001, 'Marathahalli, Banglore'),
                                                          ('HDFC', 1002, 'kharadi, pune'),
                                                          ('AXIS', 1003, 'kadapa, Andrapradesh');
create table branch(
Branch_Id int primary key,
Branch_Name varchar(100) unique,
Branch_Address varchar(100) not null,
Bank_Code int,
foreign key(Bank_Code)  references bank(Bank_Code) on delete cascade);
insert into branch(Branch_Id,Branch_Name,Branch_Address,Bank_Code)values(1,'marathahalli', 'Marathahalli, Banglore',1001),
                                                                         (2, 'kharadi', 'kharadi, pune', 1002),
                                                                          (3, 'kadapa','kadapa, Andrapradesh',1003);
create table customer(
Customer_ID int primary key,
Customer_Name varchar(100) not null,
cust_phoneNumber varchar(200) not null,
cust_address varchar(100) not null);
insert into customer(Customer_ID,Customer_Name,cust_phoneNumber,cust_address)values