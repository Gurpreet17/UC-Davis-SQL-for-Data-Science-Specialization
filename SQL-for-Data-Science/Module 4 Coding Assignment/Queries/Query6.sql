#Task: Create a new customer invoice id by combining a customer’s invoice id with their first and last name while ordering your query in the following order: firstname, lastname, and invoiceID.
#Question: Select all of the correct "AstridGruber" entries that are returned in your results below. Select all that apply.
#Answer: AstridGruber273, AstridGruber296, AstridGruber370
SELECT FirstName, LastName, CONCAT(FirstName,LastName, InvoiceId) AS ' New Invoice Id'
FROM (SELECT c.FirstName, c.LastName, i.InvoiceId
      FROM Invoices i LEFT JOIN Customers c 
      on i.CustomerId = c.CustomerId) AS derived_table
WHERE FirstName = 'Astrid' AND LastName = 'Gruber'