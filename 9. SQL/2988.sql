SELECT 
    name,
    SUM(matches) AS matches,
    SUM(victories) AS victories,
    SUM(defeats) AS defeats,
    SUM(draws) AS draws,
    SUM(score) AS score
FROM (
    SELECT 
        t.name,
        1 AS matches,
        CASE 
            WHEN m.team_1_goals > m.team_2_goals AND t.id = m.team_1 THEN 1 
            WHEN m.team_2_goals > m.team_1_goals AND t.id = m.team_2 THEN 1 
            ELSE 0 
        END AS victories,
        CASE 
            WHEN m.team_1_goals < m.team_2_goals AND t.id = m.team_1 THEN 1 
            WHEN m.team_2_goals < m.team_1_goals AND t.id = m.team_2 THEN 1 
            ELSE 0 
        END AS defeats,
        CASE 
            WHEN m.team_1_goals = m.team_2_goals THEN 1 
            ELSE 0 
        END AS draws,
        CASE 
            WHEN m.team_1_goals > m.team_2_goals AND t.id = m.team_1 THEN 3 
            WHEN m.team_2_goals > m.team_1_goals AND t.id = m.team_2 THEN 3 
            WHEN m.team_1_goals = m.team_2_goals THEN 1 
            ELSE 0 
        END AS score
    FROM 
        teams t
    JOIN 
        matches m ON t.id = m.team_1 OR t.id = m.team_2
) AS results
GROUP BY 
    name
ORDER BY 
    score DESC;
