SELECT V.customer_id "customer_id",
       count(v.visit_id) "count_no_trans" 
FROM Visits V 
LEFT JOIN Transactions T 
    ON V.visit_id = T.visit_id
WHERE T.transaction_id IS NULL
GROUP BY V.customer_id

/*LeetCode 1581 - Customer Who Visited but Did Not Make Any Transactions
Problem
Write a query to find the IDs of customers who visited the mall but did not make any transactions, along with the number of such visits.
Return the result table in any order.*/
/*
Explanation
Visits stores every customer visit.
Transactions stores only the visits where a purchase was made.
LEFT JOIN keeps all records from the Visits table.
WHERE T.transaction_id IS NULL filters visits that have no matching transaction.
COUNT(V.visit_id) counts the number of visits without a transaction for each customer.
GROUP BY V.customer_id groups the results by customer.*/

/*SQL Concepts Used
SELECT
LEFT JOIN
WHERE
IS NULL*/

  
COUNT()
GROUP BY
Table Aliases (V, T)
