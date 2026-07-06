/*
Problem: 1757. Recyclable and Low Fat Products
Difficulty: Easy

Business Problem:
Find products that are both low-fat and recyclable.

Skills:
- SELECT
- WHERE
- AND
*/

SELECT product_id
FROM Products
WHERE low_fats = 'Y'
  AND recyclable = 'Y';
