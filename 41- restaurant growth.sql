-- https://leetcode.com/problems/restaurant-growth/description/?envType=study-plan-v2&envId=top-sql-50


select distinct visited_on,
        sum(amount) over w as amount,
        round((sum(amount) over w)/7, 2) as average_amount
from customer
WINDOW w AS ( 
        order by visited_on
        range between interval 6 day PRECEDING and current row
)
Limit 6, 999
