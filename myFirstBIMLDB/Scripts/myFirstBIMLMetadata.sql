/*
 * We will just add a couple of rows here. In this case, we will be staging all AdventureWorks tables whose names begin with a 'Person'
*/
USE AdventureWorks;
INSERT INTO myFirstBIML.config.MyBIMLMeta_Tables (TableName)
SELECT DISTINCT name FROM sysobjects WHERE name LIKE 'Person%';