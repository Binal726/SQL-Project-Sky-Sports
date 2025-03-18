create database sky;

show databases;

use sky;

select * from sky;
select * from sky1;

#1.	Import both the .CSV files in Dbeaver under the database name Sky_Sports as sky
#2.	Write an sql query to show all the UNIQUE team names 

select distinct(team) from sky1;

#3.	Write an SQL query to show name of team which has rank 1 from group 7

select team from sky where `rank` =1 and `group` =7;

#4.	Write an sql query to show count of all teams 
select count(distinct team) from sky;

#5.	Write  a SQL query to show matches_played by each team

select team, count(matches_played) from sky 
group by team
order by count(matches_played)desc;

#6.	Write an SQL query to show team, percent of wins with respect to matches_played by each team and name the resulting column as wins_percent

select team, 100.0*(wins/matches_played) as wins_percent  from sky;

#7.	Write an SQL query to show which team has maximum goals_scored and their count

select max(goals_scored) from sky; #9
select count(goals_scored) from  sky; #32

select team,goals_scored from sky where goals_scored =(select max(goals_scored) from sky);

#8.	 Write an SQL query to show percent of draws with respect to matches_played round of to 2 digits by each team

select team , round(100.0*(draws/matches_played),2) from sky;

#9.	 Write an SQL query to show which team has minimum goals_scored and their count
select team,goals_scored from sky where goals_scored =(select min(goals_scored) from sky);

#10.	 Write an SQL query to show percent of losses with respect to matches_played by each team in ascending order by losses and name the resulting column as losses_percent

select team ,100.0*(losses/matches_played) from sky
order by team desc;

#11.	Write an SQL query to show the average goal_difference 
select avg(goal_difference)from sky;

#12.	 Write an SQL query to show name of the team where points are 0
select team from sky where points =0;

#13.	Write a SQL query to show all data where expected_goal_scored is less than exp_goal_conceded

select * from sky where expected_goal_scored < exp_goal_conceded ;

#14.	Write an SQL query to show data where exp_goal_difference is in between -0.5 and 0.5

select * from sky where exp_goal_difference between -0.5 and 0.5;

#15.	Write an SQL query to show all data in ascending order by exp_goal_difference_per_90

select * from sky
order by exp_goal_difference_per_90 ;

#16.	Write an SQL query to show team which has maximum number of players_used

select team , max(players_used) from sky1
group by team 
order by max(players_used) ;

#17.	Write an SQL query to show each team name and avg_age in ascending order by avg_age

select team , avg_age  from sky1
order by avg_age asc ;


#18.	Write an sql query to show average possession of teams 

select team,avg(possession) from sky1
group by team 
order by avg(possession)desc;

#19.	Write a SQL query to show team which has played atleast 5 games

select matches_played from sky where matches_played >=5;

#20.	Write an SQL query to show all data for which minutes is greater than 600

select * from sky1 where minutes >=600;

#21.	Write an SQL query to show team, goals, assists in ascending order by goals

select team , goals , assists from sky1
order by assists asc;

#22.	Write an SQL query to show team, pens_made, pens_att in descending order by pens_made

select team , pens_made , pens_att from sky1
order by pens_att desc;

#23.	Write an SQL query to show team, cards_yellow, cards_red where cards_red is equal to 1 in ascending order by cards_yellow 

select team , cards_yellow from sky1 where cards_red =1
order by cards_yellow asc;

#24.	Write an SQL query to show team, goals_per90, assists_per90, goals_assists_per90 in descending order by goals_assists_per90 

select team,goals_per90,assists_per90,goals_assists_per90 from sky1
order by goals_assists_per90 desc;

#25.	Write an SQL query to show team, goals_pens_per90, goals_assists_pens_per90 in ascending order by goals_assists_pens_per90 

select team,goals_pens_per90,goals_assists_pens_per90 from sky1
order by goals_assists_pens_per90 asc;

#26.	Write an SQL query to show team, shots, shots_on_target, shots_on_target_pct where shots_on_target_pct is less than 30 in ascending order by shots_on_target_pct 

select team,shots_on_target,shots_on_target_pct from sky1
where shots_on_target_pct <30
order by shots_on_target_pct asc;

#27.	Write an SQL query to show team, shots_per90, shots_on_target_per90 for team Belgium

select team,shots_per90,shots_on_target_per90 from sky1
where team='Belgium';

#28.	 Write an SQL query to show team, goals_per_shot, goals_per_shot_on_target, average_shot_distance in descending order by average_shot_distance 

select team ,goals_per_shot,goals_per_shot_on_target,average_shot_distance from sky1
order by average_shot_distance desc;

#29.	Write an SQL query to show team, errors, touches for which errors is 0 and touches is less than 1500 

select team,errors,touches from sky1
where touches <1500 and errors =0;

#30.	Write an SQL query to show team, fouls which has maximum number of fouls

select team , max(fouls) from sky1
group by team 
order by max(fouls) desc;


#31.	Write an SQL query to show team, offisdes which has offsides less than 10 or greater than 20

select team ,offsides from sky1
where offsides <10 or offsides >20;

#32.	Write an SQL query to show team, aerials_won, aerials_lost, aerials_won_pct in descending order by aerials_won_pct 

select team , aerials_won,aerials_lost,aerials_won_pct from sky1
order by aerials_won_pct desc;

#33.	Write an SQL query to show number of teams each group has!

select `group` , count(team) from sky
group by `group` 
order by count(team) ;

#34.	Write a SQL query to show team names group 6 has

select team from sky where `group` =6;

#35.	Write an SQL query to show Australia belongs to which group 

select team , `group` from sky
where team='Australia';

#36.	Write an SQL query to show group, average wins by each group 

select `group` ,avg(wins) from sky
group by `group` 
order by avg(wins)desc;

#37.	Write an SQL query to show group, maximum expected_goal_scored by each group in ascending order by expected_goal_scored

select `group` ,max(expected_goal_scored)from sky
group by `group` 
order by max(expected_goal_scored) asc;

#38.	Write an SQL query to show group, minimum exp_goal_conceded by each group in descending order by exp_goal_conceded 

select `group`, min(expected_goal_scored) from sky
group by `group` 
order by min(expected_goal_scored) desc;

#39.	Write an SQL query to show group, average exp_goal_difference_per_90 for each group in ascending order by exp_goal_difference_per_90 

select `group`, avg(exp_goal_difference_per_90) from sky
group by `group` 
order by avg(exp_goal_difference_per_90) asc;

#40.	Write an SQL query to show which team has equal number of goals_scored and goals_against

select team from sky 
where goals_scored = goals_against ;

#41.	Write an SQL query to show which team has maximum players_used 

select team , max(players_used) from sky1
group by team 
order by max(players_used) desc
limit 1;


#42.	Write an SQL query to show team, players_used, avg_age, games, minutes where minutes lessthan 500 and greater than 200 

select team ,players_used,avg_age,games from sky1
where minutes <500 and minutes >200;

#43.	Write an SQL query to show all data of group_stats in ascending order BY points

select * from sky
order by points asc;

#44.	Write an SQL query to show ALL UNIQUE team in ascending order by team

select distinct(team) from sky s 
order by team asc ;

#45.	 Write an SQL query to show average avg_age of each group and arrange it in descending order by avg_age. 

select team , avg(avg_age) from sky1
group by team order by avg(avg_age);

#46.	Write an SQL query to show sum of fouls for each group and arrange it in ascending order by fouls.

select sky.`group` , sum(sky1.fouls) from sky1 
inner join sky
on sky1.team =sky.team 
group by sky.`group` 
order by sum(sky1.fouls) desc;

#47.	Write an SQL query to show total number of games for each group and arrange it in descending order by games. 

select sky.`group` ,sum(sky1.games) from sky1
inner join sky
on sky1.team =sky.team 
group by sky.`group` 
order by sum(sky1.games) desc;

#48.	Write an SQL query to show total number of players_used for each group and arrange it in ascending order by players_used. 

select sky.`group` , sum(sky1.players_used) from sky1 inner join sky on sky1.team =sky.team 
group by sky.`group` 
order by sum(sky1.players_used);

#49.	Write an SQL query to show total number of offsides for each group and arrange it in ascending order by offsides.


select sky.`group` ,sum(sky1.offsides) from sky1 inner join sky on sky1.team =sky.team group by sky.`group` order by sum(sky1.offsides) asc;

#50.	Write an SQL query to show average passes_pct for each group and arrange it in descending order by passes_pct.

select sky.`group` , avg(sky1.passes_pct) from sky1 inner join sky on sky1.team =sky.team group by sky.`group` order by avg(sky1.passes_pct) desc;

#51.	Write an SQL query to show average goals_per90 for each group and arrange it in ascending order by goals_per90.

select sky.`group` , avg(sky1.goals_per90) from sky1 inner join sky on sky1.team =sky.team group by sky.`group` order by avg(sky1.goals_per90);





