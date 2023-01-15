/* Q1 */
SELECT COUNT(*) FROM HumanResources.Employee WHERE HumanResources.Employee.MaritalStatus='S';

/* Q2 */
SELECT COUNT(*) FROM HumanResources.EmployeeDepartmentHistory WHERE HumanResources.EmployeeDepartmentHistory.ShiftID=3;

/* Q3 */
SELECT FirstName, LastName 
FROM Person.Person
INNER JOIN HumanResources.Employee
ON Person.Person.BusinessEntityID=HumanResources.Employee.BusinessEntityID
WHERE HumanResources.Employee.SalariedFlag=0;

/* Q4 */
SELECT COUNT(*) FROM HumanResources.EmployeeDepartmentHistory WHERE DepartmentID = 1;

/* Q5 */
SELECT FirstName, LastName
FROM Person.Person
WHERE BusinessEntityID in (SELECT BusinessEntityID FROM HumanResources.EmployeeDepartmentHistory
WHERE DepartmentID = 10);

/* Q6 */
SELECT COUNT(HumanResources.EmployeeDepartmentHistory.DepartmentID),
HumanResources.Department.Name
FROM HumanResources.EmployeeDepartmentHistory, HumanResources.Department
WHERE HumanResources.Department.DepartmentID=HumanResources.EmployeeDepartmentHistory.DepartmentID
GROUP BY HumanResources.Department.Name;

/* Q7 */
SELECT Person.Person.FirstName, HumanResources.Department.Name, Person.EmailAddress.EmailAddress
FROM Person.Person, HumanResources.Department, Person.EmailAddress
WHERE HumanResources.Department.DepartmentID = Person.BusinessEntityID AND Person.EmailAddress.EmailAddress LIKE '%mar%';

/* Q8 */
SELECT Person.StateProvince.Name
FROM Person.StateProvince 
WHERE Person.StateProvince.CountryRegionCode='DE';

/* Q9 */
SELECT DISTINCT RIGHT (Person.PersonPhone.PhoneNumber, 4)
FROM Person.PersonPhone
WHERE Person.PersonPhone.PhoneNumberTypeID=2;

/* Q10 */
SELECT BusinessEntityID
FROM Person.BusinessEntityAddress
WHERE AddressID in (SELECT AddressID FROM Person.Address WHERE
AddressLine1 ='2487 Riverside Drive');

