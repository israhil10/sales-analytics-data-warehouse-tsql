/*
===============================================================================
Data Segmentation Analysis
===============================================================================
Purpose:
    - To group data into meaningful categories for targeted insights.
    - For customer segmentation, product categorization, or regional analysis.

SQL Functions Used:
    - CASE: Defines custom segmentation logic.
    - GROUP BY: Groups data into segments.
===============================================================================
*/
--DATA SEGMENTATION 
--Segment products into cost ranges 
--and count how many products fall into each segments.
WITH product_segment AS (
	SELECT 
	product_key,
	product_name,
	cost,
	CASE WHEN cost < 100 THEN 'Below 100'
		WHEN cost BETWEEN 100 AND 500 THEN '100-500'
		WHEN cost BETWEEN 500 AND 1000 THEN '500-1000'
		ELSE 'Above 1000'
	END cost_range 
	FROM gold.dim_products
)
SELECT 
cost_range,
COUNT(product_key) AS total_products
FROM product_segment
GROUP BY  cost_range
ORDER BY total_products DESC




/* Group customers into three segments based on their behavior:
	-VIP: Customers with at least 12 months of history and spending more than $5000.
	-Regular: Customers with at least 12 months of history but spending $5000 or less. 
	-New: Customers with a lifespan less than 12 months.
And find the total number of customers by each group*/

WITH customers_spending as (
	SELECT 
	c.customer_key,
	SUM(sales_amount) as total_spending,
	MIN(order_date) as first_order,
	MAX(order_date) as last_order,
	DATEDIFF(MONTH,MIN(order_date),MAX(order_date)) as lifespan
	FROM gold.fact_sales f
	LEFT JOIN GOLD.dim_customers c
	ON f.customer_key = c.customer_key
	GROUP BY c.customer_key
)
SELECT
customer_segment,
COUNT(customer_key) as total_customers 
FROM(
	SELECT 
	customer_key,
	total_spending,
	lifespan,
	CASE WHEN lifespan >= 12 AND total_spending > 5000 THEN 'VIP'
		WHEN lifespan >= 12 AND total_spending <= 5000 THEN 'REGULAR'
		ELSE 'NEW'
	END customer_segment 
	FROM customers_spending
	)t
GROUP BY customer_segment
ORDER BY total_customers DESC;

