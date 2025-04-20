-- Get all orders with user info
SELECT o.OrderID, u.Username, o.OrderDate, o.TotalAmount, o.Status
FROM Orders o
JOIN Users u ON o.UserID = u.UserID;

-- Report: Product sales count
SELECT p.ProductName, SUM(oi.Quantity) AS TotalSold
FROM OrderItems oi
JOIN Products p ON oi.ProductID = p.ProductID
GROUP BY p.ProductName;

-- List all payments with order details
SELECT p.PaymentID, u.Username, o.OrderID, p.Amount, p.PaymentMethod, p.Status
FROM Payments p
JOIN Orders o ON p.OrderID = o.OrderID
JOIN Users u ON o.UserID = u.UserID;
