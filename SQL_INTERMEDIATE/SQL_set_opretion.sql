---here set opretion------

use master;

use SalesDB;

---------------------using union-------------------

select c.FirstName,c.LastName
from Sales.Customers as c
union all
select e.FirstName,e.LastName
from sales.Employees as e