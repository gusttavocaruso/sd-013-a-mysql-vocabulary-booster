SELECT CONCAT(E.FIRST_NAME, ' ', E.LAST_NAME) AS `Nome completo`,
DATE_FORMAT (H.START_DATE,'%d/%m/%Y') AS `Data de início`,
DATE_FORMAT (H.END_DATE,'%d/%m/%Y') AS `Data de rescisão`,
ROUND(DATEDIFF(H.END_DATE,H.START_DATE)/365,2) AS `Anos trabalhados`
FROM hr.employees AS E 
INNER JOIN hr.job_history AS H ON H.EMPLOYEE_ID=E.EMPLOYEE_ID
ORDER BY `Nome completo`, `Anos trabalhados`;

/*
Ajuda do Anderson 
 Link consultado para formatar data para o brasil 
https://www.gigasystems.com.br/artigo/75/formatando-datas-no-mysql-com-date_format 
Percebi que dava o número de dias só com isso DATEDIFF(H.END_DATE,H.START_DATE), por isso divide por 365 */
