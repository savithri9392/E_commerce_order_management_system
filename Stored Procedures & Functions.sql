
IF OBJECT_ID('AddProduct', 'P') IS NOT NULL
    DROP PROCEDURE AddProduct;
GO

-- Create the stored procedure
CREATE PROCEDURE AddProduct
    @ProductName VARCHAR(100),
    @Description TEXT,
    @Price DECIMAL(10,2),
    @Stock INT
AS
BEGIN
    INSERT INTO Products (ProductName, Description, Price, Stock)
    VALUES (@ProductName, @Description, @Price, @Stock);
END;
GO
-- Drop if exists (optional)
IF OBJECT_ID('GetUserOrderTotal', 'FN') IS NOT NULL
    DROP FUNCTION GetUserOrderTotal;
GO

-- Create the function
CREATE FUNCTION GetUserOrderTotal (@UserID INT)
RETURNS DECIMAL(10,2)
AS
BEGIN
    DECLARE @Total DECIMAL(10,2);
    SELECT @Total = SUM(TotalAmount) FROM Orders WHERE UserID = @UserID;
    RETURN ISNULL(@Total, 0);
END;
GO
-- Run the stored procedure
EXEC AddProduct 
    @ProductName = 'Smartwatch',
    @Description = 'Fitness Tracker with GPS',
    @Price = 149.99,
    @Stock = 20;

-- Use the function
SELECT dbo.GetUserOrderTotal(1) AS TotalSpent;
