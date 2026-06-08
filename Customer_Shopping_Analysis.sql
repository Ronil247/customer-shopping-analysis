

USE customer_shopping_analysis;


-- DATA OVERVIEW

SELECT *
FROM customer_shopping;

SELECT COUNT(*) AS total_customers
FROM customer_shopping;


SELECT DISTINCT Payment_Method
FROM customer_shopping;

SELECT DISTINCT Shipping_Type
FROM customer_shopping;

SELECT DISTINCT Season
FROM customer_shopping;

SELECT DISTINCT Frequency_of_Purchases
FROM customer_shopping;


SELECT Customer_ID, Gender, Purchase_Amount
FROM customer_shopping
WHERE Gender = 'Male';

SELECT Customer_ID, Category, Purchase_Amount
FROM customer_shopping
WHERE Purchase_Amount > 50;

SELECT *
FROM customer_shopping
WHERE Season = 'Winter';


SELECT *
FROM customer_shopping
ORDER BY Purchase_Amount DESC;

SELECT *
FROM customer_shopping
ORDER BY Age ASC;

SELECT *
FROM customer_shopping
LIMIT 10;


SELECT Gender,
COUNT(*) AS total_customers
FROM customer_shopping
GROUP BY Gender;

SELECT Subscription_Status,
COUNT(*) AS customers
FROM customer_shopping
GROUP BY Subscription_Status;

SELECT Frequency_of_Purchases,
COUNT(*) AS customers
FROM customer_shopping
GROUP BY Frequency_of_Purchases;



SELECT Category,
SUM(Purchase_Amount) AS total_revenue
FROM customer_shopping
GROUP BY Category;

SELECT Category,
SUM(Purchase_Amount) AS revenue
FROM customer_shopping
GROUP BY Category
ORDER BY revenue DESC;

SELECT Season,
SUM(Purchase_Amount) AS revenue
FROM customer_shopping
GROUP BY Season;

SELECT Payment_Method,
SUM(Purchase_Amount) AS revenue
FROM customer_shopping
GROUP BY Payment_Method;



SELECT Category,
COUNT(*) AS total_orders
FROM customer_shopping
GROUP BY Category;

SELECT Category,
AVG(Review_Rating) AS avg_rating
FROM customer_shopping
GROUP BY Category;

SELECT Category,
SUM(Purchase_Amount) AS revenue
FROM customer_shopping
GROUP BY Category
HAVING revenue > 40000;



SELECT Shipping_Type,
COUNT(*) AS total_orders
FROM customer_shopping
GROUP BY Shipping_Type;

SELECT Shipping_Type,
AVG(Purchase_Amount) AS avg_purchase
FROM customer_shopping
GROUP BY Shipping_Type;


SELECT Payment_Method,
COUNT(*) AS usage_count
FROM customer_shopping
GROUP BY Payment_Method;

SELECT Payment_Method,
SUM(Purchase_Amount) AS revenue
FROM customer_shopping
GROUP BY Payment_Method;



SELECT Location,
SUM(Purchase_Amount) AS revenue
FROM customer_shopping
GROUP BY Location
ORDER BY revenue DESC
LIMIT 10;

SELECT Gender,
AVG(Purchase_Amount) AS avg_purchase
FROM customer_shopping
GROUP BY Gender;

SELECT Customer_ID,
Purchase_Amount
FROM customer_shopping
WHERE Purchase_Amount >
(
    SELECT AVG(Purchase_Amount)
    FROM customer_shopping
);

SELECT Customer_ID,
Previous_Purchases
FROM customer_shopping
ORDER BY Previous_Purchases DESC
LIMIT 5;