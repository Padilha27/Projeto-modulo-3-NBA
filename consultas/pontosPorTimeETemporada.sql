SELECT 
    t.NICKNAME,
    p.SEASON,
    SUM(
		CASE
			WHEN
			t.TEAM_ID = p.HOME_TEAM_ID 
			THEN
            p.PTS_home
            ELSE
            p.PTS_away
		END
	) AS `PONTOS TOTAIS`
FROM (
	SELECT 
		GAME_ID, 
		HOME_TEAM_ID, 
		VISITOR_TEAM_ID, 
		SEASON, 
		PTS_home, 
		PTS_away,
        HOME_TEAM_WINS
	FROM 
		games
    ) p
	JOIN
	teams t
    ON
    t.TEAM_ID = p.HOME_TEAM_ID OR t.TEAM_ID = p.VISITOR_TEAM_ID
GROUP BY 
	p.SEASON,
    t.TEAM_ID
ORDER BY
	p.SEASON DESC,
    `PONTOS TOTAIS` DESC