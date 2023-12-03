--Exercise 2: Check for potential problems with test assignments. For example Make sure there
--is no data obviously missing (This is an open ended question)
SELECT
  parameter_value as test_id,
  DATE(event_time) AS DAY,
  COUNT(*) AS event_rows
FROM
  dsv1069.events
WHERE
  event_name = 'test_assignment' AND parameter_name = 'test_id'
GROUP BY
  parameter_value,
  DATE(event_time)