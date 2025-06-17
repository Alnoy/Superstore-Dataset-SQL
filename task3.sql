SELECT 
    Category,
    SUM(Profit) AS total_profit
FROM new_schema.`sample - superstore`
WHERE `Customer ID` IN (
    SELECT `Customer ID`
    FROM (
        SELECT 
            `Customer ID`,
            SUM(Profit) AS total_profit
        FROM new_schema.`sample - superstore`
        GROUP BY `Customer ID`
        HAVING total_profit < 0
        ORDER BY total_profit ASC
    ) AS bad_customers
)
GROUP BY Category
ORDER BY Category, total_profit ASC;