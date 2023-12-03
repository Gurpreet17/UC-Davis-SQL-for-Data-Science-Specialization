SELECT
  COUNT(DISTINCT event_id) AS viewed_items
FROM
  dsv1069.events
WHERE
  event_name = 'view_item'
  
  -- Make sure you include the DISTICT clause in the COUNT clause because there are multiple items within an even id