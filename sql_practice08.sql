SELECT p.position AS ポジション, COUNT(g.id) AS ゴール数
FROM players p
LEFT JOIN goals g
ON p.id = g.player_id
GROUP BY p.position
ORDER BY ゴール数 DESC
;
