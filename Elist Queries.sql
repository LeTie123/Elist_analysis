--1) What were the order counts, sales, and AOV for Macbooks sold in North America for each quarter across all years? 

with Avg_Mac_Sales as (
Select date_trunc(purchase_ts, quarter) as purcahse_quarter,
  count(distinct orders.id) as order_count,
  round(sum(orders.usd_price), 2) as sales,
  round(avg(orders.usd_price), 2) as aov
from core.orders
left join core.customers
  on orders.customer_id = customers.id
left join core.geo_lookup 
  on customers.country_code = geo_lookup.country
where region = 'NA' 
and lower(product_name) like '%macbook%'
group by 1
order by 1 desc
)

Select round(avg(order_count), 2) as avg_quarterly_count,
  round(avg(sales), 2) as avg_quarterly_sales
from Avg_Mac_Sales;

--2) For products purchased in 2022 on the website or products purchased on mobile in any year, which region has the average highest time to deliver? 


Select geo_lookup.region, 
round(avg(date_diff(order_status.delivery_ts, order_status.purchase_ts, day)), 2) as time_deliver
from core.orders
left join core.order_status
  on orders.id = order_status.order_id
left join core.customers
  on orders.customer_id = customers.id
left join core.geo_lookup 
  on customers.country_code = geo_lookup.country
where (extract(year from order_status.purchase_ts) = 2022 
and orders.purchase_platform = 'website') or orders.purchase_platform = 'mobile'
group by 1
order by 2 desc;


--3) What was the refund rate and refund count for each product overall? 


Select distinct(product_name)
from core.orders;

Select case when product_name = '27in"" 4k gaming monitor' then '27in 4K gaming monitor' else product_name end as products_cleaned,
round(avg(case when refund_ts is null then 0 else 1 end), 2) as refund_rate,
sum(case when refund_ts is null then 0 else 1 end) as refund_count
from core.orders
left join core.order_status
  on orders.id = order_status.order_id
group by 1;


--4) Within each region, what is the most popular product? 

With total as (
Select region,
  product_name,
  count(distinct orders.id) as total_orders
from core.orders
left join core.customers
  on orders.customer_id = customers.id
left join core.geo_lookup
  on customers.country_code = geo_lookup.country
group by 1,2
order by 1 desc),

ranking as (
Select *,
row_number() over(partition by region order by total_orders desc) as order_ranking
from total
order by 4)

Select *
from ranking
where order_ranking = 1;




--5) How does the time to make a purchase differ between loyalty customers vs. non-loyalty customers? 

Select customers.loyalty_program,
  round(avg(date_diff(purchase_ts, created_on, day)), 2) as days_to_purchase,
  round(avg(date_diff(purchase_ts, created_on, month)), 2) as months_to_purchase,
from core.orders
left join core.customers
  on orders.customer_id = customers.id
  where loyalty_program is not null
group by 1;
