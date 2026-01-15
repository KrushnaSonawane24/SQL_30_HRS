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



















