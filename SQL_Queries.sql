           Greenleaf Markets - SQL Analysis Queries
            Analyst : Jennifer Onosatale
            Date: May 22nd, 2026


-- Query 1 : Sub-Category Sales and Profit Analysis

SELECT 
sub_category, 
ROUND(SUM(sales), 2) AS Total_Sales, 
ROUND(SUM(profit), 2) AS Total_Profit,
ROUND(AVG(profit/sales)*100, 2) as Avg_Margin_Pct
FROM Superstore_Clean
GROUP BY sub_category
ORDER BY Total_Sales DESC

-- Query 2 : Regional Sales and Profit Analysis

SELECT 
region, 
ROUND(SUM(sales), 2) AS Total_Sales,
ROUND(SUM(profit), 2) AS Total_Profit,
ROUND(AVG(profit_margin), 2) AS Profit_Margin
FROM Superstore_Clean
GROUP BY region
ORDER BY Total_Sales DESC


-- Query 3 : Discount vs Profit Margin Analysis

SELECT 
sub_category, 
ROUND(AVG(discount)* 100, 2) AS Discount_Average,
ROUND(AVG(profit_margin), 2) AS  Profit_Margin_Average
FROM Superstore_Clean
GROUP BY sub_category
ORDER BY Discount_Average DESC

-- Query 4 : Loss Making Orders Analysis

SELECT 
COUNT (*) AS Loss_Making_Order
FROM Superstore_Clean
WHERE Profit < 0 
AND discount > 0.20







