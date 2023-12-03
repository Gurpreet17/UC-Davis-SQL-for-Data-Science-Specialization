--Exercise 2:
--Using the table from the previous exercise, add the following metrics
--1) the number of orders/invoices
--2) the number of items/line-items ordered
--3) the total revenue from the order after treatment
SELECT 
  tested_users.user_id,
  tested_users.event_time,
  orders.price,
  COUNT(orders.item_id) AS num_orders,
  COUNT(orders.line_item_id) as num_line_items,
  COUNT(orders.item_id) * orders.price as revenue
FROM (
  SELECT 
    user_id, 
    event_time,
    MAX(
      CASE 
        WHEN parameter_name = 'test_id' THEN CAST(parameter_value AS INT) 
        ELSE NULL 
      END
    ) AS test_id 
  FROM 
    dsv1069.events 
  WHERE 
    event_name = 'test_assignment' 
  GROUP BY 
    user_id, 
    event_time
) AS tested_users 
LEFT JOIN 
  dsv1069.orders 
ON 
  tested_users.user_id = orders.user_id
  AND orders.created_at >= tested_users.event_time
WHERE 
  tested_users.test_id IS NOT NULL
GROUP BY 
  tested_users.user_id, 
  tested_users.event_time,
  orders.price