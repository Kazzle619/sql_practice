SELECT p.name AS 名前, p.position AS ポジション, p.club AS 所属クラブ, COUNT(*) AS ゴール数
FROM players p
LEFT JOIN goals g
ON p.id = g.player_id
GROUP BY p.id, p.name, p.position, p.club
ORDER BY ゴール数 DESC
;
