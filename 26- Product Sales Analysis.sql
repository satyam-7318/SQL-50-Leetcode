-- https://leetcode.com/problems/product-sales-analysis-iii/description/?envType=study-plan-v2&envId=top-sql-50

with sale as 
(select *,rank() over (partition by product_id order by year) as rw
from sales)

select product_id,year as first_year,quantity, price from sale
where rw=1;
