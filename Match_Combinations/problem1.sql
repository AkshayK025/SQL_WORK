 CREATE Database Match_Combinations;
 USE Match_Combinations;



CREATE TABLE teams (
    team_id INT PRIMARY KEY,
    team_name VARCHAR(100)
);

INSERT INTO teams(team_id,team_name) values
(1,'Team A'),
(2,'Team B'),
(3,'Team C'),
(4,'Team D');


SHOW TABLES;
SELECT * FROM teams;

-- Problem statement

/*
1. Generate All Possible Match Combinations Between Teams
Problem:
Given a teams table with team names, write a query to generate all unique match combinations 
(team vs team) without repetition (i.e., A vs B is the same as B vs A).
*/


SELECT 
    concat(
    t1.team_name," ",
    t2.team_name
    )
FROM
    teams t1 
JOIN teams t2 on t1.team_name < t2.team_name


SELECT 
    concat(
    t1.team_name," ",
    t2.team_name
    )
FROM
    teams t1 , teams t2

