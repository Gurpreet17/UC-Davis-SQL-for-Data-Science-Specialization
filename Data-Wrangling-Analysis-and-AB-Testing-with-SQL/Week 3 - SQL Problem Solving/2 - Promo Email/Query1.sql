--Exercise 1: Create the right subtable for recently viewed events using the view_item_events table.
SELECT
  user_id,
  item_id,
  event_time,
  ROW_NUMBER () OVER (
    PARTITION BY user_id
    ORDER BY
      event_time DESC
  ) AS view_number
FROM
  dsv1069.view_item_events