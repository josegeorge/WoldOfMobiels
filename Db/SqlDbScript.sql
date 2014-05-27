USE [master]

IF NOT EXISTS (SELECT name FROM sys.databases WHERE name = N'WorldOfMobiles')
BEGIN
CREATE DATABASE [WorldOfMobiles]
END;

GO
USE [WorldOfMobiles]
GO


