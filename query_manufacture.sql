create table manufacturing(
	product_id char(20),
	name varchar(120),
	category varchar(150),
	manufacturer varchar(160),
	price_USD int,
	stock_quantity int
)
insert into manufacturing(product_id,name,category,manufacturer,price_USD,stock_quantity)values('AB3023009','pump p300','mechanical','fluidDymanics',75,200)
select * from manufacturing
copy manufacturing from 'E:\Data Analytics\da9\manufacturing_data.csv' DELIMITER ',' csv header

select * from manufacturing

select manufacturer, count(stock_quantity)from manufacturing where category='mechanical' group by manufacturer

select category ,sum(price_USD)as sum_of_price from manufacturing where stock_quantity>200 group by category
	
select * from manufacturing
	
select name as product_name ,avg(price_USD)as avg_of_price from manufacturing where manufacturer= 'GearTech' group by name
	
select name as product_name ,max(price_USD)as max_of_price from manufacturing where manufacturer= 'ElecInnovate' group by name

select max(price_usd)from manufacturing where manufacturer='ElecInnovate'
	
select name as product_name ,min(price_USD)as min_of_price from manufacturing where manufacturer= 'ElecInnovate' group by name
	order by min(price_USD) DESC 
	
select name ,count(stock_quantity) from manufacturing 
	where stock_quantity>400
	group by name 
	having sum(stock_quantity)>800 
	
select name ,sum(price_usd) from manufacturing 
	where price_usd > 5
	group by name 
	having sum(stock_quantity)>200 

select category,avg(price_usd)as avg_of_price from manufacturing
    group by category 
	having avg(price_usd)>10
    order by avg(price_usd) DESC
    