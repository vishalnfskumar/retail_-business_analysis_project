-- =====================================
-- Project: Retail Business Performance & Profitability Analysis
-- File   : retail_analysis_queries.sql
-- Author : Vishal Kumar
-- Date   : 2025-08-23
-- =====================================



-- 1. Data Cleaning
-- Remove null sales/profit 
select * from SuperStore;
DELETE FROM SuperStore WHERE Sales IS NULL OR Profit IS NULL;



SELECT 'Order ID', COUNT(*)
FROM SuperStore
GROUP BY 'OrderID'
HAVING COUNT(*) > 1;




--  2.Profitability by Category
SELECT Category,
       round(SUM(Sales),2) AS TotalSales,
       round(SUM(Profit),2) AS TotalProfit,
       ROUND((SUM(Profit) / SUM(Sales)) * 100, 2) AS ProfitMarginPercent
FROM SuperStore
GROUP BY Category
ORDER BY ProfitMarginPercent ASC;




--  3.Profitability by Category
SELECT 'Sub-Category',
        round(SUM(Sales),2) AS TotalSales,
        round(SUM(Profit),2) AS TotalProfit,
       ROUND((SUM(Profit) / SUM(Sales)) * 100, 2) AS ProfitMarginPercent
FROM SuperStore
GROUP BY 'Sub-Category'
ORDER BY ProfitMarginPercent ASC;
select * from SuperStore;



-- 4.Monthly Trends
SELECT YEAR('Order Date') AS Year,
       round(SUM(Sales),2) AS MonthlySales,
       round(SUM(Profit),2) AS MonthlyProfit
FROM SuperStore
GROUP BY YEAR('Order Date')
ORDER BY Year;




select * from SuperStore;

-- 5.Region Trends
SELECT Region,
       round(SUM(Sales),2) AS TotalSales,
       round(SUM(Profit),2) AS TotalProfit,
       ROUND((SUM(Profit)/SUM(Sales))*100,2) AS ProfitMarginPercent
FROM SuperStore
GROUP BY Region;







