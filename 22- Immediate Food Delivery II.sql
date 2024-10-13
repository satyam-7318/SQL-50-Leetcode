-- https://leetcode.com/problems/immediate-food-delivery-ii/description/?envType=study-plan-v2&envId=top-sql-50


WITH FirstOrders AS (
    SELECT 
        customer_id,
        MIN(order_date) AS first_order_date
    FROM 
        Delivery
    GROUP BY 
        customer_id
),
ImmediateOrders AS (
    SELECT 
        d.customer_id,
        d.delivery_id
    FROM 
        Delivery d
    JOIN 
        FirstOrders fo ON d.customer_id = fo.customer_id AND d.order_date = fo.first_order_date
    WHERE 
        d.order_date = d.customer_pref_delivery_date
)

SELECT 
    ROUND(COUNT(io.delivery_id) * 100.0 / COUNT(DISTINCT fo.customer_id), 2) AS immediate_percentage
FROM 
    FirstOrders fo
LEFT JOIN 
    ImmediateOrders io ON fo.customer_id = io.customer_id;
