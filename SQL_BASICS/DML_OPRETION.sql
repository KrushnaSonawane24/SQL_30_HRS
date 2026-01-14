
-----creating and optimizing DML opretion and quries-----------------

use master ;

use mydatabase;

---------------insert into customer -----------------

CREATE TABLE customers (
    id INT IDENTITY(1,1) PRIMARY KEY,
    first_name VARCHAR(50) NOT NULL,
    country VARCHAR(50),
    score INT
);



INSERT INTO customers 
VALUES
('Jossef','Germany',350),
('Kevin','USA',900),
('Mary'	,'USA',750),
('Mark','Germany',500),
('Anna'	,'USA',0);
 
select*from customers;
select distinct first_name,country,score from customers;

----insert data from customer into person-----

INSERT INTO persons
SELECT  first_name,NULL,'Unknown'
FROM customers;

select*from persons

select distinct person_name from persons

-----------------UPDATE---------------

UPDATE customers

set  score= 350

WHERE id = 5 ;

---uoadate specific string value 
UPDATE customers
SET country = 'UK'

WHERE id = 5;

--update multiple value 
UPDATE customers 
SET score = 400

WHERE score = 350;


SELECT*FROM customers;

------------------------------DELETE--------------------------

DELETE customers 
where id > 5;

TRUNCATE TABLE persons;





























