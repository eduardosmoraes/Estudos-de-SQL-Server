--  Pesquisa de Dados

--  SELECT -- SQL Server, Postgres, Oracle, MySql

--  SELECT coluna1, coluna2    
--  FROM tabela;


--  SELECT *
--  FROM tabela;

--_______________________________

--  1. Exercicio:

--  A EQUIPE DE MARKETING PRECISA FAZER UMA PESQUISA SOBRE OS NOMES MAIS COMUNS DE SEUS CLIENTES, IDENTIFIQUE O NOME E SOBRE NOME DE TODOS OS CLIENTES QUE ESTÃO CADASTRADOS NO SISTEMA.

--  R:

--  SELECT *
--  FROM person.person;

--  SELECT FirstName, LastName
--  FROM person.person;


--________________________________
--  Comando para elimniar os duplicados da tabela

--  SELECT DISTINCT coluna1, coluna2
--  FROM tabela;


-----------------------------
-- Ex02

--  QUANTO SOBRENOMES UNICO TEMOS NA TABELA person.person?

--  R:

--  SELECT DISTINCT	LastName
--  FROM person.person;
--  R == 1.206 


/* -WHERE

SELECT coluna1, coluna2, coluna_n
FROM tabela
WHERE condição;

OPERADOR     -  DESCRIÇÃO
=                IGUAL
>                MAIOR QUE
<                MENOR QUE
>=               MAIOR QUE OU IGUAL
<=               MENOR QUE OU IGUAL
<>               DIFERENTE DE
AND              OPERADOR LÓGICO E
OR               OPERADOR LÓGICO OU

exemplo;

SELECT *
FROM person.person
WHERE LastName = 'miller' and FirstName = 'anna';

SELECT *
FROM Production.Product
WHERE color = 'blue' or color = 'black';

SELECT *
FROM Production.Product
WHERE color <> 'red';

*/

/*
(Encontrar o Peter Crabs e pegar seu e-mail para fazer uma cobrança)
SELECT *
FROM person.EmailAddress   
WHERE BusinessEntityID = 26;

(Econtrar produtos que pesam mais de 500kg e menos de 700kg)
SELECT name
FROM production.product
WHERE weight > 500 and weight <700;

(Encontrar todos os funcionarios casados e assalariados)
SELECT *
FROM HumanResources.Employee
WHERE MaritalStatus = 'm' and SalariedFlag = 'true';
*/

/* 
--count

Desafio 1 - Quero saber quantos produtos temos cadastrados em nossa tabela de produtos.

R == 504
SELECT count (*)
FROM Production.Product;


Desafio 2 - Quero saber quantos tamanhos de produtos temos cadastrado em nossa tabela.

R == 211
SELECT count (Size) 
FROM Production.Product;

*/


/*
-- TOP

SELECT TOP 10 *
FROM tabela;

SELECT TOP 10 *
FROM Production.product; (Para ver apenas 10 linhas dessa tabela)
*/

/*
-- ORDER BY

SELECT coluna1, coluna2
FROM tabela
ORDER BY coluna1  asc/desc

Desafio 1 - Obter o ProductID dos 10 produtos mais caros cadastrados
no sistema, listando do mais caro para o mais barato.

R:
SELECT TOP 10 ProductID, ListPrice
FROM Production.Product
ORDER BY ListPrice desc;


Desafio 2 - Obter o nome e numero de produto dos podutos que tem o ProductID entre 1 e 4.

R:
SELECT TOP 4  Name, ProductNumber
FROM Production.Product
ORDER BY ProductID asc;

*/

