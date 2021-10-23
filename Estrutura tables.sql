#Estruturação tabelas.

CREATE TABLE `games_details` (
  `GAME_ID` int,
  `TEAM_ID` int,
  `TEAM_ABBREVIATION` char(3),
  `TEAM_CITY` varchar(50),
  `PLAYER_ID` int,
  `PLAYER_NAME` varchar(25),
  `START_POSITION` char(1),
  `COMMENT` varchar(50),
  `MIN` varchar(50),
  `FGM` smallint,
  `FGA` smallint,
  `FG_PCT` float,
  `FG3M` smallint,
  `FG3A` smallint,
  `FG3_PCT` float,
  `FTM` smallint,
  `FTA` smallint,
  `FT_PCT` float,
  `OREB` smallint,
  `DREB` smallint,
  `REB` smallint,
  `AST` smallint,
  `STL` smallint,
  `BLK` smallint,
  `TO` smallint,
  `PF` smallint,
  `PTS` smallint,
  `PLUS_MINUS` varchar(50)
);

CREATE TABLE `Games` (
`GAME_DATE_EST` date,
`GAME_ID` bigint,
`GAME_STATUS_TEXT` text,
`HOME_TEAM_ID` bigint,
`VISITOR_TEAM_ID` bigint,
`SEASON` year,
`TEAM_ID_home` bigint,
`PTS_home` double,
`FG_PCT_home` double,
`FT_PCT_home` double,
`FG3_PCT_home` double,
`AST_home` int,
`REB_home` int,
`TEAM_ID_away` bigint,
`PTS_away` int,
`FG_PCT_away` double,
`FT_PCT_away` double,
`FG3_PCT_away` double,
`AST_away` int,
`REB_away` int,
`HOME_TEAM_WINS` int
);

CREATE TABLE `players` (
  `PLAYER_NAME` varchar(50),
  `TEAM_ID` bigint,
  `PLAYER_ID` int,
  `SEASON` year
);

CREATE TABLE `ranking` (
  `TEAM_ID` bigint,
  `LEAGUE_ID` int,
  `SEASON_ID` int,
  `STANDINGSDATE` date,
  `CONFERENCE` varchar(10),
  `TEAM` varchar(50),
  `G` int,
  `W` int,
  `L` int,
  `W_PCT`double,
  `HOME_RECORD` char(5),
  `ROAD_RECORD` char(5)
);

CREATE TABLE `teams` (
  `LEAGUE_ID` int,
  `TEAM_ID` bigint,
  `MIN_YEAR` year,
  `MAX_YEAR` year,
  `ABBREVIATION` varchar(10),
  `NICKNAME` varchar(50),
  `YEARFOUNDED` YEAR,
  `CITY` varchar(50),
  `ARENA` varchar(100),
  `ARENACAPACITY` int,
  `OWNER` varchar(50),
  `GENERALMANAGER` varchar(50),
  `HEADCOACH` varchar(50),
  `DLEAGUEAFFILIATION` varchar(100)
);