SELECT d.name, ROUND(SUM(vh.valor_hora + (vh.valor_hora * vh.bonus / 100)), 1) as salario
FROM
(
SELECT a.id_doctor, a.hours * 150 as valor_hora, W.BONUS
FROM attendances A
LEFT JOIN work_shifts W on W.ID = A.ID_WORK_SHIFT
) vh
LEFT JOIN doctors d
ON d.id = vh.id_doctor
GROUP BY d.name
ORDER BY salario DESC