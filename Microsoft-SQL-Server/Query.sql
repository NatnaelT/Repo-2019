USE MASTER;
EXEC sp_who2

KILL 72
KILL 73

USE MASTER;
CREATE DATABASE database1


SELECT * FROM database1.dbo.ChamadosDia 
LEFT JOIN database3.dbo.DIARIO 
ON CallsDia.NOME=DIARIO.NOME
WHERE CallsDia.DATA_ABERTURA > '2019-01-29 14:00:00' 
AND CallsDia.NOME LIKE 'MARIA %'  
AND DATA_ABERTURA IS NOT NULL 
AND CONTACT_INICIO IS NOT NULL 
ORDER BY CallsDia.CPF 