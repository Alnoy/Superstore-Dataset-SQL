SELECT `Customer ID`, `Customer Name`, SUM(Profit) as total_profit
FROM new_schema.`sample - superstore`
GROUP BY `Customer ID`,`Customer Name`
ORDER BY total_profit ASC
LIMIT 5;