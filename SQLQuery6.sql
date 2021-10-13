SELECT DISTINCT ShipCountry 
FROM orders 
GROUP BY ShipCountry, ShipCity 
HAVING COUNT(OrderID) > 2 
ORDER BY ShipCountry