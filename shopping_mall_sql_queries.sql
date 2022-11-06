show tables from shopping;
use shopping;

select * from  shopping.superstore
limit 10;

#total sales by region
select region,sum(sales) as total_sales from shopping.superstore
group by 1;

# total_sales by shipmode
select distinct(ship_mode),sum(sales) as total_sales from shopping.superstore
group by 1;

#total orders and total_Sales by state

select distinct(State),count(*) as total_orders,sum(Sales) as total_sales from shopping.superstore
group by 1;

#top_subcategory_order_by highest sales

select distinct(`Sub-Category`),count(*) as total_sales_count from shopping.superstore
group by 1
order by 2 desc;


#top5_and_least_5_profit_City_wise

(
select city,sum(Sales) as total_Sales from  shopping.superstore
group by 1
order by 2 desc
limit 5)
UNION
(
select city,sum(Sales) as total_Sales from  shopping.superstore
group by 1
order by 2 asc
limit 5)




