#Maiores bloqueadores;

SELECT  SUM(BLK) as Bloqueios, PLAYER_NAME AS Jogador
FROM games_details
GROUP BY PLAYER_NAME
ORDER BY Bloqueios DESC 
limit 8;

#Lideres em assistências

SELECT SUM(AST) AS Assistências, PLAYER_NAME
FROM games_details
GROUP BY PLAYER_NAME
ORDER BY Assistências DESC 
LIMIT 10;

#PONTUADORES

SELECT  PLAYER_NAME,
SUM(FG3M) AS 3points
FROM games_details 
GROUP BY  PLAYER_NAME 
ORDER BY 3points DESC 
LIMIT 10;

#Maiores pontuadores seguindo os bancos

SELECT PLAYER_NAME, SUM(PTS) AS PontosFeitos
FROM  games_details 
GROUP BY PLAYER_NAME
ORDER BY PontosFeitos DESC 
LIMIT 9;
