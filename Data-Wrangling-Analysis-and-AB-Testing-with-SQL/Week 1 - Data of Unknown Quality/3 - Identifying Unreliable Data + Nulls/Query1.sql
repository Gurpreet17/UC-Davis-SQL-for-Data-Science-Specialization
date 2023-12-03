-- Exercise 1: Using any methods you like determine if you can you trust this events table
-- Answer: We can trust this events table event tough it was recorded in 2016-2017 however it might contain some 
-- useful data that might help us today
SELECT
  DATE(event_time) AS date,
  COUNT(*) AS rows
 FROM
  dsv1069.events_201701
GROUP BY
  DATE(event_time)