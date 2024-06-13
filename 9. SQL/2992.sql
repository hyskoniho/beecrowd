WITH RankedSalaries AS (
    SELECT 
        dep.nome as nome_departamento,
        div.nome as nome_divisao,
        div_media.media_divisao as media_salarial_divisao,
        ROW_NUMBER() OVER (PARTITION BY dep.nome ORDER BY div_media.media_divisao DESC) AS rank
    FROM 
        (SELECT salarios_div.lotacao_div, ROUND(AVG(salarios_div.valor_salario), 2) as media_divisao
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
     GROUP by salarios_div.lotacao_div
     ORDER BY media_divisao DESC) div_media
    LEFT JOIN divisao div ON div.cod_divisao = div_media.lotacao_div
    LEFT JOIN departamento dep ON div.cod_dep = dep.cod_dep
)
SELECT nome_departamento, nome_divisao, media_salarial_divisao
FROM RankedSalaries
WHERE rank = 1
ORDER BY media_salarial_divisao DESC
