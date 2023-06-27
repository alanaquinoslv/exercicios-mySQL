CREATE VIEW [pessoas simplificado] AS
SELECT FirstName, MiddleName, LastName
FROM PERSON.PERSON
WHERE Title = 'Ms.';

SELECT * FROM [pessoas simplificado]