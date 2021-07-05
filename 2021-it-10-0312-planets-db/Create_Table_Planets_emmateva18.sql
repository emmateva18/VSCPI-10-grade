USE planets_db_emmateva18
GO

CREATE TABLE dbo.Planets (
IndividualID int NOT NULL,
PlanetsName varchar(50) NULL,
PlanetType varchar(50) NULL,
Radius varchar(50) NULL,
emmateva18 int NULL,
TimeCreated datetime NULL) --ON PRIMARY
GO
ALTER TABLE Planets ADD Color varchar(50) NULL;
UPDATE Planets set Color = N'Red'
DELETE FROM Planets WHERE IndividualID = 1
DROP TABLE Planets
-- DROP DATABASE planets_db_emmateva18