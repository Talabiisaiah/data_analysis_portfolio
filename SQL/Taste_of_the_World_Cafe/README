CREATE DATABASE Taste_of_the_World_Cafe;
USE Taste_of_the_World_Cafe;
-- menu_items and order_details tables were imported to the database

										-- TASK 1
-- 1. View the menu_items table and write a query to find the number of items on the menu
SELECT * FROM menu_items;
SELECT count(*) item_name FROM menu_items;

-- 2. What are the least and most expensive items on the menu?
SELECT min(price) price FROM menu_items;
SELECT max(price) price FROM menu_items;

-- 3. How many Italian dishes are on the menu? What are the least and most expensive Italian dishes on the menu?
SELECT count(*) FROM menu_items WHERE category = 'italian';
SELECT min(price) FROM menu_items WHERE category = 'italian';
SELECT max(price) FROM menu_items WHERE category = 'italian';

-- 4. How many dishes are in each category? What is the average dish price within each category?
SELECT category, COUNT(*) AS total_no FROM menu_items GROUP BY category;
SELECT category, AVG(price) AS avg_price FROM menu_items GROUP BY category;

														-- TASK 2
-- 1. View the order_details table. What is the date range of the table?
SELECT * from order_details;
SELECT min(order_date) AS min_order_date, max(order_date) AS max_order_date FROM order_details;

-- 2. How many orders were made within this date range? How many items were ordered within this date range?
SELECT count(DISTINCT order_id) AS total_no_of_order FROM order_details;
SELECT count(DISTINCT item_id) AS total_number_of_item FROM order_details;

-- 3. Which orders had the most number of items?
SELECT order_id, COUNT(*) AS most_no_of_items 
FROM order_details 
GROUP BY order_id 
ORDER BY most_no_of_items DESC 
LIMIT 5;

-- 4. How many orders had more than 12 items?
SELECT order_id, count(item_id) AS orders_more_than_12 
FROM order_details 
GROUP BY order_id 
HAVING orders_more_than_12 > 12;

												-- TASK 3
-- 1. Combine the menu_items and order_details tables into a single table
SELECT * FROM ORDER_DETAILS OD
LEFT JOIN MENU_ITEMS MI
ON OD.ITEM_ID = MI.MENU_ITEM_ID;

-- 2. what were the least and most ordered items? What categories were they in?
SELECT ITEM_NAME, COUNT(ORDER_DETAILS_ID) AS NO_PURCHASE 
FROM ORDER_DETAILS OD 
LEFT JOIN MENU_ITEMS MI 
ON OD.ITEM_ID = MI.MENU_ITEM_ID 
GROUP BY ITEM_NAME
ORDER BY NO_PURCHASE ASC
LIMIT 1;

SELECT ITEM_NAME, COUNT(ORDER_DETAILS_ID) AS NO_PURCHASE 
FROM ORDER_DETAILS OD 
LEFT JOIN MENU_ITEMS MI 
ON OD.ITEM_ID = MI.MENU_ITEM_ID 
GROUP BY ITEM_NAME
ORDER BY NO_PURCHASE DESC
LIMIT 1;


SELECT ITEM_NAME, CATEGORY, COUNT(ORDER_DETAILS_ID) AS NO_PURCHASE 
FROM ORDER_DETAILS OD 
LEFT JOIN MENU_ITEMS MI 
ON OD.ITEM_ID = MI.MENU_ITEM_ID 
GROUP BY ITEM_NAME, CATEGORY
ORDER BY NO_PURCHASE ASC
LIMIT 1;

SELECT ITEM_NAME, CATEGORY, COUNT(ORDER_DETAILS_ID) AS NO_PURCHASE 
FROM ORDER_DETAILS OD 
LEFT JOIN MENU_ITEMS MI 
ON OD.ITEM_ID = MI.MENU_ITEM_ID 
GROUP BY ITEM_NAME, CATEGORY
ORDER BY NO_PURCHASE DESC
LIMIT 1; 

-- 3. What were the top 5 orders that spent the most money?
SELECT ORDER_ID, SUM(PRICE) AS TOTAL_SPENT
FROM ORDER_DETAILS OD
LEFT JOIN MENU_ITEMS MI
ON OD.ITEM_ID = MI.MENU_ITEM_ID
GROUP BY ORDER_ID
ORDER BY TOTAL_SPENT DESC LIMIT 5;

-- 4. View the details of the highest spend order. Which specific items were purchased?
-- FOR THE HIGHEST SPEND ORDER
SELECT * FROM ORDER_DETAILS OD
LEFT JOIN MENU_ITEMS MI
ON OD.ITEM_ID = MI.MENU_ITEM_ID
WHERE ORDER_ID IN (330);

-- FOR SPECIFIC ITEMS PURCHASED
SELECT ITEM_NAME, COUNT(ITEM_ID) AS NUM_ITEM 
FROM ORDER_DETAILS OD
LEFT JOIN MENU_ITEMS MI
ON OD.ITEM_ID = MI.MENU_ITEM_ID
WHERE ORDER_ID = 330
GROUP BY ITEM_NAME;

-- 5. View the details of the top 5 highest spend orders
SELECT ITEM_NAME, COUNT(ITEM_ID) AS HIGHEST_SPEND_ORDERS 
FROM ORDER_DETAILS OD
LEFT JOIN MENU_ITEMS MI
ON OD.ITEM_ID = MI.MENU_ITEM_ID
WHERE ORDER_ID IN (330, 17, 394, 144, 9)
GROUP BY ITEM_NAME;

-- 6. How much was the most expensive order in the dataset?
SELECT CATEGORY, ORDER_ID, PRICE
FROM ORDER_DETAILS OD
LEFT JOIN MENU_ITEMS MI
ON OD.ITEM_ID = MI.MENU_ITEM_ID
GROUP BY CATEGORY, ORDER_ID, PRICE
ORDER BY PRICE DESC LIMIT 1; 
