SELECT item_category, COUNT(item_category) as item_count
FROM dsv1069.orders
GROUP BY item_category
ORDER BY item_count DESC