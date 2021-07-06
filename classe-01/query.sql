--1 
SELECT COUNT(medicamento) FROM farmacia;

--2 
SELECT MIN(idade) FROM usuarios;

--3
SELECT MAX(idade) FROM usuarios;

--4
SELECT AVG(idade) FROM usuarios WHERE idade <= 18;

--5 
SELECT SUM(estoque) FROM farmacia WHERE(categoria = 'blue' OR categoria ='black');

--6
SELECT categoria, SUM(estoque) FROM farmacia WHERE categoria IS NOT NULL GROUP BY categoria;

--7
SELECT SUM(estoque) FROM farmacia WHERE categoria IS NULL;

--8
SELECT count(medicamento) FROM farmacia WHERE categoria IS NULL;

--9

SELECT CONCAT(medicamento, ' (', categoria, ')') AS "Medicamento e categoria" FROM farmacia WHERE categoria IS NOT NULL;

--10
SELECT (id || ' - ' || medicamento || ' (' || COALESCE(categoria, 'sem categoria') || ')') AS "Medicamento e categoria" FROM farmacia;

--11
SELECT nome, idade, CAST(cadastro AS date) FROM usuarios WHERE cadastro LIKE '%2020%';

--12 
SELECT nome, idade, email, AGE(cadastro::timestamp) AS "tempo de cadastro" FROM usuarios WHERE idade < 18;

--13 
SELECT nome, idade, email, AGE(cadastro::date) AS "tempo de cadastro" FROM usuarios WHERE idade >= 60;

--14 
SELECT categoria, COUNT(estoque) AS "quant. medicamentos" FROM farmacia WHERE categoria IS NOT NULL GROUP BY categoria; 

--15
SELECT idade, COUNT(idade) FROM usuarios WHERE idade >= 18 GROUP BY idade;

--16
SELECT categoria, SUM(estoque) AS "quant. do estoque dos medicamentos" FROM farmacia GROUP BY categoria ORDER BY categoria LIMIT 3;