SELECT od.ProductID, p.ProductName, SUM(Quantity)
FROM [Order Details] od LEFT JOIN Products p on od.ProductID = p.ProductID
GROUP BY od.ProductID, p.ProductName
HAVING SUM(Quantity)  < 1000