-- Total Sales
SELECT SUM(Amount) AS Total_Sales
FROM amazon_sales;

-- Total Orders
SELECT COUNT(*) AS Total_Orders
FROM amazon_sales;

-- Top Categories
SELECT Category,
SUM(Amount) AS Sales
FROM amazon_sales
GROUP BY Category
ORDER BY Sales DESC;

-- Top States
SELECT ship_state,
SUM(Amount) AS Sales
FROM amazon_sales
GROUP BY ship_state
ORDER BY Sales DESC;

-- Average Order Value
SELECT AVG(Amount) AS Avg_Order_Value
FROM amazon_sales;