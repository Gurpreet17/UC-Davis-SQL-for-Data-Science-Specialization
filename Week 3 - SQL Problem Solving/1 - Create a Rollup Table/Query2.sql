--Exercise 2: “Check your joins”. We are still trying to count orders per day. In this step join the
--sub table from the previous exercise to the dates rollup table so we can get a row for every
--date. Check that the join works by just running a “select *” query
SELECT *
FROM
  dsv1069.dates_rollup
  LEFT OUTER JOIN 
  (
    SELECT
      date(paid_at) AS DAY,
      COUNT (DISTINCT invoice_id) AS orders,
      COUNT(DISTINCT line_item_id) AS line_items
    FROM
      dsv1069.orders
    GROUP BY
      date(paid_at)
  ) daily_orders
  ON daily_orders.day = dates_rollup.date