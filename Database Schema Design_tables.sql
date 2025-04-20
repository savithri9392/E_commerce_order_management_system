-- Drop existing tables if they exist
DROP TABLE IF EXISTS Payments, OrderItems, Orders, Products, Users;

-- Users Table
CREATE TABLE Users (
    UserID INT PRIMARY KEY IDENTITY(1,1),
    Username VARCHAR(50) NOT NULL UNIQUE,
    Email VARCHAR(100) NOT NULL UNIQUE,
    PasswordHash VARCHAR(255) NOT NULL,
    CreatedAt DATETIME DEFAULT GETDATE()
);

-- Products Table
CREATE TABLE Products (
    ProductID INT PRIMARY KEY IDENTITY(1,1),
    ProductName VARCHAR(100) NOT NULL,
    Description TEXT,
    Price DECIMAL(10,2) NOT NULL,
    Stock INT NOT NULL
);

-- Orders Table
CREATE TABLE Orders (
    OrderID INT PRIMARY KEY IDENTITY(1,1),
    UserID INT,
    OrderDate DATETIME DEFAULT GETDATE(),
    Status VARCHAR(20) DEFAULT 'Pending',
    TotalAmount DECIMAL(10,2),
    FOREIGN KEY (UserID) REFERENCES Users(UserID)
);

-- OrderItems Table
CREATE TABLE OrderItems (
    OrderItemID INT PRIMARY KEY IDENTITY(1,1),
    OrderID INT,
    ProductID INT,
    Quantity INT,
    Price DECIMAL(10,2),
    FOREIGN KEY (OrderID) REFERENCES Orders(OrderID),
    FOREIGN KEY (ProductID) REFERENCES Products(ProductID)
);

-- Payments Table
CREATE TABLE Payments (
    PaymentID INT PRIMARY KEY IDENTITY(1,1),
    OrderID INT,
    PaymentDate DATETIME DEFAULT GETDATE(),
    Amount DECIMAL(10,2),
    PaymentMethod VARCHAR(20),
    Status VARCHAR(20) DEFAULT 'Completed',
    FOREIGN KEY (OrderID) REFERENCES Orders(OrderID)
);
