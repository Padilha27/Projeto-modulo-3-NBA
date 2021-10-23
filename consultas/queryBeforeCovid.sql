# Qual o time da conferência WEST com mais vitórias até a suspenção dos jogos por causa do coronavirus;

select 
team, conference,STANDINGSDATE, w as vitorias 
from 
ranking  
group by team 
having standingsdate= '2020-03-01' and conference='west'; 


# Qual o time da conferência EAST com mais vitórias até a suspenção dos jogos por causa do coronavirus;

select team, conference,STANDINGSDATE, w as vitorias
from
ranking  
group by team 
having standingsdate= '2020-03-01' and conference='east';




 



 