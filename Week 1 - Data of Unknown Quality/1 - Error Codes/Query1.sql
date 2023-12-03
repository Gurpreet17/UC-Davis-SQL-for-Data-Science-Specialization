SELECT
  users.id AS users_id,
  MIN(orders.paid_at) AS min_paid_at
FROM
  dsv1069.orders
  RIGHT JOIN dsv1069.users ON orders.user_id = users.id
GROUP BY
  users.id
ORDER BY
  min_paid_at