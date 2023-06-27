-- todos clientes que moram na mesma regiao
SELECT A.ContactName, B.ContactName
FROM   Customers A, Customers B
WHERE A.Region = B.Region;

-- nome e data da contratação de todos funcionarios que foram contratados no mesmo ano
SELECT A.FirstName, A.hiredate, B.firstname, b.hiredate
FROM Employees A, Employees B
WHERE DATEPART(year, a.HireDate) = DATEPART(year, b.HireDate)