SELECT f.name, f.investment, MIN(f.month_of_payback) as month_of_payback, min(f.return) as return
FROM
(SELECT 
	c.name, c.investment, cc.month as month_of_payback, cc.soma-c.investment as return
FROM
    (SELECT op1.client_id, op1.month, op1.profit, SUM(op2.profit) as Soma
    FROM operations AS op1
    INNER JOIN operations AS op2 
    on op1.month >= op2.month
    AND op1.client_id = op2.client_id
    GROUP BY  op1.client_id, op1.month, op1.profit
    ORDER BY op1.client_id ASC, op1.month ASC) cc
LEFT JOIN clients c
ON cc.client_id = c.id
WHERE cc.soma - c.investment>=0) f
GROUP BY f.name, f.investment
ORDER BY return DESC