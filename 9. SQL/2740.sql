SELECT 
    CASE 
        WHEN position <= 3 THEN 'Podium: ' || team
        ELSE 'Demoted: ' || team
    END AS name
FROM league
WHERE position <= 3 OR position > (SELECT COUNT(*) FROM league) - 2;
