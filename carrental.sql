create database carrentalsasi
use carrentalsasi
show tables
create table vehicle(
vehicleID INT PRIMARY KEY,
    make VARCHAR(50),
    model VARCHAR(50),
    year INT,
    dailyRate DECIMAL(10, 2),
    status VARCHAR(20),
    passengerCapacity INT,
    engineCapacity DECIMAL(10, 2)
);

create table Customer(
customerid int primary key,
firstname varchar(50),
lastname varchar(50),
email varchar(50),
phone varchar(15)
);

create table lease(
leaseid int primary key,
customerid int,
vehicleid int,
startdate date,
enddate date,
leasetype varchar(50)
);

alter table lease
change type leasetype varchar(50)

desc lease


);

create table payment(
paymentid int primary key,
leaseidname int,
paymentdate date,
amount int,
foreign key (leaseidname) references lease(leaseid)
);
show tablescustomercustomertable
drop table customertable
insert into customer(customerid, firstname, lastname, email, phone)
values
(1,'John', 'Doe', 'john.doe@example.com', '9876543210'),
(2,'Alice', 'Smith', 'alice.smith@example.com', '9123456789'),
(3,'Bob', 'Johnson', 'bob.johnson@example.com', '9234567890'),
(4,'Emily', 'Davis', 'emily.davis@example.com', '9345678901'),
(5,'Michael', 'Brown', 'michael.brown@example.com', '9456789012'),
(6,'Sarah', 'Wilson', 'sarah.wilson@example.com', '9567890123'),
(7,'David', 'Martinez', 'david.martinez@example.com', '9678901234'),
(8,'Laura', 'Taylor', 'laura.taylor@example.com', '9789012345'),
(9,'James', 'Anderson', 'james.anderson@example.com', '9890123456'),
(10,'Olivia', 'Thomas', 'olivia.thomas@example.com', '9901234567');

insert into lease(leaseid, customerid, vehicleid, startdate, enddate, leasetype)
values
(1, 1, 1, '2025-03-25', '2025-03-30', 'Daily'),
(2, 2,2, '2025-03-20', '2025-04-20', 'Monthly'),
(3, 3,3, '2025-03-27', '2025-04-02', 'Daily'),
(4, 4,4, '2025-04-01', '2025-04-10', 'Daily'),
(5, 5,5, '2025-03-15', '2025-04-15', 'Monthly'),
(6, 6,6, '2025-04-05', '2025-04-12', 'Daily'),
(7, 7,7, '2025-04-02', '2025-05-02', 'Monthly'),
(8, 8,8, '2025-04-08', '2025-04-18', 'Daily'),
(9, 9,9, '2025-04-10', '2025-05-10', 'Monthly'),
(10, 10,10, '2025-04-12', '2025-04-20', 'Daily');

insert into payment(paymentid, lease_id, paymentdate, amount)
values
(11,1, '2025-03-25', 2500),
(12,2, '2025-03-20', 1350),
(13,3, '2025-03-27', 420),
(14,4, '2025-04-01', 500),
(15,5, '2025-03-15', 1600),
(16,6, '2025-04-05', 650),
(17,7, '2025-04-02', 2000),
(18,8, '2025-04-08', 750),
(19,9, '2025-04-10', 1750),
(20,10, '2025-04-12', 900);

alter table lease
add foreign key (customerid) references customer(customerid);

alter table lease
add foreign key (vehicleid) references vehicle(vehicleid)

insert into vehicle(vehicleid, make, model, year, dailyrate,status,passengercapacity, enginecapacity) values
(1,'Toyota', 'Camry', 2022, 50, 'available', 5, 2000),
(2,'Honda', 'Civic', 2021, 40, 'notAvailable', 5, 1000),
(3,'Ford', 'Explorer', 2023, 70, 'available', 7, 3000),
(4,'Chevrolet', 'Malibu', 2020, 48, 'available', 5, 2000),
(5,'Nissan', 'Altima', 2021, 520, 'notAvailable', 5, 2000),
(6,'BMW', 'X5', 2022, 900, 'available', 5, 3000),
(7,'Mercedes', 'C-Class', 2023, 900, 'available', 4, 2000),
(8,'Audi', 'Q5', 2020, 850, 'notAvailable', 5, 2000),
(9,'Kia', 'Sorento', 2021, 600, 'available', 7, 2000),
(10,'Hyundai', 'Tucson', 2022, 500, 'available', 5, 2000);

select * from payment

 
drop table carrental


