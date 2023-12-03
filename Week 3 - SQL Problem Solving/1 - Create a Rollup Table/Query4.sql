--Exercise 4: Weekly Rollup. Figure out which parts of the JOIN condition need to be edited
--create 7 day rolling orders table.
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