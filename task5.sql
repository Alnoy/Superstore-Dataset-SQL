SELECT 
	State,
    SUM(Profit) as p
FROM new_schema.`sample - superstore` as s 
GROUP BY State
HAVING p < 0
ORDER BY p ASC;