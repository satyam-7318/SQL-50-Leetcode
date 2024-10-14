-- https://leetcode.com/problems/game-play-analysis-iv/description/?envType=study-plan-v2&envId=top-sql-50


WITH FirstLogins AS (
    SELECT 
        player_id, 
        MIN(event_date) AS first_login_date
    FROM 
        Activity
    GROUP BY 
        player_id
),
NextDayLogins AS (
    SELECT 
        fl.player_id
    FROM 
        FirstLogins fl
    JOIN 
        Activity a ON fl.player_id = a.player_id 
        AND DATE_ADD(fl.first_login_date, INTERVAL 1 DAY) = a.event_date
)

SELECT 
    ROUND(COUNT(DISTINCT nd.player_id) / COUNT(DISTINCT fl.player_id), 2) AS fraction
FROM 
    FirstLogins fl
LEFT JOIN 
    NextDayLogins nd ON fl.player_id = nd.player_id;
