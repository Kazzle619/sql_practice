SELECT c.name AS '国名', AVG(p.height) AS '平均身長'
FROM countries c
JOIN players p
ON c.id = p.country_id
GROUP BY c.id, c.name
ORDER BY AVG(p.height) DESC
;
