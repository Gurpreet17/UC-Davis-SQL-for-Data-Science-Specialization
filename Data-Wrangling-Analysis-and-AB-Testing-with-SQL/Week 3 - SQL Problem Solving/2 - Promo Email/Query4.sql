--Exercise 4: Consider any edge cases. If we sent an email to everyone in the results of this
--query, what would we want to filter out. Add in any extra filtering that you think would make this
--email better. For example should we include deleted users? Should we send this email to users
--who already ordered the item they viewed most recently?
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
    WHERE event_time > '2010-01-01'
  ) recent_views
  JOIN dsv1069.users ON users.id = recent_views.user_id
  JOIN dsv1069.items ON items.id = recent_views.item_id
  WHERE view_number = 1 AND users.deleted_at IS NULL    --Make sure the user is not deleted