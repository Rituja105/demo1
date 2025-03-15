select c.customer_name,c.city,o.order_data from customers c join orders o on c.customer_id = o.customer_id where year(o.order_date) = 2023;
select o.order_id,c.customer_name,o.order_date,o.order_amount,o.payment_mode from customers c join orders o on c.customer_id = o.customer_id,where c.city = 'Mumbai';
select c.customer_name,o.order_date,sum(oi.quantity * oi.unit_price) as total_price from customers c join orders o on c.customer_id = o.customer_id join order_items oi on o.order_id = oi.order_id where o.payment_mode = 'Credit Card' group by c.customer_name, o.order_date;

2. DISTINCT 
select distinct city from customers order by city;
select distinct supplier_name  from products order by supplier_name;
select distinct payment_method from orders order by payment_method;
select distinct p.category from products p join orders o on  p.product_id = o.product_id order by p.category;
select distinct supplier_city from products order by supplier_city;

3. ORDER BY 
select * from customers order by customer_name asc;
select * from orders order bytotal_price desc;
select * from products order by price asc, category desc;
select order_id, customer_id, order_date from orders order by order_date desc;
select city, count(order_id) as total_orders from orders group by city  order by city ASC;

4. LIMIT & OFFSET 
select * from customers order by customer_name limit 10;
select * from products order by price desc limit 5;
select * from orders order by customer_id limit 10 offset 10;
select order_id, order_date, customer_id from orders where year(order_date) = 2023 order by order_date asc limit 5;
select distinct city from orders order by city limit 10 offset 10;

5.AGGREGATE FUNCTIONS 
select count(*) As total_orders from orders;
select sum(order_amount) as total_revenue from orders where payment_method = 'UPI';
select avg(price) as average_price from products;
select max(total_price) as max_order_price, min(total_price) as min_order_price from orders where year(order_date) = 2023;
select product_id, sum(quantity) as total_quantity_ordered from order_items group by product_id;

6.SET OPERATIONS 
select customer_id from orders where year(order_date) = 2022 AND customer_id in (select customer_id from customers where year(registration_date) <= 2022)
intersect
select customer_id from orders where year(order_date) = 2023 and customer_id in (select customer_id from customers where year(registration_date) <= 2022);

select product_id from orders where year(order_date) = 2022
except
select product_id from orders where year(order_date) = 2023;

select distinct supplier_city from products
except
select distinct customer_city from customers;

select distinct supplier_city as city from products
union
select distinct customer_city as city from customers;

select distinct p.product_name from products p join order_items oi on p.product_id = oi.product_id
intersect
select distinct p.product_name from products p join order_items oi on p.product_id = oi.product_id join orders o on oi.order_id = o.order_id where year(o.order_date) = 2023;












 







