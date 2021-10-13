SELECT CategoryID, SUM(Quantity) as Quantity
FROM Products p 
INNER JOIN [Order Details] od on p.ProductID = od.ProductID 
INNER JOIN Orders o ON od.OrderID = o.OrderID
INNER JOIN Customers c ON o.CustomerID = c.CustomerID
WHERE c.Fax IS NOT NULL
GROUP BY CategoryID 
ORDER BY Quantity DESC
OFFSET 0 ROWS FETCH FIRST 1 ROWS ONLY
