SELECT DISTINCT
	N.node_id, 
	case WHEN cc.count > 0 THEN 'INNER'
    WHEN cc.count = 0 THEN 'LEAF'
    ELSE 'ROOT'
    END AS TYPE

FROM 
	nodes N
LEFT JOIN
  (SELECT node_id, COUNT(pointer) FROM NODES
   WHERE node_id NOT IN (select node_id FROM nodes LIMIT 1)
  group by node_id) CC
on
	cc.node_id = n.node_id
ORDER BY
	n.node_id