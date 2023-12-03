--Exercise 1: Create a subtable of orders per day. Make sure you decide whether you are counting invoices or line items.
SELECT
  date(paid_at) AS day,
  COUNT (DISTINCT invoice_id) AS orders,
  COUNT(DISTINCT line_item_id) AS line_items
FROM
  dsv1069.orders
GROUP BY
(paid_at)