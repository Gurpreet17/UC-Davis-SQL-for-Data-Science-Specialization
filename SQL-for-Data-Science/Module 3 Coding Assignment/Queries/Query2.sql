#Task: Find the total number of invoices for each customer along with the customer's full name, city and email.
#Question: What is the email address of the 5th person, František Wichterlová? Enter the answer below (feel free to copy and paste).
#Answer: frantisekw@jetbrains.com
SELECT COUNT(i.InvoiceId) as totalInvoices, c.FirstName, c.LastName, c.City, c.Email
FROM Customers c INNER JOIN Invoices i on c.CustomerId = i.CustomerId
GROUP BY (c.CustomerId)