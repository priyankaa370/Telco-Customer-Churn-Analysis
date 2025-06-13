SELECT 
    c.Customer_ID,
    t.tenure,
    b.Monthly_Charges,
    ROUND(AVG(b.Monthly_Charges) OVER (
        PARTITION BY t.Tenure
    ), 2) AS avg_charges_same_tenure,
    ROUND(b.Monthly_Charges - AVG(b.Monthly_Charges) OVER (
        PARTITION BY t.Tenure
    ), 2) AS deviation_from_avg
FROM customers c
JOIN 
    Billing b ON c.Customer_ID = b.Customer_ID
JOIN 
	Tenure t ON t.customer_id = b.customer_id
ORDER BY 
    t.Tenure ASC, deviation_from_avg DESC;
