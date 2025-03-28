CREATE schema CARRENTAL
use CARRENTALsasi

show tables
desc vehicle

alter table vehicle 
change dailyRate dailyRate int

alter table vehicle 
change engineCapacity engineCapacity int

desc payment
alter table payment
change lease lease_id int

desc customer
alter table customer 
add constraint unique (phone)
alter table customer 
add constraint unique (email)
alter table customer
modify firstname varchar(50) not null
alter table customer
modify lastname varchar(50) not null

desc lease
alter table lease 
add constraint lstype check(leasetype in('Daily','Monthly'))

insert into lease values(1,1,1,'2025-03-25','2025-03-29','Daily')

alter table vehicle
add constraint check(status in('available','notavailable'))	 

desc vehicle
desc lease
desc payment
desc customer

select * from customer

ALTER TABLE lease
DROP CONSTRAINT lease_chk_1;

desc payment
select * from lease









