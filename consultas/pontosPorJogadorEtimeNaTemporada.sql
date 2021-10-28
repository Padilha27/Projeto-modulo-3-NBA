SELECT 
	gd.PLAYER_NAME AS JOGADOR,
	SUM(gd.PTS) AS PONTOS,
    g.SEASON AS TEMPORADA,
    t.nickname AS `TIME`
	FROM 
    games g
	INNER JOIN 
		games_details gd
		ON 
        g.GAME_ID = gd.GAME_ID
	JOIN 
		teams t
		ON
        gd.TEAM_ID = t.TEAM_ID
	GROUP BY 
		gd.PLAYER_ID,
        gd.PLAYER_NAME,
        g.SEASON
	ORDER BY
    PONTOS, SEASON DESC;