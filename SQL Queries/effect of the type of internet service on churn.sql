SELECT 
  Internet_Service, 
  COUNT(*) AS total_customers,
  COUNT(*) FILTER (WHERE Churn = 'Yes') AS churned_customers,
  ROUND(COUNT(*) FILTER (WHERE Churn = 'Yes') * 100.0 / COUNT(*), 2) AS churn_rate
FROM telcoservices
JOIN Customers USING (Customer_ID)
GROUP BY Internet_Service
ORDER BY churn_rate DESC;