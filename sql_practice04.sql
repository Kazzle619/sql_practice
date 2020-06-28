SELECT (SELECT c.name FROM countries c WHERE p.country_id = c.id) AS '国名', AVG(p.height)
FROM players p
GROUP BY p.country_id
ORDER BY AVG(p.height) DESC
;
