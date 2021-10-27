#Trajetória Carmelo NBA;
SELECT 
    PLAYER_NAME, NICKNAME, CITY, SEASON
FROM
    teams
        INNER JOIN
    players ON teams.TEAM_ID = players.TEAM_ID
WHERE
    PLAYER_NAME LIKE 'Carmelo Anthony'
ORDER BY PLAYER_NAME , SEASON
;


#Times com as piores trajetórias nos últimos anos na NBA;

SELECT  
 distinct TEAM , L , W , SEASON_ID
FROM
ranking
where	
L > 35 
limit 5 ;





 
