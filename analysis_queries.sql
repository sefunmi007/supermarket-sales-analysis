-- Supermarket Sales Analysis
-- Suggested table name: supermarket_sales

-- 1. Total revenue
SELECT ROUND(SUM(Total), 2) AS total_revenue
FROM supermarket_sales;

-- 2. Total COGS and gross income
SELECT ROUND(SUM(COGS), 2) AS total_cogs,
       ROUND(SUM(Gross_income), 2) AS gross_income
FROM supermarket_sales;

-- 3. Revenue by branch
SELECT Branch,
       ROUND(SUM(Total), 2) AS revenue,
       COUNT(*) AS transactions,
       ROUND(AVG(Total), 2) AS avg_transaction_value
FROM supermarket_sales
GROUP BY Branch
ORDER BY revenue DESC;

-- 4. Revenue by product line
SELECT Product_line,
       ROUND(SUM(Total), 2) AS revenue,
       SUM(Quantity) AS quantity_sold,
       COUNT(*) AS transactions,
       ROUND(SUM(Gross_income), 2) AS gross_income
FROM supermarket_sales
GROUP BY Product_line
ORDER BY revenue DESC;

-- 5. Revenue by customer type
SELECT Customer_type,
       ROUND(SUM(Total), 2) AS revenue,
       SUM(Quantity) AS quantity_sold,
       COUNT(*) AS transactions,
       ROUND(AVG(Total), 2) AS avg_transaction_value
FROM supermarket_sales
GROUP BY Customer_type
ORDER BY revenue DESC;

-- 6. Revenue by gender
SELECT Gender,
       ROUND(SUM(Total), 2) AS revenue,
       SUM(Quantity) AS quantity_sold,
       COUNT(*) AS transactions,
       ROUND(AVG(Total), 2) AS avg_transaction_value
FROM supermarket_sales
GROUP BY Gender
ORDER BY revenue DESC;

-- 7. Payment method usage
SELECT Payment,
       COUNT(*) AS transactions,
       ROUND(SUM(Total), 2) AS revenue,
       ROUND(AVG(Total), 2) AS avg_transaction_value
FROM supermarket_sales
GROUP BY Payment
ORDER BY transactions DESC;

-- 8. Monthly revenue (MySQL)
SELECT DATE_FORMAT(STR_TO_DATE(Date, '%m/%d/%Y'), '%Y-%m') AS sales_month,
       COUNT(*) AS transactions,
       SUM(Quantity) AS quantity_sold,
       ROUND(SUM(Total), 2) AS revenue
FROM supermarket_sales
GROUP BY DATE_FORMAT(STR_TO_DATE(Date, '%m/%d/%Y'), '%Y-%m')
ORDER BY sales_month;

-- 9. Average customer rating by product line
SELECT Product_line,
       ROUND(AVG(Rating), 2) AS average_rating,
       COUNT(*) AS transactions
FROM supermarket_sales
GROUP BY Product_line
ORDER BY average_rating DESC;

-- 10. Overall average rating
SELECT ROUND(AVG(Rating), 2) AS overall_average_rating
FROM supermarket_sales;

-- 11. Highest-revenue product line
SELECT Product_line,
       ROUND(SUM(Total), 2) AS revenue
FROM supermarket_sales
GROUP BY Product_line
ORDER BY revenue DESC
LIMIT 1;

-- 12. Missing-value checks
SELECT SUM(CASE WHEN Invoice_ID IS NULL THEN 1 ELSE 0 END) AS missing_invoice_id,
       SUM(CASE WHEN Branch IS NULL THEN 1 ELSE 0 END) AS missing_branch,
       SUM(CASE WHEN Total IS NULL THEN 1 ELSE 0 END) AS missing_total,
       SUM(CASE WHEN Rating IS NULL THEN 1 ELSE 0 END) AS missing_rating
FROM supermarket_sales;

-- 13. Duplicate invoice IDs
SELECT Invoice_ID, COUNT(*) AS record_count
FROM supermarket_sales
GROUP BY Invoice_ID
HAVING COUNT(*) > 1;

-- 14. Revenue versus transaction volume by city
SELECT City,
       COUNT(*) AS transactions,
       ROUND(SUM(Total), 2) AS revenue,
       ROUND(AVG(Total), 2) AS avg_transaction_value
FROM supermarket_sales
GROUP BY City
ORDER BY revenue DESC;
