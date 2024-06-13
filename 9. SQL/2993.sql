SELECT cc.amount as most_frequent_value FROM
(SELECT amount, count(*) as frequencia from value_table GROUP BY amount ORDER BY frequencia DESC LIMIT 1) cc