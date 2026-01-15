use master;
use MyDatabase;

-------------------------using logical opretor-------------------------

select first_name,country ,score from customers
where country = 'USA' and score >800;

select first_name,country ,score from customers
where country <>'USA' and score <800;

select first_name,country ,score from customers
where country ! = 'USA' and score >400;

-------using logical opretor ----------------

select first_name,country ,score from customers
where country = 'USA' and score >800;--using and 

select first_name,country ,score from customers
where country = 'USA' or score >800;----using or

select first_name,country ,score from customers
where not country = 'USA'  ;---using not 
select first_name,country ,score from customers
where not score >=500  ;

---------Between opretor----------------------

select*from customers
where score BETWEEN 100 AND 500;


-----------------membership opretor---------------------

select*from customers--usnig in
where country IN ('UK','Germany');

select*from customers--using not in 
where country NOT IN ('UK','Germany');


---------------using like-------------search opretor ----------------

select*from customers--before
where first_name LIKE 'M%';

select*from customers---after
where first_name LIKE '%Y';

select*from customers---in middle--
where first_name LIKE '%a%';

select*from customers;













