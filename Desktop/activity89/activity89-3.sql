/* GROUPBY with SUM of the InvoiceDetails Line Totals */
SELECT
    Customers.CustomerName,
    Invoices.InvoiceID,
    SUM(InvoiceDetails.LineTotal) AS TotalLineSum
FROM Customers
INNER JOIN Invoices ON Customers.CustomerID = Invoices.CustomerID
INNER JOIN InvoiceDetails ON Invoices.InvoiceID = InvoiceDetails.InvoiceID
GROUP BY Invoices.InvoiceID
ORDER BY TotalLineSum DESC;