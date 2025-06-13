WITH RankedBilling AS (
  SELECT 
    Customer_ID,
    Contract,
    Monthly_Charges,
    RANK() OVER (PARTITION BY Contract ORDER BY Monthly_Charges DESC) AS rank_within_contract
  FROM Billing
  JOIN Customers USING (Customer_ID)
)
SELECT *
FROM RankedBilling
WHERE rank_within_contract <= 3
ORDER BY Contract, rank_within_contract;