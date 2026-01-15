
-----creating and optimizing DDL opretion and quries-----------------

CREATE TABLE persons (
id INT NOT NULL IDENTITY(1,1) , 
person_name NVARCHAR(50) NOT NULL,
birth_date  DATE ,
phone NVARCHAR(15) NOT NULL
CONSTRAINT pk_persons PRIMARY KEY (id)

);

select * from persons;


CREATE TABLE customers (
    id INT IDENTITY(1,1) PRIMARY KEY,
    first_name VARCHAR(50) NOT NULL,
    country VARCHAR(50),
    score INT
);

------------- ATER THE TABLE ---------------------

ALTER TABLE persons ----ADIING TABLE 
ADD email NVARCHAR(50) NOT NULL;

ALTER TABLE persons -----BE aware when you deleting the colums you also lose the column data in database 
DROP COLUMN email;


----------DROP TABLE --------------------

DROP TABLE table_name;

-------------------RENAME------

EXEC sp_rename "persons" ,"people";
go 
select * from people;
go 

EXEC sp_rename "people","persons";


----here DDL are complete ---------








