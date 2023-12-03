#Task: See if there are any customers who have a different city listed in their billing city versus their customer city.
#Question: Indicate your answer below.
#Answer: No customers have a different city listed in their billing city versus customer city.
SELECT Customers.FirstName, Customers.LastName, Customers.City, Invoices.BillingCity
FROM Customers
INNER JOIN Invoices ON Invoices.CustomerID = Customers.CustomerID
where Invoices.BillingCity <> Customers.City