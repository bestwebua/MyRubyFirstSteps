SELECT <column1> AS 'Name 2', <column2> AS 'Name 2' FROM <table>;
SELECT <columns> FROM <table> WHERE <condition>;
SELECT <columns> FROM <table> WHERE <condition 1> AND <condition 2>;
SELECT <columns> FROM <table> WHERE <condition 1> OR <condition 2>;
SELECT <columns> FROM <table> WHERE <column> <operator> <value>;
SELECT <columns> FROM <table> WHERE <column> IN (<value>, <value>);
SELECT <columns> FROM <table> WHERE <column> BETWEEN <min> AND <max>;
SELECT <columns> FROM <table> WHERE <column> LIKE '<search pattern>%';
SELECT <columns> FROM <table> WHERE <column> LIKE '%<search pattern>';
SELECT <columns> FROM <table> WHERE <column> LIKE '%<search pattern>%';
SELECT <columns> FROM <table> WHERE <column> IS NULL;
SELECT <columns> FROM <table> WHERE <column> IS NOT NULL;
SELECT * FROM <table 1>, <table 2> WHERE <table 1>.<table 1 column> = <table 2>.<table 2 column>;
SELECT * FROM <table 1> ORDER BY <column> LIMIT 5 ---LIMIT <number> for limit results
SELECT * FROM <table 1> ORDER BY <column> DESC LIMIT 5 ---using DESC for reverse order


INSERT INTO <table> VALUES (<value 1>, <value 2>); ---insert row
INSERT INTO <table> (<column 1>, <column 2>...) VALUES (<value 1>, <value 2>...);

UPDATE <table> SET <column>=<new value>, <column>=<new value>
UPDATE <table> SET <column>=<new value> WHERE <column> <condition>;

DELETE FROM <table>;
DELETE FROM <table> WHERE <condition>;

---relationship tables SELECT
SELECT <columns>
  FROM <table1>
  INNER JOIN <table2> ON <equality criteria> ---like make.MakeID = model.MakeID, where make & model are tables
  INNER JOIN <table3> ON <equality criteria>
  WHERE <search criteria>

---example
---SELECT MakeName, ModelName FROM make
  ---INNER JOIN model ON make.MakeID = model.MakeID
    ---WHERE MakeName = 'Chevy';

Sale: SaleID, CarID, CustomerID, LocationID, SalesRepID, SaleAmount, SaleDate
SalesRep: SalesRepID, FirstName, LastName, SSN, PhoneNumber, StreetAddress, City, State, ZipCode


SELECT FirstName, LastName, SaleAmount
  FROM Sale
    INNER JOIN SalesRep ON Sale.SalesRepID = SalesRep.SalesRepID;


/*
There are two tables Fruit and Vegetable table. The Fruit table has a FruitID and a
Name column and the Vegetable table has a VegetableID and Name column. Create a list
of all fruits and vegetables starting with the letters A through K. In other words
all fruit and vegetables that don't start with the letter L to Z.
*/
SELECT Name FROM Fruit WHERE Name BETWEEN 'A' AND 'L'
  UNION
SELECT Name FROM Vegetable WHERE Name BETWEEN 'A' AND 'L';

/*
There are two tables Fruit and Vegetable table. The Fruit table has a FruitID
and a Name column and the Vegetable table has a VegetableID and Name column.
Create an alphabetical list of produce that is considered both a fruit and a
vegetable.
*/
SELECT Name FROM Fruit
  INTERSECT
SELECT Name FROM Vegetable
ORDER BY Name;

/*
There are two tables Fruit and Vegetable table. The Fruit table has a FruitID
and a Name column and the Vegetable table has a VegetableID and Name column.
Create an alphabetical list of fruits that are NOT considered a vegetable.
*/
SELECT Name FROM Fruit
  EXCEPT
SELECT Name FROM Vegetable
ORDER BY Name;

/*
There are two tables Fruit and Vegetable table. The Fruit table has a FruitID and
a Name column and the Vegetable table has a VegetableID and Name column. Create an
alphabetical list of vegetables that are NOT considered a fruit.
*/
SELECT Name FROM Vegetable
  EXCEPT
SELECT Name FROM Fruit
ORDER BY Name;


/* Subqueries */
SELECT <Columns>
FROM <Table1>
WHERE Column1 IN (
  SELECT Column1
  FROM <Table2>
  WHERE <Search Criteria>
);

SELECT * FROM Sale WHERE CarID IN (SELECT CarID FROM Car WHERE ModelYear = 2015);



SELECT <Columns>
FROM <Table>
<INNER | OUTER> JOIN
(SELECT <Columns> FROM <Table> WHERE <Search Criteria>) AS <Alias>
ON <Join Criteria>;

SELECT * FROM Sale AS s
  INNER JOIN (SELECT CarID, ModelYear FROM Car WHERE ModelYear = 2015) AS t
    ON s.CarID = t.CarID;