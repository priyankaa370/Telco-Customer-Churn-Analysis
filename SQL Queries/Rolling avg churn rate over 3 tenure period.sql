SELECT 
  tenure,
  COUNT(*) FILTER (WHERE Churn = 'Yes') * 1.0 / COUNT(*) AS churn_rate,
  ROUND(AVG(COUNT(*) FILTER (WHERE Churn = 'Yes') * 1.0 / COUNT(*)) 
       OVER (ORDER BY Tenure ROWS BETWEEN 1 PRECEDING AND 1 FOLLOWING), 4) AS rolling_avg_churn_rate
FROM Customers
JOIN tenure ON customers.customer_id = tenure.customer_id
GROUP BY Tenure
ORDER BY Tenure;