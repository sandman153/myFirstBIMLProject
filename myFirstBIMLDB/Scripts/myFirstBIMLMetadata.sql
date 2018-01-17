/*
 * We will just add a couple of rows here. In this case, we will be staging all AdventureWorks tables whose names begin with a 'Person'
*/
TRUNCATE TABLE myFirstBIMLDB.config.MyBIMLMeta_Tables;
USE AdventureWorks2014;
GO
INSERT INTO myFirstBIMLDB.config.MyBIMLMeta_Tables
SELECT DISTINCT name FROM sysobjects WHERE name LIKE 'Person%';