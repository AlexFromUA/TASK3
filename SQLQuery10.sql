SELECT o.EmployeeID, e.FirstName, e.LastName, SUM(Quantity) Quantity
FROM Orders o
INNER JOIN [Order Details] od ON o.OrderID = od.OrderID
INNER JOIN Employees e ON e.EmployeeID = o.EmployeeID
WHERE OrderDate >= '1996/09/01' and OrderDate < '1996/12/01'
GROUP BY o.EmployeeID,  e.FirstName, e.LastName