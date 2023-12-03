--Exercise 3: Imagine that you need to count item views by day. You found this table
--item_views_by_category_temp - should you use it to answer your questiuon?
--Answer: No we should not use it to answer our question because the date and time is not included in the data,
--hence we dont know when this data was being recorded and how relevant it is currently. 
SELECT
  *
FROM
  dsv1069.item_views_by_category_temp