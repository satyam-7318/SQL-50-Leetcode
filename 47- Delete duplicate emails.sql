-- https://leetcode.com/problems/delete-duplicate-emails/description/?envType=study-plan-v2&envId=top-sql-50


delete p1 from person p1,person p2 
where p1.email=p2.email and p1.id>p2.id;
