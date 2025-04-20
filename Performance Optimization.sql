-- Indexes for faster lookups
CREATE INDEX idx_user_email ON Users(Email);
CREATE INDEX idx_order_user ON Orders(UserID);
CREATE INDEX idx_order_date ON Orders(OrderDate);
CREATE INDEX idx_product_name ON Products(ProductName);
