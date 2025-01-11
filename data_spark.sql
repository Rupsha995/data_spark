
CREATE USER 'sha2user'@'localhost'
IDENTIFIED WITH caching_sha2_password BY 'root';
select*from prime_tab;
select * from topsal_table;
select * from sal_group_table;
select * from sales_table;
-- analysis based on customer table --
select * from cust_tab;
select Gender,count(Gender) "Count based gender" from cust_tab
group by Gender;
select continent,count(Continent)"count based continent" from cust_tab
group by Continent;
select state,count(state)"count based continent" from cust_tab
group by state
order by count(state) desc;

-- analysis based on sales table ---

select * from sal_table;
select brand ,count(brand) "count by brand" from sal_table
group by brand
order by count(brand) desc;
select color,count(color) "count by color" from sal_table
group by color
order by count(color) desc;
select Product_Name as Top_Product, product_counts,category,sub category from sal_table 
order by  Product_Counts desc;

alter table sal_table modify Product_Counts int;
alter table sal_table modify Unit_cost decimal(10,2);
select Unit_cost from sal_table;
alter table sal_table modify Unit_prize decimal(10,2);
select SUM(Unit_prize - unit_cost) "total profit" from sal_table;
-- analysis based on store ---
select * from stor_table;
select country,state,square_meters from stor_table
order by square_meters desc;

---- analysis based customers--
 
select * from prime_tab;
select name,country,count_of_products  from prime_tab
order by count_of_products desc;
select name,country,gender,birthday,timestampdiff
(year,birthday,CURRENT_DATE())"age",count_of_products from prime_tab;
select name,country,gender,birthday,timestampdiff
(year,birthday,CURRENT_DATE())"age",count_of_products from prime_tab
where timestampdiff
(year,birthday,CURRENT_DATE()) between 20 and 30;
select name,country,gender,birthday,timestampdiff
(year,birthday,CURRENT_DATE())"age",count_of_products from prime_tab
where timestampdiff
(year,birthday,CURRENT_DATE()) between 30 and 40;
select name,country,gender,birthday,timestampdiff
(year,birthday,CURRENT_DATE())"age",count_of_products from prime_tab
where timestampdiff
(year,birthday,CURRENT_DATE()) > 40;

















