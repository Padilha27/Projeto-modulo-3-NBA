#VITÓRIAS EM FINAIS;

SELECT 
    casa.NICKNAME as Time_Da_Casa, visitante.NICKNAME as T_Visitante, GAME_DATE_EST as Dia_do_Jogo,
    case
		when HOME_TEAM_WINS = 1 then casa.NICKNAME
        else visitante.NICKNAME
	end as Vencedor
FROM
    games
inner join
	teams as visitante
on 
	games.VISITOR_TEAM_ID = visitante.TEAM_ID
inner join
	teams as casa
on 
	games.HOME_TEAM_ID = casa.TEAM_ID

;