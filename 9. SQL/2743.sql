SELECT
    p.name, char_length(p.name) as length
FROM
    people p
ORDER BY
    length DESC