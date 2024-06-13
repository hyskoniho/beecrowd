SELECT emp.nome, salarios_pessoas.valor_salario
FROM
(SELECT 
      emp.matr, emp.lotacao_div, COALESCE(SUM(ve.valor), 0) - COALESCE(descontos.desconto, 0) as valor_salario
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
      emp.matr, emp.lotacao_div, descontos.desconto
) salarios_pessoas
LEFT JOIN
(
SELECT salarios_div.lotacao_div, ROUND(AVG(salarios_div.valor_salario), 2) as media_divisao
FROM
(
SELECT 
      emp.matr, emp.lotacao_div, COALESCE(SUM(ve.valor), 0) - COALESCE(descontos.desconto, 0) as valor_salario
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
      emp.matr, emp.lotacao_div, descontos.desconto
  
 ) salarios_div
 GROUP by salarios_div.lotacao_div) div_media
 ON salarios_pessoas.lotacao_div = div_media.lotacao_div
 left join empregado emp
 ON EMP.matr = salarios_pessoas.matr
 WHERE salarios_pessoas.valor_salario >= 8000 AND salarios_pessoas.valor_salario > div_media.media_divisao
 ORDER BY emp.lotacao_div