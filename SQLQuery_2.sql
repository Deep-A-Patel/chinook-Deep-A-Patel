SELECT TOP 1 Sum(i.Total) TotalSales, e.FirstName + ' ' + e.LastName as EmployeeName
FROM Employee e
JOIN Customer c
ON e.EmployeeId = c.SupportRepId
JOIN Invoice i
ON c.CustomerId = i.CustomerId
WHERE e.Title = 'Sales Support Agent'
AND YEAR(i.InvoiceDate) = 2009
GROUP BY e.EmployeeId, e.FirstName, e.LastName
ORDER BY Sum(i.Total) desc