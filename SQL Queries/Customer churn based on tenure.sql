SELECT 
  CASE 
    WHEN Tenure < 12 THEN '0-1 year'
    WHEN Tenure BETWEEN 12 AND 24 THEN '1-2 years'
    WHEN Tenure BETWEEN 25 AND 48 THEN '2-4 years'
    ELSE '4+ years'
  END AS tenure_group,
  COUNT(*) AS total_customers,
  COUNT(*) FILTER (WHERE Churn = 'Yes') AS churned_customers,
  ROUND(COUNT(*) FILTER (WHERE Churn = 'Yes') * 100.0 / COUNT(*), 2) AS churn_rate
FROM Tenure
JOIN Customers USING (Customer_ID)
GROUP BY tenure_group
ORDER BY churn_rate DESC;