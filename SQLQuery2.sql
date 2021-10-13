SELECT ShipCity, OrderDate, ShippedDate
FROM Orders
WHERE ShippedDate - OrderDate > 10