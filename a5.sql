CREATE TABLE Departments(
	department_id INT PRIMARY KEY NOT NULL,
	department_name VARCHAR(30) NOT NULL,
	manager_id NUMERIC(6,0) NULL,
	location_id NUMERIC(4,0) NULL
	)









INSERT INTO section11.S11U1.Departments
SELECT * FROM HR.dbo.DEPARTMENTS;



INSERT INTO section11.S11U1.Departments(department_id, department_name, manager_id, location_id)
VALUES (1000, 'Gamming', NULL, 1800);



UPDATE section11.S11U1.Departments
SET department_name='Gamming Tubocharged'
WHERE department_id=1000;




DELETE FROM section11.S11U1.Departments WHERE department_id=1000;

SELECT * FROM section11.S11U1.Departments;

ALTER TABLE section11.S11U1.Departments
ALTER COLUMN
manager_id INT NOT NULL;






ALTER TABLE section11.S11U1.Departments
DROP COLUMN location_id;