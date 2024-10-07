-- https://leetcode.com/problems/average-time-of-process-per-machine/description/?envType=study-plan-v2&envId=top-sql-50

select machine_id,
round(sum(if (activity_type = 'start', -timestamp, timestamp)) /
count(distinct process_id),3) as processing_time
from Activity
group by machine_id
