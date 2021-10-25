SELECT 
    JOB_TITLE AS Cargo,
    (MAX_SALARY - MIN_SALARY) AS `Diferença entre salários máximo e mínimo`
FROM
    hr.jobs
ORDER BY `Diferença entre salários máximo e mínimo` ASC, Cargo ASC;

/* Backticks ou crase ( `` ) : São usadas para identificar nome de tabelas e colunas . 
São necessárias apenas quando o identificador for uma palavra reservada do MySQL , 
ou quando o nome da tabela ou coluna contiver espaços em branco.*/
