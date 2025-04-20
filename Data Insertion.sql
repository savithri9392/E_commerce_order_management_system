-- Insert sample users
INSERT INTO Users (Username, Email, PasswordHash)
VALUES 
('john_doe', 'john@example.com', 'hashedpassword1'),
('jane_smith', 'jane@example.com', 'hashedpassword2');

-- Insert sample products
INSERT INTO Products (ProductName, Description, Price, Stock)
VALUES 
('Laptop', 'Gaming laptop', 999.99, 10),
('Mouse', 'Wireless mouse', 29.99, 50),
('Keyboard', 'Mechanical keyboard', 49.99, 30);

-- Create an order
INSERT INTO Orders (UserID, TotalAmount)
VALUES (1, 1079.97);

-- Add order items
INSERT INTO OrderItems (OrderID, ProductID, Quantity, Price)
VALUES 
(1, 1, 1, 999.99),
(1, 2, 1, 29.99),
(1, 3, 1, 49.99);

-- Add payment
INSERT INTO Payments (OrderID, Amount, PaymentMethod)
VALUES (1, 1079.97, 'Credit Card');
