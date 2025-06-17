SELECT Category, AVG(Profit) as p
FROM new_schema.`sample - superstore`
GROUP BY Category;