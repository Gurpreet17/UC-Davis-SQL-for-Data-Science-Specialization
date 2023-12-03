--Exercise 3: Write a query that returns a table of assignment events.Please include all of the
--relevant parameters as columns (Hint: A previous exercise as a template)
SELECT
  user_id,
  COUNT(test_assignment) AS assignments
FROM
  (
    SELECT
      event_id,
      event_time,
      user_id,
      platform,
      MAX(
        CASE
          WHEN parameter_name = 'test_id' THEN CAST (parameter_value AS INT)
          ELSE NULL
        END
      ) AS test_id,
      MAX(
        CASE
          WHEN parameter_value = 'test_assignment' THEN parameter_value
          ELSE NULL
        END
      ) AS test_assignment
    FROM
      dsv1069.events
    WHERE
      event_name = 'test_assignment'
    GROUP BY
      event_id,
      event_time,
      user_id,
      platform
    ORDER BY
      event_id
  ) AS test_assignments
WHERE
  test_id = 5
GROUP BY
  user_id
ORDER BY
  assignments DESC