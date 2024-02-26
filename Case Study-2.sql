--------------------------------Module 2 ----------------------------------------------

create database mod_assignment

use mod_assignment

--1.Create a customer table which comprises of these columns – ‘customer_id’, ‘first_name’,
--‘last_name’, ‘email’, ‘address’, ‘city’,’state’,’zip’

create table  customer (
Customer_id	 int ,
First_name	varchar(20),
Last_name	varchar(20),
Email	 varchar(20),
address	  varchar(20),
City	  varchar(20),
State 	  varchar(20),
Zip		  int
)

select * from customer

--2.Insert 5 new records into the table

  insert into customer values
  (6,'Gourav','Singh','rohan100@gmail.com','1st cross','San Jose','USA',623478)
  (2, 'Shyam', 'Jethmalani', 'Shyamjeth@gmail.com', 'Tedhi Puliya', 'Lucknow', 'Uttar Pradesh', 119923),(3, 'Ram', 'Lohiya', 'Ramlohiya@gmail.com', 'Godauliya', 'Varanasi', 'Uttar Pradesh', 221010),(4, 'Shubham', 'Yadav', 'Shubh.y@gmail.com', 'Mahadevpura', 'Bangalore', 'Karnataka', 225698),(5, 'Aryaman', 'Singh', 'aryamans@gmail.com', 'Thane', 'Mumbai', 'Maharashtra', 400605)


--3.Select only the ‘first_name’ & ‘last_name’ columns from the customer table

Select First_name,Last_name from customer

--4.Select those records where ‘first_name’ starts with “G” and city is ‘San Jose’

  Select * from customer where First_name like 'G%'	 and City='San Jose'



  -------------------------------Module 3-------------------------------------------

--1.Create an ‘Orders’ table which comprises of these columns – 
--‘order_id’, ‘order_date’, ‘amount’, ‘customer_id’

 Create table Orders
 (Order_id int,order_date date,amount int,customer_id int)

 insert into Orders values
 --(1,'10/13/2022',20000,5),
  (2,'2022/12/15',28000,4),
  (3,'2023/1/5',48000,1),
  (4,'2023/1/12',2000,2),
  (5,'2023/02/10',60000,7),
  (6,'2023/03/28',56000,8),
  (7,'2023/03/15',16000,6),
  (8,'2023/04/29',89000,3)

  select * from Orders

--2.Make an inner join on ‘Customer’ & ‘Order’ tables on the ‘customer_id’ column 

Select C.First_name,C.Last_name,C.Email,O.order_date,O.amount,C.Customer_id,O.Order_id
from customer C
inner join
Orders O
on C.Customer_id=O.customer_id


--3.Make left and right joins on ‘Customer’ & ‘Order’ tables on the ‘customer_id’ column
 
 --Left join
 Select C.First_name,C.Last_name,C.Email,O.order_date,O.amount,C.Customer_id,O.Order_id
from customer C 
Left join
Orders O
on C.Customer_id=O.customer_id

--Right join
Select C.First_name,C.Last_name,C.Email,O.order_date,O.amount,C.Customer_id,O.Order_id
from customer C
Right join
Orders O
on C.Customer_id=O.customer_id


--4.Update the ‘Orders’ table, set the amount to be 100 where ‘customer_id’ is 3

  update  Orders set  amount= 100
  where customer_id= 3


  -------------------------------Module 4----------------------------------------------

 -- 1.Use the inbuilt functions and find the minimum, maximum and average amount
 --from the orders table

 Select MIN(Amount) as Min_Amount,MAX(amount) as Max_amount,AVG(amount) as AVG_amount
 from Orders

--2.Create a user-defined function, which will multiply the given number with 10
/*
Syntax -- Scaller UDF

Create function function_name (@para datatype)
returns datatype
as
begin
	Sql query
end
 */

--Int datatype

Create function	Multen (@a int)
returns int
as
begin
	declare @result int

	Set @result= @a*10

	return @result
end


select dbo.multen(5)
select dbo.multen(15)

----------------------------------Practice -------------------------------------------
--character datatype

Create function add_string(@a varchar(20),@b varchar(20))
returns varchar(20)
as
begin
	declare @result varchar(20)
	set @result=@a+@b
	return @result
end

select dbo.add_string('Intell','ipaat')

select dbo.add_string('Suj','eet')


---Tabular UDF

create function tab_mul (@a int)
returns table
as
return
Select * ,(amount*@a) new_amount from Orders


Select * from dbo.tab_mul(10)


--------------------------------------------------------------------------------------

--Use the case statement to check if 100 is less than 200, greater than 200 
--or equal to 2oo and print the corresponding value

Select 
case
	when 100>200 then '100 is greater than 200'
	when 100<200 then '100 is smaller than 200'
	else '100 is equal to 200'
end

----------------------------------

Select 
case
	when 100>100 then '100 is greater than 100'
	when 100<100 then '100 is smaller than 100'
	else '100 is equal to 100'
end

Select *,
case
	   when amount>50000 then 'Order amount is High'
	   when amount>30000 then 'Order amount is good'
	   when amount>10000 then 'Order amount is fine'
	   when amount between 1000 and 10000  then 'Order amount is average'
	   when amount <1000 then 'Order amount is below average'	   	   
end	Review
from Orders

