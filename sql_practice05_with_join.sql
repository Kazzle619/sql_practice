SELECT p.kickoff AS 'キックオフ日時', my_c.name AS '国名1', ene_c.name AS '国名2'
FROM pairings p
LEFT JOIN countries my_c ON p.my_country_id = my_c.id
LEFT JOIN countries ene_c ON p.enemy_country_id = ene_c.id
ORDER BY kickoff
;
