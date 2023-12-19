-- Estudos do livro Practical SQL: A Beginner's Guide to Storytelling with Data, 2nd Edition
-- by Anthony DeBarros

-- Crie um banco de dados chamado analysis

CREATE DATABASE analysis;

-- Crie uma tabela chamada teachers com 6 colunas

CREATE TABLE teachers(
	id bigserial,
	first_name varchar(25),
	last_name varchar(25),
	school varchar(50),
	hire_date date,
	salary numeric
);

-- Este comando irá remover a tabela

DROP TABLE teachers;

-- Insira os seguintes dados na tabela teachers

INSERT INTO teachers (first_name, last_name, school, hire_date, salary)
VALUES ('Janet', 'Smith', 'F.D. Roosevelt HS', '2011-10-30', 36200),
       ('Lee', 'Reynolds', 'F.D. Roosevelt HS', '1993-05-22', 65000),
       ('Samuel', 'Cole', 'Myers Middle School', '2005-08-01', 43500),
       ('Samantha', 'Bush', 'Myers Middle School', '2011-10-30', 36200),
       ('Betty', 'Diaz', 'Myers Middle School', '2005-08-30', 43500),
       ('Kathleen', 'Roush', 'F.D. Roosevelt HS', '2010-10-22', 38500);

-- Consulte todas as linhas e colunas da tabela teachers

SELECT * FROM teachers;

-- Esta abreviação SQL padrão também funciona

TABLE teachers;

-- Consulte os subconjunto de colunas last_name, first_name e salary

SELECT last_name, first_name, salary FROM teachers;

-- Ordene as colunas first_name, last_name e salary usando ORDER BY com DESC e usando a coluna salary 

SELECT first_name, last_name, salary FROM teachers ORDER BY salary DESC;

-- Você também pode especificar a coluna de ordenação
-- usando um número que representa sua posição no resultado.

SELECT first_name, last_name, salary FROM teachers ORDER BY 3 DESC;

-- Ordene com ORDER BY com ASC e DESC as colunas last_name, school e hire_date usando as colunas 
-- school e hire_date ao mesmo tempo

SELECT last_name, school, hire_date
FROM teachers
ORDER BY school ASC, hire_date DESC;

-- Consulte os valores distintos na coluna school e ordene pela coluna school

SELECT DISTINCT school FROM teachers
ORDER BY school;

-- Consulte os valores distintos na coluna school e na coluna salary, 
-- e ordene pelas colunas school e salary

SELECT DISTINCT school, salary FROM teachers
ORDER BY school, salary;

-- selecione as colunas last_name, school e hire_date 
-- onde as linhas da coluna school tenha o valor Myers Middle School

SELECT last_name, school, hire_date FROM teachers
WHERE school = 'Myers Middle School';

-- selecione as colunas first_name, last_name e school
-- onde as linhas da coluna first_name tenham o valor Janet

SELECT first_name, last_name, school
FROM teachers
WHERE first_name = 'Janet';

-- selecione a coluna school
-- onde as linhas da coluna school não tenham o valor 'F.D. Roosevelt HS'

SELECT school FROM teachers 
WHERE school <> 'F.D. Roosevelt HS';

-- selecione as colunas first_name, last_name e hire_date
-- onde hire_date seja menor do que '2000-01-01'

SELECT first_name, last_name, hire_date
FROM teachers
WHERE hire_date < '2000-01-01';

-- selecione as colunas first_name, last_name e salary
-- onde salary seja >= '43500'

SELECT first_name, last_name, salary
FROM teachers
WHERE salary >= '43500';

-- selecione as colunas first_name, last_name, school e salary
-- onde salary esteja entre 40000 e 65000

SELECT first_name, last_name, school, salary
FROM teachers
WHERE salary BETWEEN 40000 AND 65000;

-- outra versao

SELECT first_name, last_name, school, salary
FROM teachers
WHERE salary >= 40000 AND salary <= 65000;

-- selecione a coluna first_name onde first_name tenha um valor 'sam%' usando like;

SELECT first_name
FROM teachers
WHERE first_name LIKE 'sam%';

-- selecione a coluna first_name onde first_name tenha um valor 'sam%' usando ilike;

SELECT first_name
FROM teachers
WHERE first_name ILIKE 'sam%';

-- selecione todas as colunas da tabela teachers onde school tenha o valor 'Myers Middle School'
-- e salary < 40000

SELECT * FROM teachers 
WHERE school = 'Myers Middle School' AND salary < 40000;




























