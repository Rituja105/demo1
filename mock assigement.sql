create table customers(CustomerID int,name varchar,Email varchar);
copy customers from 'G:/Customers Table.csv' delimiter ',' csv header;
Select * from customers 

create table orders(OrderID int,CustomerID int,OrderDate date);
copy orders from 'G:/orders Table.csv' delimiter ',' csv header;
select * from orders;

create table products(ProductID int,OrderID int,ProductName varchar);
copy products from 'G:/products Table.csv' delimiter ',' csv header;
select * from products;

1
select Customers.Name, Orders.OrderID, Orders.OrderDate
from Customers
inner join Orders on Customers.CustomerID = Orders.CustomerID;

2
select Orders.OrderID, Customers.Name, Products.ProductName
from Orders
inner join Customers on Orders.CustomerID = Customers.CustomerID
inner join Products on Orders.OrderID = Products.OrderID;

3
select Customers.Name, Orders.OrderID, Orders.OrderDate
from Customers
left join Orders on Customers.CustomerID = Orders.CustomerID;

4
select Orders.OrderID, Customers.Name, Orders.OrderDate
from Orders
right join Customers on Orders.CustomerID = Customers.CustomerID;

5
select Customers.Name, Orders.OrderID, Orders.OrderDate
from Customers
full join Orders on Customers.CustomerID = Orders.CustomerID;

6
select C1.Name as CustomerName, C2.Name as OrderedBy
from Customers C1
inner join Customers C2 on C1.CustomerID = C2.CustomerID;

7
select customers.Name, count(Orders.OrderID) as OrderCount
from Customers
left join Orders on customers.CustomerID = Orders.CustomerID group by Customers.Name;

8
select Customers.Name, Orders.OrderID
from Customers
inner join Orders on Customers.CustomerID = Orders.CustomerID where Customers.Name = 'Alice';

9
select Customers.Name, coalesce(Orders.OrderID, 'No Orders') as OrderID
from Customers
left join Orders on Customers.CustomerID = Orders.CustomerID;

10
select Customers.Name, Orders.OrderID, Orders.OrderDate
from Customers
join Orders on Customers.CustomerID = Orders.CustomerID;




















































































