SELECT JOB_TITLE AS Cargo,
(MAX_SALARY - MIN_SALARY) AS 'Variação Salarial',
ROUND(MIN_SALARY/12, 2) AS 'Média mínima mensal',
ROUND(MAX_SALARY/12, 2) AS 'Média máxima mensal'
FROM hr.jobs
ORDER BY `Variação Salarial` ASC, Cargo;

-- Código retirado do PR do amigo Murilo Rainho
-- https://github.com/tryber/sd-013-a-mysql-vocabulary-booster/pull/5/commits/58993a00bfc47a95517b460d6dd56c8f9f220be9
/*SELECT j.JOB_TITLE AS Cargo,
(j.MAX_SALARY - j.MIN_SALARY) AS `Variação Salarial`,
ROUND(j.MIN_SALARY / 12, 2) AS `Média mínima mensal`,
ROUND(j.MAX_SALARY / 12, 2) AS `Média máxima mensal`
FROM hr.jobs AS j
ORDER BY `Variação Salarial`, Cargo;*/
