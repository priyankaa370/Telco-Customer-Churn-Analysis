SELECT 
  CASE 
    WHEN Monthly_Charges < 35 THEN '< $35'
    WHEN Monthly_Charges BETWEEN 35 AND 70 THEN '$35–70'
    ELSE '> $70'
  END AS charge_segment,
  COUNT(*) AS total_customers,
  COUNT(*) FILTER (WHERE Churn = 'Yes') AS churned_customers,
  ROUND(COUNT(*) FILTER (WHERE Churn = 'Yes') * 100.0 / COUNT(*), 2) AS churn_rate
FROM Billing
JOIN Customers USING (Customer_ID)
GROUP BY charge_segment
ORDER BY churn_rate DESC;