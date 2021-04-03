create database CarRentaSystem

create table CarReg
(
CarRegno varchar(225),
Company varchar(255),
Model varchar(235),
Available varchar(215),
Primary key(CarRegno)
)
select * from CarReg


create table Customer
(
cust_id varchar(245),
cu_name varchar(235),
adress text,
mobile int,
Primary key(cust_id)
)
select * from Customer
select cu_name from Customer where cu_name like 'S%'
create table Rental
(
car_id varchar(225),
cust_id varchar(245),
fee int,
dates nvarchar(250),
Duedate nvarchar(250),
foreign key (car_id) references CarReg(CarRegno),
foreign key (cust_id) references Customer(cust_id)
)
select * from Rental

create table ReturnCar
(
car_id varchar(225),
cust_id varchar(245),
returndate nvarchar(250),
dayelap int,
fine int,
foreign key (car_id) references CarReg(CarRegno),
foreign key (cust_id) references Customer(cust_id)
)

select * from ReturnCar

select [cu_name],[Company],[Model] from [dbo].[Customer] full join [dbo].[Rental] on
[dbo].[Customer].cust_id = [dbo].[Rental].cust_id full join [dbo].[CarReg] on
[dbo].[Rental].car_id = [dbo].[CarReg].CarRegno