use sample;
select * from olist_customers_clean;

RENAME TABLE olist_customers_clean TO customers;

RENAME TABLE olist_orders_clean TO orders;

RENAME TABLE olist_order_items_clean TO order_items;

RENAME TABLE olist_products_clean TO products;

RENAME TABLE olist_payments_clean TO payments;

RENAME TABLE olist_reviews_clean TO reviews;

RENAME TABLE olist_sellers_clean TO sellers;  

                                 /* TABLES & COLUMNS */
-- customers
-- customer_id, customer_unique_id, customer_city, customer_state

-- orders
-- order_id, customer_id, order_status,
-- order_purchase_timestamp, order_delivered_customer_date,
-- order_estimated_delivery_date

-- order_items
-- order_id, product_id, seller_id, price, freight_value

-- products
-- product_id, product_category

-- payments
-- order_id, payment_type, payment_installments, payment_value

-- reviews
-- order_id, review_score, review_creation_date

-- sellers
-- seller_id, seller_city, seller_state
                                           
                                           # EDA Analysis
					#1. Which product categories generate the highest revenue?
                    
select count(*) from order_items;
select count(*) from  products;
select * from order_items oi
inner join  products p
on oi. product_id = p. product_id;
                                                            #Top 5 revenue product

with category_revenue as
(   
select p.product_category, round(sum(oi.price),2) as total_revenue
from order_items oi
inner join  products p
on oi. product_id = p. product_id
group by p.product_category
),
category_rank as
(
select product_category,total_revenue,
rank() over(order by total_revenue desc) as C_rank
from category_revenue
)
select count(*) from category_rank
where  C_rank <=5;

                                      
                    #2  Which states contribute the highest revenue?
select c.customer_state, round(sum(oi.price),2) as total_revenue
from customers c
inner join orders o 
on c.customer_id = o.customer_id
inner join order_items oi
on o.order_id = oi.order_id
group by c.customer_state
order by total_revenue desc; 

                     #3 Which sellers generate the highest sales revenue?
                     
SELECT COUNT(*) FROM order_items;
 select  s.seller_id, s.seller_state, count(distinct oi.order_id) as total_orders, count(oi.product_id) AS total_products_sold,
 round(sum(oi.price),2) AS total_revenue
 from sellers s
 inner join order_items oi
on s.seller_id = oi.seller_id
group by s.seller_id, s.seller_state
order by total_revenue desc;
                            
					#4 Which payment methods are most preferred by customers?
 with payment_summary as 
 (
 select payment_type,count(order_id) as total_orders, round(sum(payment_value), 2) as total_revenue     
 from payments
 group by payment_type
 )
 select * from payment_summary
 order by total_orders desc;

				#5 Which product categories receive the highest and lowest customer ratings?
with review_category as
(
select p.product_category, round(avg(r.review_score),2) as avg_review_score
from reviews r
inner join order_items oi
on r.order_id = oi.order_id
inner join  products p
on  oi.product_id = p.product_id
group by p.product_category
)
select product_category,avg_review_score, 
rank() over(order by avg_review_score desc) as category_rank
from review_category;               
                
                #6 Which states have the highest average customer review score?
	with s_review as
    ( 
    select c.customer_state, round(avg(review_score),2) as avg_s_review_score
    from customers c
    inner join orders o
    on o.customer_id = c.customer_id
    inner join reviews r
    on o.order_id = r.order_id
    group by c.customer_state
    )
    select customer_state,avg_s_review_score
    from s_review
    order by avg_s_review_score desc
    limit 5;
    
              #7 How long does delivery take on average?
select round(avg(datediff(order_delivered_customer_date,order_purchase_timestamp)),2) as avg_delivery_day
from orders 
where order_delivered_customer_date is not null;
           
              #8 Which sellers have the fastest average delivery time?
select s.seller_id,s.seller_state,count(distinct o.order_id) as total_orders, round(avg(datediff(order_delivered_customer_date,order_purchase_timestamp)),2) as avg_delivery_days
from sellers s
inner join order_items oi
on s.seller_id = oi.seller_id
inner join orders o
on oi.order_id = o.order_id
where order_delivered_customer_date is not null
group by s.seller_id,s.seller_state
having count(distinct o.order_id) >30
order by avg_delivery_days asc;

           
           
           #9 Who are the most valuable customers based on total spending?
 select c.customer_unique_id, round(sum(p.payment_value),2) as total_spent
 from customers c
 inner join orders o 
 on c.customer_id = o.customer_id
 inner join payments p
 on o.order_id = p.order_id
 group by c.customer_unique_id
 order by  total_spent desc
 limit 10;
           
	       #10 Which product categories have the highest freight cost relative to product price?
select p.product_category,round(avg(oi.price),2) as avg_product_price,
round (avg(oi.freight_value),2) as avg_freight_cost,
round (avg(oi.freight_value)/avg(oi.price)*100,2) as freight_precentage
from products p
inner join order_items oi
on p.product_id = oi.product_id
group by p.product_category
order by freight_precentage desc;
    
    
    
    
    
    