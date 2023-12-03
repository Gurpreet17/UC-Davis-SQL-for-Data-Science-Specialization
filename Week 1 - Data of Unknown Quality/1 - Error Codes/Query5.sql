SELECT
  COUNT(DISTINCT item_id) AS item_count
FROM
  dsv1069.orders
  INNER JOIN dsv1069.items ON orders.item_id = items.id