-- SQL Query to categorize products based on their price

SELECT 
    ProductID,
    ProductName,
    Price,
    -- Categorizes products into price ranges: Low (<50), Medium (50-200), High (>200)
    CASE 
        WHEN Price < 50 THEN 'Low'
        WHEN Price BETWEEN 50 AND 200 THEN 'Medium'
        ELSE 'High'
    END AS PriceCategory
FROM 
    dbo.products;
