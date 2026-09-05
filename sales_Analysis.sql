Select * from retail_sales; 
-- Find sales data of 2022-11-05 --
select * from retail_sales where sale_date = '2022-11-05';

-- Write a SQL query to retrieve all transactions where the category is 'Clothing' and the quantity sold is more than 4 in the month of Nov-2022:
Select * from retail_sales
where category ='Clothing' and quantity >= 4 and sale_date >= '2022-11-01' And sale_date < '2022-12-01';

-- Write a SQL query to calculate the total sales (total_sale) for each category.:--

Select category , sum(total_sale) as net_Sale, Count(*) as total_order from retail_sales group by category;

-- Write a SQL query to find the average age of customers who purchased items from the 'Beauty' category.

Select round(avg(age),2) as average from retail_sales where category ='Beauty';

-- Write a SQL query to find all transactions where the total_sale is greater than 1000.:
 
 Select * from retail_sales where total_sale >='1000' ;
 
 -- Write a SQL query to find the total number of transactions (transaction_id) made by each gender in  each category.
 
 Select distinct Count(transactions_id) as Number_of_transaction  , category, gender   from retail_sales group by category , gender;
 
 -- Write a SQL query to calculate the average sale for each month. Find out best selling month in each year:
 
 Select sum(total_sale) as total_sale, year(sale_date) as year , month(sale_date) as month  from retail_sales group by year , month order by total_sale Desc;
 
 -- Write a SQL query to find the top 5 customers based on the highest total sales **:
 
 Select sum(total_sale) as total , customer_id from retail_sales group by customer_id  order by total desc limit 5;
 
 -- Write a SQL query to find the number of unique customers who purchased items from each category.:
 
 Select distinct count(customer_id) as customerid ,category  from retail_sales group by category;
 
--  Write a SQL query to create each shift and number of orders (Example Morning <12, Afternoon Between 12 & 17, Evening >17):

Select Distinct count(Quantity),
case 
 when hour(sale_time) <12 then 'Morning'
 when hour(sale_time) Between 12 and 17 then 'Afternoon'

 ELse 'evening'
 
 End as Shift 
 
 From retail_sales
 
 Group by Shift


-- END_OF_PROJECT
 

 