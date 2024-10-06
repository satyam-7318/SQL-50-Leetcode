-- https://leetcode.com/problems/invalid-tweets/description/?envType=study-plan-v2&envId=top-sql-50

select tweet_id from Tweets where CHARACTER_LENGTH(content)>15;
