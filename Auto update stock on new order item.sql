-- STEP 1: Drop the trigger if it exists
IF OBJECT_ID('trg_UpdateStock', 'TR') IS NOT NULL
    DROP TRIGGER trg_UpdateStock;
GO

-- STEP 2: Create the trigger
CREATE TRIGGER trg_UpdateStock
ON OrderItems
AFTER INSERT
AS
BEGIN
    UPDATE p
    SET Stock = Stock - i.Quantity
    FROM Products p
    INNER JOIN inserted i ON p.ProductID = i.ProductID;
END;
GO
