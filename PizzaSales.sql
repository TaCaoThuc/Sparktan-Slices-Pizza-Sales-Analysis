--View dataset
SELECT *
FROM pizza_sales

--KPI
--Revenue
SELECT SUM(total_price) AS Total_Revenue
FROM pizza_sales

--Average order value
SELECT SUM(total_price) / COUNT(DISTINCT order_id) as Avg_order_Value
FROM pizza_sales

--Total pizzas sold
SELECT SUM(quantity) AS Total_Pizzas_Sold
FROM pizza_sales

--Total orders
SELECT COUNT(DISTINCT order_id) AS Total_Orders
FROM pizza_sales

--Average number of pizzas per order
SELECT CAST(CAST(SUM(quantity) AS DECIMAL (10,2)) / 
CAST(COUNT(DISTINCT order_id) AS DECIMAL (10,2)) AS DECIMAL (10,2))
AS Avg_Pizzas_Per_Order
FROM pizza_sales

--Other key insights
--Daily and monthly trend for total sales
--Daily trend for total sales
SELECT DATENAME(DW, order_date) AS order_day, COUNT(DISTINCT order_id) AS Total_orders
FROM pizza_sales
GROUP BY DATENAME(DW, order_date)
ORDER BY
  CASE 
    WHEN DATENAME(DW, order_date) = 'Sunday' THEN 1
    WHEN DATENAME(DW, order_date) = 'Monday' THEN 2
    WHEN DATENAME(DW, order_date) = 'Tuesday' THEN 3
    WHEN DATENAME(DW, order_date) = 'Wednesday' THEN 4
    WHEN DATENAME(DW, order_date) = 'Thursday' THEN 5
    WHEN DATENAME(DW, order_date) = 'Friday' THEN 6
    WHEN DATENAME(DW, order_date) = 'Saturday' THEN 7
END

--Monthly trend for total sales
SELECT DATENAME(MONTH, order_date) AS Month, MONTH(order_date) AS MonthNumber, COUNT(DISTINCT order_id) AS Total_Orders
FROM pizza_sales
GROUP BY DATENAME(MONTH, order_date), MONTH(order_date)
ORDER BY MonthNumber

--Percentage of sales by category and size
--Percentage of sales by category
SELECT pizza_category, CAST(SUM(total_price) * 100 / (SELECT SUM(total_price) from pizza_sales) AS DECIMAL (10,2))
AS Percentage_of_Sales_by_Category
FROM pizza_sales
GROUP BY pizza_category
ORDER BY Percentage_of_Sales_by_Category DESC

--Percentage of sales by pizza size
SELECT pizza_size, CAST(SUM(total_price) * 100 / (SELECT SUM(total_price) from pizza_sales) AS DECIMAL (10,2))
AS Percentage_of_Sales_by_Size
FROM pizza_sales
GROUP BY pizza_size
ORDER BY Percentage_of_Sales_by_Size DESC

--Total pizzas sold by category
SELECT pizza_category, SUM(quantity) AS Total_Sold_by_Category 
FROM pizza_sales
GROUP BY pizza_category
ORDER BY Total_Sold_by_Category

--Top 5 best sellers by revenue, quantity and orders
--Top 5 best sellers by revenue
SELECT TOP 5 pizza_name, SUM(total_price) AS Total_Revenue
FROM pizza_sales
GROUP BY pizza_name
ORDER BY Total_Revenue DESC

--Top 5 best sellers by quantity
SELECT TOP 5 pizza_name, SUM(quantity) AS Total_Quantity
FROM pizza_sales
GROUP BY pizza_name
ORDER BY Total_Quantity DESC

--Top 5 best sellers by order
SELECT TOP 5 pizza_name, COUNT(DISTINCT order_id) AS Total_Orders
FROM pizza_sales
GROUP BY pizza_name
ORDER BY Total_Orders DESC

--Top 5 worst sellers by revenue, quantity and orders
--Top 5 worst sellers by revenue
SELECT TOP 5 pizza_name, SUM(total_price) AS Total_Revenue
FROM pizza_sales
GROUP BY pizza_name
ORDER BY Total_Revenue ASC

--Top 5 worst sellers by quantity
SELECT TOP 5 pizza_name, SUM(quantity) AS Total_Quantity
FROM pizza_sales
GROUP BY pizza_name
ORDER BY Total_Quantity ASC

--Top 5 best sellers by order
SELECT TOP 5 pizza_name, COUNT(DISTINCT order_id) AS Total_Orders
FROM pizza_sales
GROUP BY pizza_name
ORDER BY Total_Orders ASC