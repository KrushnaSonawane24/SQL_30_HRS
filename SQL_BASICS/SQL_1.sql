use master ; 
 use MyDatabase;

 ----- comment 
 /*this also multi line comment */


 ---retrive all cust data 
 select * from customers;
 select * from orders;

 --select only required colums 
 select first_name , score,country from customers ;
 go 

 ---select where condition
 select customer_id ,sales 
 from orders
 where sales < 20 ;


 go 
  --- select using ordered by 
 select id,first_name,score
 from customers
 order by score desc,id asc ;
 select * from customers;

 ----select using orderd and limit 

 select top 3 score,first_name  from customers
 order by score asc ;




 ----------Group by to find total score of a country  --------

select country , sum(score ) as total_score, count (id ) as total_cust  
from customers	
group by country;


select country , sum(score) as total_score 
from customers 
group by country ;


-----------------use HAVING ------------------

select country , AVG (score) as avg_socre 
from customers
where score !=0
group by country 
having AVG(score) > 425 ;

------------------------------- use DISTINCT-----------------

select distinct country 
from customers
;

 ----------using oder and top -------------

 select* from orders;

 select top 2 * from orders
 order by order_date desc;















  