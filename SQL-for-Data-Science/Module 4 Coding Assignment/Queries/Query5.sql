#Task: Find the cities with the most customers and rank in descending order
#Question: Which of the following cities indicate having 2 customers?
#Answer: São Paulo, London, Mountain View
SELECT City, COUNT(City) AS 'Customer #'
FROM Customers
WHERE City IN ('Dublin','São Paulo','Frankfurt','Budapest','London','Mountain View')
GROUP BY City
ORDER BY 'Customer #' DESC