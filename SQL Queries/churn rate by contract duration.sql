SELECT 
  Contract, 
  COUNT(*) AS total_customers,
  COUNT(*) FILTER (WHERE Churn = 'Yes') AS churned_customers,
  ROUND(COUNT(*) FILTER (WHERE Churn = 'Yes') * 100.0 / COUNT(*), 2) AS churn_rate
FROM Billing
JOIN Customers USING (Customer_ID)
GROUP BY Contract
ORDER BY churn_rate DESC;