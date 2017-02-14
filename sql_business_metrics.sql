/* Analyzing Business Metrics via SQL*/ 

/* Rank the most popular platforms from highest to lowest gameplays */
SELECT platform, COUNT(platform) 
FROM gameplays 
GROUP BY platform 
ORDER BY platform DESC;  

/* Calculate Daily Revenue, the sum of amount made per day */ 
SELECT
  DATE(created_at),
  ROUND(SUM(price), 2)
FROM purchases 
GROUP BY 1
ORDER BY 1;

/* Calculate the average price of a purchase */
SELECT ROUND(AVG(price),2)
FROM purchases; 

/* Calculate the average revenue per platform */
SELECT platform, AVG(price) 
FROM purchases AS P, gameplays AS G 
WHERE P.user_id = G.user_id 
GROUP BY platform; 

/* Calculate Daily Active Users: the number of unique players in-game each day */ 
SELECT 
  DATE(created_at), 
  COUNT(DISTINCT user_id) AS "Daily Active Users" 
FROM gameplays
GROUP BY 1
ORDER BY 1;

/* Calculate Daily ARPPU - Average Revenue per Purchasing User */
/* Daily ARPPU is defined as the sum of revenue divided by the number of purchasers per day */ 
SELECT 
  DATE(created_at),
  ROUND(SUM(price)/ COUNT(DISTINCT user_id), 2) 
  AS ARPPU
FROM purchases
WHERE refunded_at IS NULL 
GROUP BY 1
ORDER BY 1;
