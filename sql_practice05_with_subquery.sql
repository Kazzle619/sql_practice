SELECT p.kickoff AS 'キックオフ日時', (SELECT c.name FROM countries c WHERE p.my_country_id = c.id) AS '国名1', (SELECT c.name FROM countries c WHERE p.enemy_country_id = c.id) AS '国名2'
FROM pairings p
ORDER BY p.kickoff
;
