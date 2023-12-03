--Compare the final_assignments_qa table to the assignment events we captured for user_level_testing. 
--Write an answer to the following question:
--Does this table have everything you need to compute metrics like 30-day view-binary?

--Answer: No this table does not have evrything we need to compute the metrics like 30-day view binary 
--because it does not include the date 
SELECT
  *
FROM
  dsv1069.final_assignments_qa
 