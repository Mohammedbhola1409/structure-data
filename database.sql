create table SALES_TABLE (
p_id int primary key,
p_name varchar(30),
unit_price int,
unit_sold int,
selling_date varchar(10),
selling_year int,
selling_month varchar(5),
selling_day varchar(5)
);


insert into SALES_TABLE values(1,'handbags',2000,7,'05/05/2022',2022,'may','mon');
insert into SALES_TABLE values(2,'automatic umbrella',5000,12,'10/04/2022',2022,'april','sun');
insert into SALES_TABLE values(3,'smart speaker with alexa',7000,10,'12/12/2022',2022,'dece','sat');
insert into SALES_TABLE values(4,'wireless headphones',1000,23,'07/07/2023',2023,'july','tue');
insert into SALES_TABLE values(5,'women clutch purse',1200,8,'03/05/2022',2022,'may','mon');
insert into SALES_TABLE values(6,'woman stretchable pant',1500,10,'05/10/2022',2022,'oct','sat');
insert into SALES_TABLE values(7,'sleveless vest',300,20,'12/06/2023',2023,'june','mon');
insert into SALES_TABLE values(8,'alovera handmade soap',800,25,'05/05/2022',2022,'may','sun');
insert into SALES_TABLE values(9,'thermal headspa cap',5000,4,'14/11/2022',2022,'nov','fri');
insert into SALES_TABLE values(10,'ps5 playstation',10000,8,'27/01/2023',2023,'jan','thur');
insert into SALES_TABLE values(11,'dry iron',5000,10,'05/02/2022',2022,'feb','tue');
insert into SALES_TABLE values(12,'shoe bag',2000,8,'15/12/2023',2023,'dece','mon');
insert into SALES_TABLE values(13,'measuring tap',500,20,'12/08/2022',2022,'aug','wed');
insert into SALES_TABLE values(14,'wallets_for men',200,12,'05/05/2023',2023,'may','sat');
insert into SALES_TABLE values(15,'track pants',2500,5,'05/09/2023',2023,'sep','sun');
insert into SALES_TABLE values(16,'running_shoes',3000,14,'05/12/2023',2023,'dece','tue');
insert into SALES_TABLE values(17,'situps assistant device',5000,23,'03/10/2023',2023,'oct','sat');
insert into SALES_TABLE values(18,'laptopbags',1200,5,'05/02/2022',2022,'feb','mon');
insert into SALES_TABLE values(19,'mobile holder',2000,9,'18/01/2023',2023,'jan','sat');
insert into SALES_TABLE values(20,'mushroom lamp',1500,2,'16/12/2022',2022,'dece','tue');

select * from SALES_TABLE;

alter table SALES_TABLE add transaction_amount int null;

update sales_table set
    transaction_amount = unit_price * unit_sold;

select st.*, 
dense_rank() over (partition by selling_year,selling_month order by transaction_amount desc) as dense_rank
from sales_table st 

select selling_year,selling_month from sales_table 
group by selling_year,selling_month
order by selling_year,selling_month;



