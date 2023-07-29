--buiseness requirement or usecase
-- Generate a report to identify the product_catogory and rank them based on no_sell monthly basis from product history table 
--approches
--create one product table
--product table contain columns 1.P_id (int),2.P_name (varchar),3.P_catogory (varchar),4.p_brand(varchar),5.selling_date(varchar),6.no_sell(int),7.selling_year(int),8.selling_month(varchar),8.selling_day(varchar)
--insert the data in every heading column 20 rows in each column
--
--current table and history table


CREATE TABLE PRODUCT(
    P_Id varchar(5) PRIMARY KEY, 
	P_NAME VARCHAR(40), 
	P_Catogory VARCHAR(35), 
	P_Brand VARCHAR(35), 
	selling_date VARCHAR(20), 
	No_sell INT
);
SELECT * FROM PRODUCT;
alter table PRODUCT add selling_day varchar(10);
alter table PRODUCT add selling_month varchar(10);
alter table PRODUCT add selling_year int;
insert into PRODUCT values(1,'handbags','outdoors','vismiintrend','05/05/2022',NULL,'may',2022,'mon');
insert into PRODUCT values(2,'umbrella automatic open','outdoors','voltonix','10/04/2022',NULL,'april',2022,'sun');
insert into PRODUCT values(3,'smart speaker with alexa','home','echo dot','12/11/2022',NULL,'dece',2022,'sat');
insert into PRODUCT values(4,'wireless headphones','home','boAt','05/05/2023',NULL,'july',2022,'tue');
insert into PRODUCT values(5,'women clutch purse','outdoors','mac lawrence','05/05/2023',NULL,'may',2022,'mon');
insert into PRODUCT values(6,'woman stretchable pant','outdoors','graca','05/05/2023',NULL,'oct',2022,'sat');
insert into PRODUCT values(7,'sleveless vest','personal care','jockey','05/05/2023',NULL,'june',2022,'mon');
insert into PRODUCT values(8,'alovera handmade soap','healthcare','khadi natural','05/05/2023',NULL,'may',2022,'sun');
insert into PRODUCT values(9,'thermal headspa cap','healthcare','theodore','05/05/2023',NULL,'nov',2022,'fri');
insert into PRODUCT values(10,'ps5 playstation','toys & games','sony','05/05/2023',NULL,'jan',2023,'thur');
insert into PRODUCT values(11,'dry iron','household','philips','05/05/2023',NULL,'feb',2022,'tue');
insert into PRODUCT values(12,'shoe bag','travel accessories','boldfit','05/05/2023',NULL,'dece',2022,'mon');
insert into PRODUCT values(13,'measuring tap','household','stanley','05/05/2023',NULL,'aug',2022,'wed');
insert into PRODUCT values(14,'wallets_for men','outdoors','hornbull','05/05/2023',NULL,'may',2023,'sat');
insert into PRODUCT values(15,'track pants','outdoors','mark_louiis','05/05/2023',NULL,'sep',2022,'sun');
insert into PRODUCT values(16,'running_shoes','outdoors','bourge mens loire','05/05/2023',NULL,'dece',2022,'tue');
insert into PRODUCT values(17,'situps assistant device','toys&games','relemtra','05/05/2023',NULL,'oct',2022,'sat');
insert into PRODUCT values(18,'laptopbags','outdoors','cosmus','05/05/2023',NULL,'feb',2022,'mon');
insert into PRODUCT values(19,'mobile holder','personal care','xtore','05/05/2023',NULL,'jan',2023,'sat');
insert into PRODUCT values(20,'mushroom lamp','household','everything imported','05/05/2023',NULL,'dece',2023,'tue');


update PRODUCT set selling_month='april',selling_year=2023,selling_day='fri' where P_Id = 1;

select * from PRODUCT order by selling_year asc;

select count(P_Id),P_catogory from PRODUCT GROUP BY P_catogory order by (P_Id) asc;

SELECT COUNT(P_ID) FROM PRODUCT WHERE SELLING_YEAR = 2022;
SELECT COUNT(P_CATOGORY) FROM PRODUCT ORDER BY
SELECT * FROM PRODUCT;

SELECT SELLING_YEAR,SELLING_MONTH,P_CATOGORY,NO_SELL FROM PRODUCT GROUP BY SELLING_YEAR,SELLING_MONTH,NO_SELL ORDER BY SELLING_YEAR,SELLING_MONTH,NO_SELL;

UPDATE PRODUCT SET NO_SELL = 12 WHERE P_ID = 20;

--IMPORTANT QUERY IT WORKS SUCCESSFULLY--

SELECT SELLING_YEAR,SELLING_MONTH,P_CATOGORY,NO_SELL,DENSE_RANK() OVER (PARTITION BY SELLING_YEAR,SELLING_MONTH ORDER BY NO_SELL DESC) AS "RANK" FROM PRODUCT GROUP BY SELLING_YEAR,SELLING_MONTH,P_CATOGORY,NO_SELL ORDER BY SELLING_YEAR,SELLING_MONTH,P_CATOGORY,NO_SELL;

--IMPORTANT QUERY IT WORKS SUCCESSFULLY--

SELECT SELLING_YEAR,SELLING_MONTH,P_CATOGORY,NO_SELL,DENSE_RANK() OVER (PARTITION BY SELLING_YEAR,SELLING_MONTH ORDER BY NO_SELL DESC) AS "RANK" FROM PRODUCT GROUP BY SELLING_YEAR,SELLING_MONTH,NO_SELL,P_CATOGORY ORDER BY SELLING_YEAR,SELLING_MONTH,NO_SELL DESC,P_CATOGORY;
