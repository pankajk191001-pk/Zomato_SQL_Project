create database Zomato_project ;

SHOW TABLES;
SELECT * FROM zomato_customer LIMIT 5;
SELECT * FROM zomato_orders LIMIT 5;
SELECT * FROM zomato_restaurents LIMIT 5;

ALTER TABLE zomato_customer
CHANGE COLUMN `ï»¿Customer_id` customer_id VARCHAR(20);

ALTER TABLE zomato_orders
CHANGE COLUMN `ï»¿order_id` order_id VARCHAR(20);

ALTER TABLE zomato_restaurents
CHANGE COLUMN `ï»¿restaurant_id` restaurant_id VARCHAR(20);


/*3. Check the number of records*/
SELECT COUNT(*) AS total_customers
FROM zomato_customer;

SELECT COUNT(*) AS total_orders
FROM zomato_orders;

SELECT COUNT(*) AS total_restaurants
FROM zomato_restaurants;

/*4. Check column data types*/
DESCRIBE zomato_customer;

DESCRIBE zomato_orders;

DESCRIBE zomato_restaurants;


/*Data Quality Analysis*/

/*5. Check NULL values in customers*/
SELECT
    SUM(customer_id IS NULL) AS missing_customer_id,
    SUM(Customer_name IS NULL) AS missing_customer_name,
    SUM(City IS NULL) AS missing_city,
    SUM(Signup_Time IS NULL) AS missing_signup_time,
    SUM(Acquisition_channel IS NULL) AS missing_acquisition_channel
FROM zomato_customer;

/*6. Check NULL values in orders*/
SELECT
    SUM(order_id IS NULL) AS missing_order_id,
    SUM(customer_id IS NULL) AS missing_customer_id,
    SUM(restaurant_id IS NULL) AS missing_restaurant_id,
    SUM(order_timestamp IS NULL) AS missing_order_timestamp,
    SUM(order_amount IS NULL) AS missing_order_amount,
    SUM(discount_amount IS NULL) AS missing_discount_amount,
    SUM(delivery_fee IS NULL) AS missing_delivery_fee,
    SUM(payment_mode IS NULL) AS missing_payment_mode,
    SUM(order_status IS NULL) AS missing_order_status
FROM zomato_orders;

/*7. Check NULL values in restaurants*/
SELECT
    SUM(restaurant_id IS NULL) AS missing_restaurant_id,
    SUM(restaurant_name IS NULL) AS missing_restaurant_name,
    SUM(cusisne IS NULL) AS missing_cusisne,
    SUM(city IS NULL) AS missing_city,
    SUM(avg_rating IS NULL) AS missing_rating
FROM zomato_restaurants;

/*8. Check duplicate customer IDs*/
SELECT
    customer_id,
    COUNT(*) AS duplicate_count
FROM zomato_customer
GROUP BY customer_id
HAVING COUNT(*) > 1;

SELECT
    customer_id,
    Customer_name,
    City
FROM zomato_customer
LIMIT 10;

SELECT
    COUNT(*) AS total_rows,
    SUM(customer_id IS NULL) AS null_customer_ids,
    SUM(TRIM(COALESCE(customer_id, '')) = '') AS blank_customer_ids,
    COUNT(DISTINCT customer_id) AS unique_customer_ids
FROM zomato_customer;

SELECT *
FROM zomato_customer
WHERE TRIM(customer_id) = ''
LIMIT 20;

DELETE
FROM zomato_customer
WHERE TRIM(customer_id) = '';

DESCRIBE zomato_customer;
SET SQL_SAFE_UPDATES = 0;

DELETE
FROM zomato_customer
WHERE TRIM(customer_id) = '';

/*Now verify the customer table is clean:*/

SELECT
    COUNT(*) AS total_rows,
    SUM(customer_id IS NULL) AS null_customer_ids,
    SUM(TRIM(COALESCE(customer_id, '')) = '') AS blank_customer_ids,
    COUNT(DISTINCT customer_id) AS unique_customer_ids
FROM zomato_customer;


/*9. Check duplicate order IDs*/

SELECT
    order_id,
    COUNT(*) AS duplicate_count
FROM zomato_orders
GROUP BY order_id
HAVING COUNT(*) > 1;

/*10. Check duplicate restaurant IDs*/
SELECT
    restaurant_id,
    COUNT(*) AS duplicate_count
FROM zomato_restaurants
GROUP BY restaurant_id
HAVING COUNT(*) > 1;

/*11. Check blank values*/
SELECT *
FROM zomato_customer
WHERE TRIM(customer_id) = ''
   OR TRIM(Customer_name) = ''
   OR TRIM(City) = '';
   
SELECT *
FROM zomato_orders
WHERE TRIM(order_id) = ''
   OR TRIM(customer_id) = ''
   OR TRIM(restaurant_id) = '';   
   
SELECT *
FROM zomato_orders
WHERE TRIM(order_id) = ''
   OR TRIM(customer_id) = ''
   OR TRIM(restaurant_id) = '';
   

/*Zomato Customer Analytics Case Study*/

/*Revenue = order_amount - discount_amount + delivery_fee

Valid revenue = only Delivered orders

Coupon order = discount_amount > 0

Repeat customer = customer with more than one delivered order

Churned customer = customer who has not ordered in the last 90 days
from the latest order date in the dataset*/

    
/*1. What is the total revenue?*/
SELECT
    ROUND(SUM(net_revenue), 2) AS total_revenue
FROM zomato_analysis
WHERE LOWER(TRIM(order_status)) = 'delivered';

select sum(order_amount) as Total_revenue from zomato_orders where order_status = "Delivered"

/*2. What is the monthly revenue trend?*/
SELECT
    DATE_FORMAT(STR_TO_DATE(order_timestamp,'%d-%m-%Y'),'%Y-%m') AS Month,
    SUM(order_amount) AS Revenue
FROM zomato_orders
WHERE order_status='Delivered'
GROUP BY Month
ORDER BY Month;


/*3. City Contributing Highest Revenue*/
SELECT
    c.City,
    SUM(o.order_amount) AS Revenue
FROM zomato_orders o
JOIN zomato_customer c
ON o.customer_id=c.customer_id
WHERE o.order_status='Delivered'
GROUP BY c.City
ORDER BY Revenue DESC;

/*4. Payment Mode Generating Highest Revenue*/
SELECT
    payment_mode,
    SUM(order_amount) AS Revenue
FROM zomato_orders
WHERE order_status='Delivered'
GROUP BY payment_mode
ORDER BY Revenue DESC;

/*5. Average Order Value*/
SELECT
    ROUND(AVG(order_amount),2) AS Average_Order_Value
FROM zomato_orders
WHERE order_status='Delivered';

/*Customer Analysis*/

/*1. Top 20 Customers*/
SELECT
    c.customer_id,
    c.Customer_name,
    SUM(o.order_amount) AS Revenue
FROM zomato_customer c
JOIN zomato_orders o
ON c.customer_id=o.customer_id
WHERE o.order_status='Delivered'
GROUP BY c.customer_id,c.Customer_name
ORDER BY Revenue DESC
LIMIT 20;

/*2. Revenue Contribution of Top Customers*/
SELECT
ROUND(
(
SELECT SUM(revenue)
FROM
(
SELECT
SUM(order_amount) AS revenue
FROM zomato_orders
WHERE order_status='Delivered'
GROUP BY customer_id
ORDER BY revenue DESC
LIMIT 20
) t
)
/
(
SELECT SUM(order_amount)
FROM zomato_orders
WHERE order_status='Delivered'
)*100,2
) AS Top20_Revenue_Percentage;

/*3. Best Acquisition Channel*/
SELECT
c.Acquisition_channel,
SUM(o.order_amount) AS Revenue
FROM zomato_customer c
JOIN zomato_orders o
ON c.customer_id=o.customer_id
WHERE o.order_status='Delivered'
GROUP BY c.Acquisition_channel
ORDER BY Revenue DESC;

/*4. Repeat Customers*/
SELECT
COUNT(*) AS Repeat_Customers
FROM
(
SELECT customer_id
FROM zomato_orders
WHERE order_status='Delivered'
GROUP BY customer_id
HAVING COUNT(order_id)>1
)t;

/*Restaurant Performance*/

/*1. Highest Revenue Restaurants*/
SELECT
r.restaurant_name,
SUM(o.order_amount) AS Revenue
FROM zomato_restaurants r
JOIN zomato_orders o
ON r.restaurant_id=o.restaurant_id
WHERE o.order_status='Delivered'
GROUP BY r.restaurant_name
ORDER BY Revenue DESC;

/*2. Restaurants Receiving Most Orders*/
SELECT
r.restaurant_name,
COUNT(o.order_id) AS Total_Orders
FROM zomato_restaurants r
JOIN zomato_orders o
ON r.restaurant_id=o.restaurant_id
GROUP BY r.restaurant_name
ORDER BY Total_Orders DESC;

/*3. Most Popular Cuisine*/
SELECT
r.cusisne,
COUNT(o.order_id) AS Orders
FROM zomato_restaurants r
JOIN zomato_orders o
ON r.restaurant_id=o.restaurant_id
GROUP BY r.cusisne
ORDER BY Orders DESC;

/*4. Rating vs Revenue*/
SELECT
r.restaurant_name,
r.avg_rating,
SUM(o.order_amount) AS Revenue
FROM zomato_restaurants r
JOIN zomato_orders o
ON r.restaurant_id=o.restaurant_id
WHERE o.order_status='Delivered'
GROUP BY
r.restaurant_name,
r.avg_rating
ORDER BY r.avg_rating DESC;

/*5. Bottom 5 Restaurants*/
SELECT
r.restaurant_name,
SUM(o.order_amount) AS Revenue
FROM zomato_restaurants r
JOIN zomato_orders o
ON r.restaurant_id=o.restaurant_id
WHERE o.order_status='Delivered'
GROUP BY r.restaurant_name
ORDER BY Revenue
LIMIT 5;


/*Coupon Analysis*/

/*1. Coupon Usage % */
SELECT
ROUND(
COUNT(
CASE
WHEN discount_amount>0 THEN 1
END
)*100/COUNT(*),2
) AS Coupon_Usage_Percentage
FROM zomato_orders;

/*2. Coupon Users vs Non Coupon Users*/
SELECT
CASE
WHEN discount_amount>0 THEN 'Coupon Used'
ELSE 'No Coupon'
END AS Coupon_Status,
AVG(order_amount) AS Avg_Order_Value
FROM zomato_orders
WHERE order_status='Delivered'
GROUP BY Coupon_Status;

/*3. City Using Most Coupons*/
SELECT
c.City,
COUNT(*) AS Coupon_Orders
FROM zomato_orders o
JOIN zomato_customer c
ON o.customer_id=c.customer_id
WHERE discount_amount>0
GROUP BY c.City
ORDER BY Coupon_Orders DESC;

/*4. Coupon & Retention*/
SELECT
CASE
WHEN discount_amount>0 THEN 'Coupon User'
ELSE 'Non Coupon User'
END AS Customer_Type,
COUNT(DISTINCT customer_id) AS Customers,
AVG(order_amount) AS Avg_Order
FROM zomato_orders
GROUP BY Customer_Type;

/*Cancellation & Refund Analysis*/

/*1. Cancellation Rate*/
SELECT
ROUND(
COUNT(
CASE
WHEN order_status = 'Cancelled' THEN 1
END
) * 100.0 / COUNT(*), 2
) AS Cancellation_Rate
FROM zomato_orders;

/*2. Refund Rate*/
SELECT
ROUND(
COUNT(
CASE
WHEN order_status='Refunded' THEN 1
END
)*100/COUNT(*),2
) AS Refund_Rate
FROM zomato_orders;

/*3. Revenue Lost Due to Cancellation*/
SELECT
SUM(order_amount) AS Revenue_Lost
FROM zomato_orders
WHERE order_status='Cancelled';

/*4. Highest Cancellation Restaurants*/
SELECT
r.restaurant_name,
COUNT(*) AS Cancelled_Orders
FROM zomato_restaurants r
JOIN zomato_orders o
ON r.restaurant_id=o.restaurant_id
WHERE o.order_status='Cancelled'
GROUP BY r.restaurant_name
ORDER BY Cancelled_Orders DESC;

/*Customer Churn Analysis*/

/*1. Churned Customers*/
SELECT
COUNT(*) AS Churned_Customers
FROM
(
SELECT
customer_id,
MAX(STR_TO_DATE(order_timestamp,'%d-%m-%Y')) AS Last_Order
FROM zomato_orders
GROUP BY customer_id
HAVING Last_Order<
DATE_SUB(
(
SELECT MAX(STR_TO_DATE(order_timestamp,'%d-%m-%Y'))
FROM zomato_orders
),
INTERVAL 90 DAY
)
)t;

/*2. Churn Rate*/
SELECT
ROUND(
(
SELECT COUNT(*)
FROM
(
SELECT
customer_id,
MAX(STR_TO_DATE(order_timestamp,'%d-%m-%Y')) AS Last_Order
FROM zomato_orders
GROUP BY customer_id
HAVING Last_Order<
DATE_SUB(
(
SELECT MAX(STR_TO_DATE(order_timestamp,'%d-%m-%Y'))
FROM zomato_orders
),
INTERVAL 90 DAY
)
)t
)
*100/
(
SELECT COUNT(DISTINCT customer_id)
FROM zomato_customer
),
2
) AS Churn_Rate;

/*3. City with Highest Churn*/
SELECT
c.City,
COUNT(*) AS Churned_Customers
FROM zomato_customer c
JOIN
(
SELECT
customer_id,
MAX(STR_TO_DATE(order_timestamp,'%d-%m-%Y')) AS Last_Order
FROM zomato_orders
GROUP BY customer_id
HAVING Last_Order<
DATE_SUB(
(
SELECT MAX(STR_TO_DATE(order_timestamp,'%d-%m-%Y'))
FROM zomato_orders
),
INTERVAL 90 DAY
)
)t
ON c.customer_id=t.customer_id
GROUP BY c.City
ORDER BY Churned_Customers DESC;

/*4. Revenue Lost Due to Churn*/
SELECT
SUM(order_amount) AS Revenue_Lost
FROM zomato_orders
WHERE customer_id IN
(
SELECT customer_id
FROM
(
SELECT
customer_id,
MAX(STR_TO_DATE(order_timestamp,'%d-%m-%Y')) AS Last_Order
FROM zomato_orders
GROUP BY customer_id
HAVING Last_Order<
DATE_SUB(
(
SELECT MAX(STR_TO_DATE(order_timestamp,'%d-%m-%Y'))
FROM zomato_orders
),
INTERVAL 90 DAY
)
)t
);

/*5. High Value Churned Customers*/
SELECT
c.customer_id,
c.Customer_name,
SUM(o.order_amount) AS Revenue
FROM zomato_customer c
JOIN zomato_orders o
ON c.customer_id=o.customer_id
WHERE c.customer_id IN
(
SELECT customer_id
FROM
(
SELECT
customer_id,
MAX(STR_TO_DATE(order_timestamp,'%d-%m-%Y')) AS Last_Order
FROM zomato_orders
GROUP BY customer_id
HAVING Last_Order<
DATE_SUB(
(
SELECT MAX(STR_TO_DATE(order_timestamp,'%d-%m-%Y'))
FROM zomato_orders
),
INTERVAL 90 DAY
)
)t
)
GROUP BY
c.customer_id,
c.Customer_name
ORDER BY Revenue DESC;