SELECT p.name AS 名前, p.position AS ポジション, p.club AS 所属クラブ, (
SELECT COUNT(*)
FROM goals g
WHERE g.player_id = p.id
) AS ゴール数
FROM players p
ORDER BY ゴール数 DESC
;
