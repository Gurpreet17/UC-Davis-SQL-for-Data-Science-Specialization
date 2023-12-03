--Exercise 3: Clean up your columns. The goal of all this is to return all of the information we’ll
--need to send users an email about the item they viewed more recently. Clean up this query
--outline from the outline in EX2 and pull only the columns you need. Make sure they are named
--appropriately so that another human can read and understand their contents
SELECT
  user_id, email_address, item_id, name, category
FROM
  (
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
  ) recent_views
  JOIN dsv1069.users ON users.id = recent_views.user_id
  JOIN dsv1069.items ON items.id = recent_views.item_id
  WHERE view_number = 1