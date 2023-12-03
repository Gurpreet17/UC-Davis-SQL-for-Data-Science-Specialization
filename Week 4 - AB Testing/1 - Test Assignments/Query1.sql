--Exercise 1: Figure out how many tests we have running right now
SELECT DISTINCT parameter_value as test_id
FROM dsv1069.events
WHERE event_name = 'test_assignment'
AND parameter_name = 'test_id'