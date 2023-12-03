#Task: Find all the invoices for customer 56 and 58 where the total was between $1.00 and $5.00.
#Question: What was the invoice date for invoice ID 315?
#Answer: 10-27-2012
SELECT CustomerID, Total, invoiceID, InvoiceDate
FROM Invoices
WHERE invoiceID = 315 AND (Total >= 1) AND (Total <= 5) 