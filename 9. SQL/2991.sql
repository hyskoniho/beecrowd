SELECT dep.nome, COUNT(salarios_div.matr) as qtd_func, ROUND(AVG(salarios_div.valor_salario), 2) as media_divisao, MAX(salarios_div.valor_salario), MIN(salarios_div.valor_salario)
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
LEFT JOIN 
	divisao div
ON
	div.cod_divisao = salarios_div.lotacao_div
LEFT JOIN
	departamento dep
ON
	dep.cod_dep = div.cod_dep
GROUP by dep.nome
ORDER BY media_divisao DESC

     