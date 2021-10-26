-- REFRENCIA DE UTILIZAÇÃO DE ORDER BY EM CASO DE EMPATE:
-- https://www.devmedia.com.br/criterios-de-desempate-utilizando-o-order-by-parte-02/9728
-- SELECT * FROM hr.jobs;
-- dica: ao chamar 'alias' no ORDER BY Usar `crase` ao invés de 'aspas'
SELECT JOB_TITLE AS Cargo,
 MAX_SALARY - MIN_SALARY AS 'Diferença entre salários máximo e mínimo'
 FROM hr.jobs
 ORDER BY `Diferença entre salários máximo e mínimo`, JOB_TITLE;