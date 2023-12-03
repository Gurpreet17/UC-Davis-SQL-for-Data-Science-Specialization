--Exercise 3: “Clean up your Columns” In this step be sure to specify the columns you actually
--want to return, and if necessary do any aggregation needed to get a count of the orders made
--per day.
SELECT
  dates_rollup.date,
  SUM(orders) AS orders,
  SUM(items_ordered) AS items_ordered
FROM
  dsv1069.dates_rollup
  LEFT OUTER JOIN (
    SELECT
      date(paid_at) AS DAY,
      COUNT (DISTINCT invoice_id) AS orders,
      COUNT(DISTINCT line_item_id) AS items_ordered
    FROM
      dsv1069.orders
    GROUP BY
      date(paid_at)
  ) daily_orders ON daily_orders.day = dates_rollup.date 
  GROUP BY dates_rollup.date