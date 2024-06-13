SELECT 
	dep.nome, 
	div.nome, 
    ROUND(AVG(salario.valor),2) as media, 
    ROUND(MAX(salario.valor),2) as maior
FROM
  (SELECT 
      emp.matr, COALESCE(SUM(ve.valor), 0) - COALESCE(descontos.desconto, 0) as valor
  FROM 
      empregado emp
  LEFT JOIN 
      emp_venc ev
  ON 
      emp.matr = ev.matr
  LEFT JOIN 
      vencimento ve
  ON 
      ev.cod_venc = ve.cod_venc
 LEFT JOIN
 	(SELECT 
      emp.matr, COALESCE(SUM(de.valor), 0) as desconto
  FROM 
      empregado emp
  LEFT JOIN
  	   emp_desc ed
  ON
  	   ed.matr = emp.matr
  LEFT JOIN
  	   desconto de
  ON
  	   ed.cod_desc = de.cod_desc
  GROUP BY
       emp.matr
  HAVING SUM(de.valor) > 0
	) descontos
 ON
 	descontos.matr = emp.matr
  GROUP BY
      emp.matr, descontos.desconto
) salario
LEFT JOIN
	empregado emp
ON salario.matr = emp.matr
LEFT JOIN
	divisao div
ON
	emp.lotacao_div = div.cod_divisao
LEFT JOIN
	departamento dep
ON
	dep.cod_dep = div.cod_dep
GROUP BY
	div.nome, dep.nome
ORDER BY media DESC