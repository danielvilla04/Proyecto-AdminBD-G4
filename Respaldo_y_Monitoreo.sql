--creacion del squema
CREATE SCHEMA Pymes;
ALTER SESSION SET CURRENT_SCHEMA = Pymes;

--Monitoreo
SELECT sql_id, sql_text, executions, elapsed_time, cpu_time, buffer_gets
FROM v$sql
WHERE elapsed_time > 10000 -- Consultas que han tardado más de 10 segundos
ORDER BY elapsed_time DESC;


SELECT s.sid, s.serial#, s.username, s.machine, s.program, s.status,
       t.sql_id, t.sql_child_number, t.sql_text
FROM v$session s
JOIN v$sql t ON s.sql_id = t.sql_id
WHERE s.status = 'ACTIVE';

--respaldo y recuperación



CREATE OR REPLACE DIRECTORY respaldo AS 'C:\Backups\Venta_Pymes';

/*

codigo en el CMD para la exportación
expdp \"/ as sysdba \" directory = respaldo dumpfile = respaldoschema.dmp logfile = respaldoschema.log schemas = system

codigo en el CMD para la importación
impdp \"/ as sysdba \" directory = respaldo dumpfile = respaldoschema.dmp logfile = importacionlog.log schemas = system: Fabri

*/
