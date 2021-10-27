SELECT 
	YEARFOUNDED ,
count(NICKNAME) as fundacaoTimes
FROM 
	Team
group by 
	YEARFOUNDED
order by 
	YEARFOUNDED asc
;
