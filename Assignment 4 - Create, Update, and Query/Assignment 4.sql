# Create a COMPANY database. This should be part of your SQL script.
# and you may add a DROP DATABASE command before it so that you can re-run your script as many times as you like.

# Create tables that match the schema in figure 5.6, the COMPANY database in your book.
# Include all necessary constraints.

DROP TABLE IF EXISTS sys.Department;
DROP TABLE IF EXISTS sys.Project;
DROP TABLE IF EXISTS sys.WORKS_ON;
DROP TABLE IF EXISTS sys.DEPT_LOCATIONS;
DROP TABLE IF EXISTS sys.Dependent;
DROP TABLE IF EXISTS sys.Employee;
DROP TABLE IF EXISTS sys.Paychecks;
DROP TABLE IF EXISTS sys.Expenses;

-- Table 1: Employee
CREATE TABLE sys.Employee (
    Fname VARCHAR(255),
    Minit CHAR(1),
    Lname VARCHAR(255),
    Ssn CHAR(9),
    Bdate DATE,
    Address VARCHAR(255),
    Sex CHAR(1),
    Salary INT,
    Super_ssn CHAR(9),
    Dno INT,
    Primary Key(Ssn)
);

-- Table 2: Department
CREATE TABLE sys.Department (
    Dname VARCHAR(255),
    Dnumber INT,
    Mgr_ssn CHAR(9),
    Mgr_start_date DATE,
    Primary Key(Dnumber)
);

-- Table 3: DEPT_LOCATIONS
CREATE TABLE sys.DEPT_LOCATIONS (
    Dnumber INT,
    Dlocations VARCHAR(255),
    primary key (Dnumber, Dlocations)
);


-- Table 4: WORKS_ON
CREATE TABLE sys.WORKS_ON (
    Essn CHAR(9),
    Pno INT,
    Hours FLOAT,
    Primary Key(Essn, Pno)
);

-- Table 5: Project
CREATE TABLE sys.Project (
    Pname VARCHAR(255),
    Pnumber INT,
    Plocation VARCHAR(255),
    Dnum INT,
    Primary Key(Pnumber)
);

-- Table 6: Dependent
CREATE TABLE sys.Dependent (
    Essn CHAR(9),
    Dependent_name VARCHAR(255),
    Sex CHAR(1),
    Bdate DATE,
    Relationship VARCHAR(255),
    Primary Key(Essn, Dependent_name)
);
    

# Add new tables to track expenses by employees and paychecks to employees.
CREATE TABLE sys.Expenses (
    Essn CHAR(9),
    Expense_date DATE,
    Expense_description VARCHAR(255),
    Amount DECIMAL(10, 2),
    Primary Key(Essn, Expense_date, Expense_description)
    
);

CREATE TABLE sys.Paychecks (
    Essn CHAR(9),
    Paycheck_date DATE,
    Net_pay DECIMAL(10, 2),
    Primary Key(Essn, Paycheck_date)
);
# Insert matching information to the data seen in the book so that the queries you write will match.

-- Insert data into Employee table
INSERT INTO sys.Employee VALUES 
    ('John', 'B', 'Smith', '123456789', '1965-01-09', '731 Fondren, Houston, TX', 'M', 30000, '333445555', 5),
    ('Franklin', 'T', 'Wong', '333445555', '1955-12-08', '638 Voss, Houston, TX', 'M', 40000, '888665555', 5),
    ('Alicia', 'J', 'Zelaya', '999887777', '1968-01-19', '3321 Castle, Spring, TX', 'F', 25000, '987654321', 4),
    ('Jennifer', 'S', 'Wallace', '987654321', '1941-06-20', '291 Berry, Bellaire, TX', 'F', 43000, '888665555', 4),
    ('Ramesh', 'K', 'Narayan', '666884444', '1962-09-15', '975 Fire Oak, Humble, TX', 'M', 38000, '333445555', 5),
    ('Joyce', 'A', 'English', '453453453', '1972-07-31', '5631 Rice, Houston, TX', 'F', 25000, '333445555', 5),
    ('Ahmad', 'V', 'Jabbar', '888665555', '1969-03-29', '980 Dallas, Houston, TX', 'M', 25000, '987654321', 4),
    ('James', 'E', 'Borg', '987987987', '1937-11-10', '450 Stone, Houston, TX', 'M', 55000, NULL, 1);
   
   
-- Insert data into Dependent table
INSERT INTO sys.Dependent VALUES 
    ('333445555', 'Alice', 'F', '1986-04-05', 'Daughter'),
    ('333445555', 'Theodore', 'M', '1983-10-25', 'Son'),
    ('333445555', 'Joy', 'F', '1958-05-03', 'Spouse'),
    ('987654321', 'Abner', 'M', '1942-02-28', 'Spouse'),
    ('123456789', 'Michael', 'M', '1988-01-04', 'Son'),
    ('123456789', 'Alice', 'F', '1942-12-30', 'Daughter'),
    ('123456789', 'Elizabeth', 'F', '1967-05-05', 'Spouse');

-- Insert data into Department table
INSERT INTO sys.Department VALUES 
    ('Research', 5, '333445555', '1988-05-22'),
    ('Administration', 4, '987654321', '1995-01-01'),
    ('Headquarters', 1, '888665555', '1981-06-19');
    
    
    -- Insert data into DEPT_LOCATIONS table
INSERT INTO sys.DEPT_LOCATIONS VALUES 
    (1, 'Houston'),
    (4, 'Stafford'),
    (5, 'Bellaire'),
    (5, 'Sugarland'),
    (5, 'Houston');    
    
-- Insert data into WORKS_ON table
INSERT INTO sys.WORKS_ON VALUES 
    ('123456789', 1, 32.5),
    ('123456789', 2, 7.5),
    ('666884444', 3, 40.0),
    ('453453453', 1, 20.0),
    ('453453453', 2, 20.0),
    ('333445555', 2, 10),
    ('333445555', 3, 10),
    ('333445555', 10, 10),
    ('333445555', 20, 10),
    ('999887777', 30, 30),
    ('999887777', 10, 10),
    ('987987987', 10, 35),
    ('987987987', 30, 5),
    ('987654321', 30, 20),
    ('987654321', 20, 15),
    ('888665555', 20, NULL);
    

-- Insert data into Project table
INSERT INTO sys.Project VALUES 
    ('Product X', 1, 'Bellaire', 5),
    ('Product Y', 2, 'Sugarland', 5),
    ('Product Z', 3, 'Houston', 5),
    ('Computerization', 10, 'Stafford', 4),
    ('Reorganization', 20, 'Houston', 1),
    ('New benefits', 30, 'Stafford', 4);
    
# All parts of problem 6.10.

# A.) Retrieve the names of all employees in department 5 who work more than 10 hours per week on the ProductX project.
SELECT DISTINCT e.Fname AS EmployeeFirstName, e.Lname AS EmployeeLastName
FROM sys.Employee e
JOIN sys.WORKS_ON w ON e.Ssn = w.Essn
JOIN sys.Project p ON w.Pno = p.Pnumber
JOIN sys.Department d ON e.Dno = d.Dnumber
WHERE d.Dnumber = 5
    AND p.Pname = 'Product X'
    AND w.Hours > 10;
# Joyce English and John Smith are the only employee who works more than 10 hours a week on ProductX in department 5.


# B.) List the names of all employees who have a dependent with the same first name as themselves.
# Link the essn from the dependent table to the employee wiht the matching ssn. The compare that to the dependent name corresponding to the ssn. 
SELECT DISTINCT e.Fname AS EmployeeFirstName
FROM sys.Employee e
JOIN sys.Dependent d ON e.Ssn = d.Essn
WHERE e.Fname = d.Dependent_name;
# There are no employees who have a dpendent with the same first name as themselves.


# C.) Find the names of all employees who are directly supervised by ‘Franklin Wong’.
SELECT DISTINCT e.Fname AS EmployeeFirstName, e.Lname AS EmployeeLastName
FROM sys.Employee e
JOIN sys.Employee supervisor ON e.Super_ssn = supervisor.Ssn
WHERE supervisor.Fname = 'Franklin' AND supervisor.Lname = 'Wong';
# The employees supervised by Franklin Wong:
# 'John', 'Smith'
# 'Joyce', 'English'
# 'Ramesh', 'Narayan'

