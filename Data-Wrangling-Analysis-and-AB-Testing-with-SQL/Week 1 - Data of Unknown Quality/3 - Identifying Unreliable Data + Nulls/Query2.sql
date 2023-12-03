--Exercise 2: Using any methods you like, determine if you can you trust this events table. (HINT: When did
--we start recording events on mobile)
--Answer: We cannot trust this event table because it started recording the events on mobile in 2013 which might not be relevant currently. 
SELECT
  DATE(event_time) AS date,
  COUNT(*) AS count
FROM
  dsv1069.events_ex2
WHERE
  platform = 'mobile web'
GROUP BY
  date