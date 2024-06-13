WITH FILA1 AS(
SELECT * FROM chairs
),
comparacao as(
SELECT f1.queue,
  f1.id AS left,
  clone.id as right
  FROM FILA1 f1
LEFT JOIN FILA1 clone on f1.id +1 = clone.id
where f1.available = TRUE
AND clone.available = TRUE
and f1.queue = clone.queue)

SELECT * FROM comparacao

