SELECT
  COALESCE(orders.user_id,users.parent_user_id) AS original_user_id, parent_user_id,orders.user_id 
FROM
  dsv1069.orders
  JOIN dsv1069.users ON orders.user_id = users.parent_user_id