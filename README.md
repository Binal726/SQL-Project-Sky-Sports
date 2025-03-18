# SQL-Project-Sky-Sports
Sky Sports Channel's coverage of the FIFA World Cup includes a post-match TV program called "Football Digest: Post Match Analysis". The
Football Pundits on the show discusses about the insights and game play as per their expertise and insights derived by the Sports Analyst at the backend. The Sports Analyst is responsible for analyzing data from each match to provide detailed statistics on the program related to the FIFA World Cup in Qatar and hand it over to the presenter and pundits of the "Football Digest: Post Match Analysis". 

To carry out this task, the Sports Analyst uses MySQL to access two tables of data: one containing information on each team's performance in each game, and another containing data on individual team statistics. Both the tables gets updated with each match at Fifa World Cup. The analyst uses this data to provide insights into each match, highlighting key moments, performances, and tactical decisions made by the coaches. These insights are presented on the program, giving viewers a deeper understanding of each match's events and the factors that contributed to a team's success or failure.

Overall, the Sports Analyst's role at Sky Sports Channel is essential to providing viewers with a comprehensive analysis of each match. By using MySQL to analyze data on team and player performance, the analyst will deliver valuable insights that will help viewers understand the intricacies of the game and the factors that can make or break a team's success at the FIFA World Cup.

In our case study, we have two tables, group_stage_team_stats and overall_wc_stats that are being used by the Sports Analyst at Sky Sports Channel to provide detailed statistics and insights on the FIFA World Cup matches. The first table, group_stage_team_stats, which contains information on each team's performance in each game, has columns such as team name, game date, goals scored, goals conceded, shots on target, shots off target, possession, and many more. The second table, overall_wc_stats , which contains overall statistics of each team at the current FIFA World Cup, has columns such as player name, position, number of appearances, goals scored, assists, yellow and red cards, and other relevant information. With both tables being updated after each match, the analyst is able to extract valuable insights into the game, highlighting key moments, performances, and tactical decisions made by the coaches. Both the tables contain a column team, which is common and can be used for joining.

The tables group_stage_team_stats and overall_wc_stats are .CSV files and has the following columns, details of which are as follows:

Description of group_stage_team_stats Table:

• group - the group that the team belongs to in the current FIFA World Cup tournament
• rank - the current ranking of the team based on their performance in the tournament
• team - the name of the team
• matches_played - the total number of matches played by the team in the tournament
• wins - the number of matches won by the team in the tournament
• draws - the number of matches drawn by the team in the tournament
• losses - the number of matches lost by the team in the tournament
• goals_scored - the total number of goals scored by the team in the tournament
• goals_against - the total number of goals conceded by the team in the tournament
• goal_difference - the difference between the total number of goals scored and the total number of goals conceded by the team in the tournament
• points - the total number of points earned by the team in the tournament based on the FIFA World Cup point system (3 points for a win, 1 point for a draw, and 0 points for a loss)
• expected_goal_scored - the expected number of goals that the team is expected to score based on their performance in the tournament so far
• exp_goal_conceded - the expected number of goals that the team is expected to concede based on their performance in the tournament so far
•  exp_goal_difference - the difference between the expected number of goals scored and the expected number of goals conceded by the team in the tournament
• exp_goal_difference_per_90 - the expected goal difference per 90 minutes played by the team in the tournament, which is calculated by dividing the expected goal difference by the total number of minutes played by the team in the tournament and multiplying the result by 90. This is a useful metric for comparing teams' defensive and offensive abilities on a per-minute basis.

Description of overall_wc_stats Table:

• players_used: (Number of Players Used in Games) The total number of players utilized in the games.
•  avg_age: (Average Age) The average age of players weighted by minutes played.
• possession: (Possession) The percentage of passes attempted, indicating possession of the ball.
• games: (Matches Played) The number of games played by a player or squad.
• games_starts: (Games Started) The number of games started by a player.
• minutes_90s: (90s Played) The number of 90-minute intervals played by a player, calculated by dividing the total minutes played by 90.
• goals: (Goals) The number of goals scored or allowed.
• assists: (Assists) The number of assists provided.
• goals_pens: (Non-Penalty Goals) The number of goals scored excluding penalty kicks.
• pens_made: (Penalty Kicks Made) The number of penalty kicks successfully converted.
• pens_att: (Penalty Kicks Attempted) The number of penalty kicks taken.
• cards_yellow: (Yellow Cards) The number of yellow cards received.
• cards_red: (Red Cards) The number of red cards received.
• goals_per90: (Goals per 90 minutes) The average number of goals scored per 90 minutes of play, with a minimum qualification of 30 minutes played per squad game to be considered a leader.
• assists_per90: (Assists per 90 minutes) The average number of assists provided per 90 minutes of play, with a minimum qualification of 30 minutes played per squad game to be considered a leader.
• goals_assists_per90: (Goals and Assists per 90 minutes) The combined average of goals and assists per 90 minutes of play, with a minimum qualification of 30 minutes played per squad game to be considered a leader.
• goals_pens_per90: (Goals minus Penalty Kicks made per 90 minutes) The average number of goals scored excluding penalty kicks per 90 minutes of play, with a minimum qualification of 30 minutes played per squad game to be considered a leader.
• goals_assists_pens_per90: (Goals plus Assists minus Penalty Kicks made per 90 minutes) The combined average of goals and assists minus penalty kicks made per 90 minutes of play, with a minimum qualification of 30 minutes played per squad game to be considered a leader.
• xg: (Expected Goals) The expected number of goals based on statistical analysis, including penalty kicks but excluding penalty shootouts (unless specified). Provided by Opta.
• npxg: (Non-Penalty Expected Goals) The expected number of goals excluding penalty kicks based on statistical analysis. Provided by Opta.
• xg_assist: (Expected Assisted Goals) The expected number of goals that follow a pass leading to a shot based on statistical analysis. Provided by Opta.
• npxg_xg_assist: (Non-Penalty Expected Goals plus Assisted Goals) The combined expected number of goals excluding penalty kicks plus assisted goals based on statistical analysis, excluding penalty shootouts (unless specified). Provided by Opta, with a minimum qualification of 30 minutes played per squad game to be considered a leader.
• xg_per90: (Expected Goals per 90 minutes) The average expected number of goals per 90 minutes of play, including penalty kicks but excluding penalty shootouts (unless specified). Provided by Opta, with a minimum qualification of 30 minutes played per squad game to be considered a leader.
• xg_assist_per90: (Expected Assisted Goals per 90 minutes) The average expected number of assisted goals per 90 minutes of play based on statistical analysis. Provided by Opta, with a minimum qualification of 30 minutes played per squad game to be considered a leader.
• xg_xg_assist_per90: (Expected Goals plus Assisted Goals per 90 minutes) The combined average of expected goals and assisted goals per 90 minutes of play, including penalty kicks but excluding penalty shootouts (unless specified). Provided by Opta, with a minimum qualification of 30 minutes played per squad game to be considered a leader.
• npxg_per90: (Non-Penalty Expected Goals per 90 minutes) The average expected number of goals excluding penalty kicks per 90 minutes of play based on statistical analysis. Provided by Opta, with a minimum qualification of 30 minutes played per squad game to be considered a leader.
• npxg_xg_assist_per90: (Non-Penalty Expected Goals plus Assisted Goals per 90 minutes) The combined average of expected goals excluding penalty kicks plus assisted goals per 90 minutes of play based on statistical analysis, excluding penalty shootouts (unless specified). Provided by Opta, with a minimum qualification of 30 minutes played per squad game to be considered a leader.
• gk_games: (Matches Played by Goalkeeper) The number of matches played by the goalkeeper or squad.
• gk_games_starts: (Games Started by Goalkeeper) The number of games started by the goalkeeper.
• gk_goals_against: (Goals Against by Goalkeeper) The number of goals conceded by the goalkeeper.
• gk_goals_against_per90: Goals Against per 90 minutes. This column represents the average number of goals conceded by the goalkeeper per 90 minutes of play.
• gk_shots_on_target_against: Shots on Target Against. This column indicates the total number of shots on target faced by the goalkeeper.
• gk_save_pct: Save Percentage. This column calculates the percentage of shots on target against the goalkeeper that are saved, using the formula (Shots on Target Against - Goals Against) / Shots on Target Against. It's important to note that not all shots on target are stopped by the goalkeeper, as some may be saved by defenders. This metric does not include penalty kicks.
• gk_wins: Wins. This column represents the number of matches won by the goalkeeper or the squad they play for.
• gk_ties: Draws. This column denotes the number of matches resulting in a draw for the goalkeeper or the squad.
• gk_losses: Losses. This column indicates the number of matches lost by the goalkeeper or the squad.
• gk_clean_sheets: Clean Sheets. This column represents the number of full matches played by the goalkeeper in which no goals are allowed.
• gk_clean_sheets_pct: Clean Sheet Percentage. This column calculates the percentage of matches resulting in clean sheets for the goalkeeper. It is the ratio of clean sheets to total matches played.
• gk_pens_att: Penalty Kicks Attempted. This column denotes the total number of penalty kicks attempted against the goalkeeper.
• gk_pens_allowed: Penalty Kicks Allowed. This column represents the total number of penalty kicks allowed by the goalkeeper.
• gk_pens_saved: Penalty Kicks Saved. This column indicates the total number of penalty kicks saved by the goalkeeper.
• gk_pens_missed: Penalty Kicks Missed. This column represents the total number of penalty kicks missed by the opponents against the goalkeeper.
• gk_pens_save_pct: Penalty Save Percentage. This column calculates the percentage of penalty kicks saved by the goalkeeper, using the formula Penalty Kick Goals Against / Penalty Kick Attempts. It's important to note that penalty shots that miss the target are not included in this calculation.
• gk_free_kick_goals_against: Free Kick Goals Against. This column denotes the number of goals scored against the goalkeeper from free kicks.
• gk_corner_kick_goals_against: Corner Kick Goals Against. This column represents the number of goals scored against the goalkeeper from corner kicks.
• gk_own_goals_against: Own Goals Scored Against Goalkeeper. This column indicates the number of own goals scored against the goalkeeper by their own team.
• gk_psxg: Post-Shot Expected Goals. This column represents the expected goals based on the likelihood of the goalkeeper saving the shot after it has been taken. It includes penalty kicks but excludes penalty shootouts (unless specified). Provided by Opta. An underline indicates missing data, which will be updated when available.
• gk_psnpxg_per_shot_on_target_against: Post-Shot Expected Goals per Shot on Target. This column represents the expected goals per shot on target faced by the goalkeeper, excluding penalty kicks. It indicates how difficult the shots on target are to save and the likelihood of scoring. An underline indicates missing data, which will be updated when available.
• gk_psxg_net: Post-Shot Expected Goals minus Goals Allowed. This column represents the difference between the post-shot expected goals and the actual goals allowed by the goalkeeper. Positive numbers suggest better luck or an above-average ability to stop
• gk_psxg_net_per90: Post-Shot Expected Goals minus Goals Allowed per 90 minutes. This column represents the difference between the post-shot expected goals and the actual goals allowed by the goalkeeper per 90 minutes of play. Positive numbers suggest better luck or an above-average ability to stop shots. It does not include own goals. PSxG is expected goals based on how likely the goalkeeper is to save the shot. xG totals include penalty kicks but exclude penalty shootouts (unless otherwise noted). Provided by Opta. An underline indicates missing data, which will be updated when available.
• gk_passes_completed_launched: Passes Completed (Passes Longer than 40 Yards). This column represents the number of passes longer than 40 yards that were successfully completed by the goalkeeper.
• gk_passes_launched: Passes Attempted (Passes Longer than 40 Yards). This column denotes the total number of passes longer than 40 yards attempted by the goalkeeper.
• gk_passes_pct_launched: Pass Completion Percentage (Passes Longer than 40 Yards). This column calculates the percentage of passes longer than 40 yards that were successfully completed by the goalkeeper.
• gk_passes: Passes Attempted (Excluding Goal Kicks). This column represents the total number of passes attempted by the goalkeeper, excluding goal kicks.
• gk_passes_throws: Throws Attempted. This column denotes the total number of throws attempted by the goalkeeper.
• gk_pct_passes_launched: Percentage of Passes that were Launched (Excluding Goal Kicks and Passes Longer than 40 Yards). This column calculates the percentage of passes (excluding goal kicks) that were longer than 40 yards and launched by the goalkeeper.
• gk_passes_length_avg: Average Length of Passes (in Yards, Excluding Goal Kicks). This column represents the average length of passes made by the goalkeeper, excluding goal kicks.
• gk_goal_kicks: Goal Kicks Attempted. This column denotes the total number of goal kicks attempted by the goalkeeper.
• gk_pct_goal_kicks_launched: Percentage of Goal Kicks that were Launched (Passes Longer than 40 Yards). This column calculates the percentage of goal kicks that were longer than 40 yards and launched by the goalkeeper.
• gk_goal_kick_length_avg: Average Length of Goal Kicks (in Yards). This column represents the average length of goal kicks taken by the goalkeeper.
• gk_crosses: Opponent's Attempted Crosses into Penalty Area. This column denotes the total number of crosses attempted by the opponent into the penalty area.
• gk_crosses_stopped: Number of Crosses into Penalty Area Successfully Stopped by the Goalkeeper. This column represents the number of crosses into the penalty area that were successfully stopped by the goalkeeper.
• gk_crosses_stopped_pct: Percentage of Crosses into Penalty Area Successfully Stopped by the Goalkeeper. This column calculates the percentage of crosses into the penalty area that were successfully stopped by the goalkeeper.
• gk_def_actions_outside_pen_area: Number of Defensive Actions Outside of Penalty Area. This column denotes the number of defensive actions performed by the goalkeeper outside of the penalty area.
• gk_def_actions_outside_pen_area_per90: Defensive Actions Outside of Penalty Area per 90 Minutes. This column represents the average number of defensive actions performed by the goalkeeper outside of the penalty area per 90 minutes of play.
• gk_avg_distance_def_actions: Average Distance from Goal (in Yards) of All Defensive Actions. This column represents the average distance from the goal of all defensive actions performed by the goalkeeper.
• shots: Total Shots (Excluding Penalty Kicks). This column represents the total number of shots taken, excluding penalty kicks.
• shots_on_target: Shots on Target (Excluding Penalty Kicks). This column denotes the total number of shots that were on target, excluding penalty kicks. Note: Shots on target do not include penalty kicks.
• shots_on_target_pct: Percentage of Shots on Target. This column represents the percentage of shots that are on target. To qualify as a leader, a minimum of .395 shots per squad game is required. Note: Shots on target do not include penalty kicks.
• shots_per90: Total Shots per 90 Minutes. This column denotes the average number of shots taken per 90 minutes of play. To qualify as a leader, a minimum of 30 minutes played per squad game is required.
• shots_on_target_per90: Shots on Target per 90 Minutes. This column represents the average number of shots on target per 90 minutes of play. To qualify as a leader, a minimum of 30 minutes played per squad game is required. Note: Shots on target do not include penalty kicks.
• goals_per_shot: Goals per Shot. This column calculates the average number of goals scored per shot taken. To qualify as a leader, a minimum of .395 shots per squad game is required.
• goals_per_shot_on_target: Goals per Shot on Target. This column represents the average number of goals scored per shot on target. To qualify as a leader, a minimum of .111 shots on target per squad game is required. Note: Shots on target do not include penalty kicks.
• average_shot_distance: Average Distance from Goal (in Yards) of All Shots Taken. This column denotes the average distance from the goal of all shots taken. To qualify as a leader, a minimum of .395 shots per squad game is required. This metric does not include penalty kicks.
• shots_free_kicks: Shots from Free Kicks. This column represents the number of shots taken from free kicks.
• npxg_per_shot: Non-Penalty Expected Goals per Shot. This column calculates the expected goals per shot, excluding penalty kicks. To qualify as a leader, a minimum of .395 shots per squad game is required.
• xg_net: Goals minus Expected Goals. This column represents the difference between the actual goals scored and the expected goals. xG totals include penalty kicks but do not include penalty shootouts. An underline indicates that there is a match missing data, which will be updated when available.
• npxg_net: Non-Penalty Goals minus Non-Penalty Expected Goals. This column calculates the difference between the non-penalty goals scored and the non-penalty expected goals. xG totals include penalty kicks but do not include penalty shootouts. An underline indicates that there is a match missing data, which will be updated when available.
• passes_completed: Passes Completed. This column denotes the total number of passes successfully completed.
• passes: Passes Attempted. This column represents the total number of passes attempted.
• passes_pct: Pass Completion Percentage. This column calculates the percentage of passes successfully completed. To qualify as a leader, a minimum of 30 minutes played per squad game is required.
• passes_total_distance: Total Distance of Completed Passes. This column represents the total distance, in yards, that completed passes have traveled in any direction.
• passes_progressive_distance: Progressive Distance of Completed Passes. This column denotes the total distance, in yards, that completed passes have traveled towards the opponent's goal. Note that passes away from the opponent's goal are counted as zero progressive yards.
• passes_completed_short: Passes Completed (Short Passes). This column represents the number of passes completed between 5 and 15 yards.
• passes_short: Passes Attempted (Short Passes). This column denotes the total number of passes attempted between 5 and 15 yards.
• passes_pct_short: Pass Completion Percentage (Short Passes). This column calculates the percentage of short passes (between 5 and 15 yards) that were successfully completed. To qualify as a leader, a minimum of 30 minutes played per squad game is required.
• passes_completed_medium: Passes Completed (Medium Passes). This column represents the number of passes completed between 15 and 30 yards.
• passes_medium: Passes Attempted (Medium Passes). This column denotes the total number of passes attempted between 15 and 30 yards.
• passes_pct_medium: Pass Completion Percentage (Medium Passes). This column calculates the percentage of medium passes (between 15 and 30 yards) that were successfully completed. To qualify as a leader, a minimum of 30 minutes played per squad game is required.
• passes_completed_long: Passes Completed (Passes longer than 30 yards). This column represents the number of passes longer than 30 yards that were successfully completed.
• passes_long: Passes Attempted (Passes longer than 30 yards). This column denotes the total number of passes longer than 30 yards attempted.
• passes_pct_long: Pass Completion Percentage (Passes longer than 30 yards). This column calculates the percentage of passes longer than 30 yards that were successfully completed. To qualify as a leader, a minimum of 30 minutes played per squad game is required.
• pass_xa: Expected Assists. This column represents the likelihood that each completed pass becomes an assist in terms of goal probability. It considers factors such as pass type, phase of play, location, and distance. To qualify as a leader, a minimum of 30 minutes played per squad game is required.
• xg_assist_net: Assists minus Expected Goals Assisted. This column represents the difference between the number of assists and the expected goals assisted. It quantifies the effectiveness of an assist in creating more goals than expected. Provided by Opta.
• assisted_shots: Passes that directly lead to a shot (assisted shots). This column represents the number of passes that directly lead to a shot taken by another player.
• passes_into_final_third: Completed passes that enter the final third of the pitch closest to the opponent's goal. This column denotes the number of passes played into the final third of the field. It does not include set pieces.
• passes_into_penalty_area: Completed passes into the opponent's penalty area. This column represents the number of passes played into the 18-yard box. It does not include set pieces.
• crosses_into_penalty_area: Completed crosses into the opponent's penalty area. This column represents the number of crosses attempted into the 18-yard box. It does not include set pieces.
• progressive_passes: Progressive Passes. This column denotes the number of completed passes that move the ball towards the opponent's goal by at least 10 yards from its furthest point in the last six passes or any completed pass into the penalty area. It excludes passes from the defending 40% of the pitch.
• passes_live: Live-ball passes. This column represents the number of passes that are played while the ball is in play during the course of the game.
• passes_dead: Dead-ball passes. This column represents the number of passes that are played from free kicks, corner kicks, kick-offs, throw-ins, and goal kicks.
• passes_free_kicks: Passes attempted from free kicks. This column denotes the number of passes attempted from free kick situations.
• through_balls: Completed passes sent between back defenders into open space. This column represents the number of passes that penetrate the defensive line and create opportunities for attackers.
• passes_switches: Passes that travel more than 40 yards of the width of the pitch. This column represents the number of passes that switch the play from one side of the field to the other.
• crosses: Crosses. This column denotes the total number of crosses attempted.
• throw_ins: Throw-Ins taken. This column represents the number of throw-ins taken by the player.
• corner_kicks: Corner Kicks. This column represents the total number of corner kicks taken by the player.
• corner_kicks_in: Inswinging Corner Kicks. This column represents the number of corner kicks taken with an inswinging trajectory.
• corner_kicks_out: Outswinging Corner Kicks. This column represents the number of corner kicks taken with an outswinging trajectory.
• corner_kicks_straight: Straight Corner Kicks. This column represents the number of corner kicks taken with a straight trajectory.
• passes_offsides: Offsides. This column represents the number of passes played to teammates who were in an offside position.
• passes_blocked: Blocked passes. This column represents the number of passes that were blocked by opponents who were standing in the passing lane.
• sca: Shot-Creating Actions. This column represents the total number of offensive actions directly leading to a shot attempt, including passes, dribbles, and drawing fouls. Note that a single player can receive credit for multiple actions, and the shot-taker can also receive credit.
• sca_per90: Shot-Creating Actions per 90 minutes. This column calculates the rate of shot-creating actions per 90 minutes of play. To qualify as a leader, a minimum of 30 minutes played per squad game is required.
• sca_passes_live: Completed live-ball passes that lead to a shot attempt. This column represents the number of completed passes during live play that directly lead to a shot attempt.
• sca_passes_dead: Completed dead-ball passes that lead to a shot attempt. This column represents the number of completed passes from free kicks, corner kicks, kick-offs, throw-ins, and goal kicks that directly lead to a shot attempt.
• sca_dribbles: Successful dribbles that lead to a shot attempt. This column represents the number of successful dribbles that directly lead to a shot attempt.
• sca_shots: Shots that lead to another shot attempt. This column represents the number of shots taken that result in another shot attempt.
• sca_fouled: Fouls drawn that lead to a shot attempt. This column represents the number of fouls drawn by a player that directly lead to a shot attempt.
• sca_defense: Defensive actions that lead to a shot attempt. This column represents the number of defensive actions by a player that directly lead to a shot attempt.
• gca: Goal-Creating Actions. This column represents the total number of offensive actions directly leading to a goal, such as passes, dribbles, and drawing fouls. Note that a single player can receive credit for multiple actions, and the shot-taker can also receive credit.
• gca_per90: Goal-Creating Actions per 90 minutes. This column calculates the rate of goal-creating actions per 90 minutes of play. To qualify as a leader, a minimum of 30 minutes played per squad game is required.
• gca_passes_live: Completed live-ball passes that lead to a goal. This column represents the number of completed passes during live play that directly lead to a goal.
• gca_passes_dead: Completed dead-ball passes that lead to a goal. This column represents the number of completed passes from free kicks, corner kicks, kick-offs, throw-ins, and goal kicks that directly lead to a goal.
• gca_dribbles: Successful dribbles that lead to a goal. This column represents the number of successful dribbles that directly lead to a goal.
• gca_shots: Shots that lead to another goal-scoring shot. This column represents the number of shots taken that result in another shot attempt resulting in a goal.
• gca_fouled: Fouls drawn that lead to a goal. This column represents the number of fouls drawn by a player that directly lead to a goal.
• gca_defense: Defensive actions that lead to a goal. This column represents the number of defensive actions by a player that directly lead to a goal.
• tackles: Number of players tackled. This column represents the total number of successful tackles made by a player.
• tackles_won: Tackles in which the tackler's team won possession of the ball. This column represents the number of tackles made by a player where their team gained possession of the ball afterward.
• tackles_def_3rd: Tackles in the defensive 1/3 of the field. This column represents the number of tackles made by a player in the defensive third of the field.
• tackles_mid_3rd: Tackles in the middle 1/3 of the field. This column represents the number of tackles made by a player in the middle third of the field.
• tackles_att_3rd: Tackles in the attacking 1/3 of the field. This column represents the number of tackles made by a player in the attacking third of the field.
• dribble_tackles: Number of dribblers tackled. This column represents the total number of successful tackles made by a player against opponents attempting to dribble past them.
• dribbles_vs: Number of times dribbled past plus number of tackles. This column represents the total number of times a player has been successfully dribbled past by an opponent, added to the number of successful tackles made by the player.
• dribble_tackles_pct: Percentage of dribblers tackled. This column calculates the percentage of dribblers tackled by dividing the number of successful dribble tackles by the sum of successful dribble tackles and the number of times the player has been dribbled past. To qualify as a leader, a minimum of 0.625 dribblers contested per squad game is required.
• dribbled_past: Number of times dribbled past by an opposing player. This column represents the total number of times a player has been successfully dribbled past by an opponent.
• blocks: Number of times blocking the ball by standing in its path. This column represents the total number of times a player has successfully blocked the ball by positioning themselves in its path.
• blocked_shots: Number of times blocking a shot by standing in its path. This column represents the total number of shots blocked by a player by standing in the shooting player's path.
• blocked_passes: Number of times blocking a pass by standing in its path. This column represents the total number of passes blocked by a player by standing in the passing lane.
• interceptions: Interceptions. This column represents the total number of times a player successfully intercepted a pass or ball from the opponent.
• tackles_interceptions: Number of players tackled plus number of interceptions. This column represents the sum of successful tackles made by a player and the number of interceptions they have made.
• clearances: Clearances. This column represents the total number of times a player successfully cleared the ball from their own defensive area.
• errors: Mistakes leading to an opponent's shot. This column represents the number of mistakes made by a player that directly resulted in an opponent having a shot opportunity.
• touches: Number of times a player touched the ball. This column represents the total number of times a player made contact with the ball during a match. Note that receiving a pass, dribbling, and then passing the ball counts as one touch.
• touches_def_pen_area: Touches in the defensive penalty area. This column represents the number of times a player touched the ball while inside their team's defensive penalty area.
• touches_def_3rd: Touches in the defensive 1/3 of the field. This column represents the number of times a player touched the ball while in the defensive third of the field.
• touches_mid_3rd: Touches in the middle 1/3 of the field. This column represents the number of times a player touched the ball while in the middle third of the field.
• touches_att_3rd: Touches in the attacking 1/3 of the field. This column represents the number of times a player touched the ball while in the attacking third of the field.
• touches_att_pen_area: Touches in the attacking penalty area. This column represents the number of times a player touched the ball while inside the opponent's penalty area.
• touches_live_ball: Live-ball touches. This column represents the number of times a player touched the ball during live play, excluding corner kicks, free kicks, throw-ins, kick-offs, goal kicks, or penalty kicks.
• dribbles_completed: Dribbles Completed Successfully. This column represents the total number of successful dribbles completed by a player.
• dribbles: Dribbles Attempted. This column represents the total number of dribble attempts made by a player.
• dribbles_completed_pct: Percentage of Dribbles Completed Successfully. This column calculates the percentage of dribbles completed successfully by dividing the number of successful dribbles by the total number of dribble attempts. To qualify as a leader, a minimum of 0.5 dribbles per squad game is required.
• miscontrols: Number of times a player failed when attempting to gain control of a ball. This column represents the total number of times a player failed to gain control of the ball successfully.
• dispossessed: Number of times a player loses control of the ball after being tackled by an opposing player. This column represents the total number of times a player lost possession of the ball due to being tackled by an opponent. It does not include attempted dribbles.
• passes_received: Number of times a player successfully received a pass. This column represents the total number of passes that were successfully received by a player.
• progressive_passes_received: Progressive Passes Received. This column represents the total number of passes received by a player that moved the ball towards the opponent's goal by at least 10 yards from its furthest point in the last six passes or any completed pass into the penalty area. It excludes passes from the defending 40% of the pitch.
• minutes_per_game: Minutes Per Match Played. This column represents the average number of minutes played by a player per match.
• minutes_pct: Percentage of Minutes Played. This column represents the percentage of the team's total minutes in which a player was on the pitch. It is calculated by dividing the player's minutes played by the team's total minutes played. To qualify as a leader, a minimum of 30 minutes played per squad game is required.
• minutes_per_start: Minutes Per Match Started. This column represents the average number of minutes played by a player in matches where they started. To qualify as a leader, a minimum of 30 minutes played per squad game is required.
• games_complete: Complete matches played. This column represents the total number of matches in which a player played the full duration of the match.
• games_subs: Games as a substitute. This column represents the total number of games in which a player did not start and came on as a substitute.
• minutes_per_sub: Minutes Per Substitution. This column represents the average number of minutes played by a player per substitution. To qualify as a leader, a minimum of 30 minutes played per squad game is required.
• unused_subs: Games as an unused substitute. This column represents the total number of games in which a player was named as a substitute but did not enter the match.
• points_per_game: Points per Match. This column represents the average number of points earned by the team from matches in which the player appeared. To qualify as a leader, a minimum of 30 minutes played per squad game is required.
• on_goals_for: Goals scored by the team while the player was on the pitch. This column represents the total number of goals scored by the player's team while the player was on the field.
• on_goals_against: Goals allowed by the team while the player was on the pitch. This column represents the total number of goals conceded by the player's team while the player was on the field.
• plus_minus: Plus/Minus. This column represents the goal differential while the player was on the pitch. It is calculated by subtracting the goals conceded by the player's team from the goals scored by the team.
• plus_minus_per90: Plus/Minus per 90 Minutes. This column represents the goal differential per 90 minutes played while the player was on the pitch. It is calculated by dividing the plus/minus value by the player's total minutes played and multiplying it by 90. To qualify as a leader, a minimum of 30 minutes played per squad game is required.
• on_xg_for: Expected goals by the team while the player was on the pitch. This column represents the total expected goals scored by the player's team while the player was on the field. The expected goals (xG) totals include penalty kicks but do not include penalty shootouts (unless otherwise noted). The data is provided by Opta. An underline indicates that there is a match missing data, but it will be updated when available.
• on_xg_against: Expected goals allowed by the team while the player was on the pitch. This column represents the total expected goals conceded by the player's team while the player was on the field. The expected goals (xG) totals include penalty kicks but do not include penalty shootouts (unless otherwise noted). The data is provided by Opta. An underline indicates that there is a match missing data, but it will be updated when available.
• xg_plus_minus: Expected Goals Plus/Minus. This column represents the difference between expected goals scored and expected goals allowed by the team while the player was on the pitch. The expected goals (xG) totals include penalty kicks but do not include penalty shootouts (unless otherwise noted). The data is provided by Opta. An underline indicates that there is a match missing data, but it will be updated when available.
• xg_plus_minus_per90: Expected Goals Plus/Minus per 90 Minutes. This column represents the expected goals plus/minus per 90 minutes played while the player was on the pitch. It is calculated by dividing the xG plus/minus value by the player's total minutes played and multiplying it by 90. The expected goals (xG) totals include penalty kicks but do not include penalty shootouts (unless otherwise noted). To qualify as a leader, a minimum of 30 minutes played per squad game is required.
• cards_yellow_red: Second Yellow Card. This column represents the number of times a player received a second yellow card in a match, resulting in a red card.
• fouls: Fouls Committed. This column represents the total number of fouls committed by a player.
• fouled: Fouls Drawn. This column represents the total number of fouls drawn by a player.
• offsides: Offsides. This column represents the total number of times a player was caught in an offside position.
• pens_won: Penalty Kicks Won. This column represents the total number of penalty kicks won by a player.
• pens_conceded: Penalty Kicks Conceded. This column represents the total number of penalty kicks conceded by a player's team.
• own_goals: Own Goals. This column represents the total number of own goals scored by a player.
• ball_recoveries: Number of loose balls recovered. This column represents the total number of loose balls recovered by a player.
• aerials_won: Aerials won. This column represents the total number of aerial duels won by a player.
• aerials_lost: Aerials lost. This column represents the total number of aerial duels lost by a player.
• aerials_won_pct: Percentage of aerials won. This column represents the percentage of aerial duels won by a player. It is calculated by dividing the number of aerial duels won by the sum of aerial duels won and aerial duels lost. To qualify as a leader, a minimum of 0.97 aerial duels per squad game is required.
