 📈 Project Title: E-Commerce Order Management System
 📝 Project Description: This project simulates a real-world e-commerce platform using SQL Server. It covers user management, product inventory, order processing, stock updates, and payment tracking. The database is fully normalized and designed to ensure data integrity and performance optimization.
 🔧 Technologies Used:
           SQL Server
           T-SQL (Transact-SQL)
           SSMS (SQL Server Management Studio)
🛠️ Database Design: The system is designed using a normalized schema (3NF) with the following core tables:
           Users: Stores user login and profile information.
           Products: Catalog of items available for sale.
           Orders: Details of each order placed by users.
           OrderItems: Individual products within an order.
           Payments: Payment records for orders.
           Each table is connected with foreign keys to maintain referential integrity.  
Features Implemented:
          1.Creation of all core tables with constraints.
          2.Sample data insertion for testing.
          3.SQL queries for data retrieval (order details, user purchases, etc).
          4.Stored procedures to automate order placement.
          5.Triggers to auto-update product stock upon new order insertion.
          6.Indexes on frequently queried columns for performance.    
🔄 Example Workflows:
          1.A user places an order: entries go into Orders and OrderItems, and product Stock is reduced using a trigger.
          2.A payment is processed: stored in Payments with reference to the corresponding order.   
⚙️ Optimization Techniques:
          1.Primary and foreign keys enforce data consistency.
          2.Indexes on UserID, OrderID, and ProductID for faster lookups.
          3.Use of GO to separate batches in triggers and procedures. 
✅ Sample SQL Snippet:
CREATE PROCEDURE PlaceOrder
    @UserID INT,
    @ProductID INT,
    @Quantity INT
AS
BEGIN
    -- Procedure logic to create order and update stock
END;
