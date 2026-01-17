use master;
use MyDatabase;


select*from customers;


select*from orders;

-----------------inner join----------

select c.id,o.order_id,
	c.first_name,
	c.country,
	o.sales,
	c.score,
	o.order_date
from  customers as c
inner join orders as o
on c.id=o.customer_id;


------------------------left join----------------------------

select c.id,o.order_id,
	c.first_name,
	c.country,
	o.sales,
	c.score,
	o.order_date
from  customers as c
left join orders as o
on c.id=o.customer_id;

-----------------------right join----------------------

select c.id,o.order_id,
	c.first_name,
	c.country,
	o.sales,
	c.score,
	o.order_date
from  customers as c
right join orders as o
on c.id=o.customer_id;

-------------------------outer join-------------------------
select c.id,o.order_id,
	c.first_name,
	c.country,----sql return every thing ---in full join ------
	o.sales,
	c.score,
	o.order_date
from  customers as c
full join orders as o
on c.id=o.customer_id;


----------------Adhvance joins --------------------------


-----left anti join-------------


select * from customers as c
left join orders as o
on c.id=o.customer_id
where c.id is NULL;


-----------full anti join----------------

select*from customers as c 
full join orders as o 
on c.id = o.customer_id
where c.id is null or  o.customer_id is null;

--------------cross join-----------

select*from customers
cross join orders;

------------------------using salesDB data-----------

use SalesDB;

select o.OrderID,o.Sales from  Sales.Orders as o;


select *from Sales.Customers;
select *from Sales.Employees;
select *from Sales.Orders;
select *from Sales.OrdersArchive;
select *from Sales.Products;

---------task--------
select o.OrderID,
o.Sales,
c.FirstName as customerFirst_name,c.LastName  as customerlast_name,p.Product as productName,p.Price,e.FirstName as empfirst_name,e.LastName as emplast_name
from Sales.Orders as o
left join Sales.Customers as c
on o.CustomerID=c.CustomerID
left join Sales.Products as p 
on o.ProductID=p.ProductID
left join Sales.Employees as e
on o.SalesPersonID=e.EmployeeID 




