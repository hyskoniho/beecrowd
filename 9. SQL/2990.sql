SELECT
	emp.cpf, emp.enome, dep.dnome
FROM
	empregados emp
LEFT JOIN
	departamentos dep
ON
	emp.dnumero = dep.dnumero
WHERE 
	emp.cpf NOT IN (SELECT cpf_emp FROM trabalha)
ORDER BY
	emp.cpf