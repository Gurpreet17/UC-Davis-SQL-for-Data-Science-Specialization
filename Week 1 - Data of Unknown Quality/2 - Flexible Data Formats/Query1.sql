SELECT
  event_id,
  event_time,
  user_id,
  platform,
  parameter_name,
  parameter_value,
  (
    CASE
      WHEN parameter_name = 'item_id' THEN CAST(parameter_value AS INT)
      ELSE NULL
    END
  ) AS item_id
FROM
  dsv1069.events
WHERE
  event_name = 'view_item'
ORDER BY
  event_id