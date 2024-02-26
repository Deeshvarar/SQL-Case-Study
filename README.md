Employee Management System:

This project involves the design and implementation of a database system for managing employees within an organization. The system includes tables for storing information about employees, departments, job roles, and locations.

Database Structure:

Locations Table:

The LOCATIONS table stores information about different locations where the organization operates. It includes the Location_ID as the primary key and the City where the location is situated.

Department Table:

The DEPARTMENT table holds details about various departments within the organization. It contains the Department_Id as the primary key, the Name of the department, and a foreign key Location_Id referencing the Location_ID in the LOCATIONS table.

Job Table:

The JOB table is responsible for managing different job roles within the organization. It consists of the Job_ID as the primary key and the Designation representing the job role.

Employee Table:

The EMPLOYEE table is a central component of the system, containing comprehensive information about each employee. It includes fields such as Employee_Id, Last_Name, First_Name, Middle_Name, Job_Id as a foreign key referencing the Job_ID in the JOB table, Manager_ID representing the manager of the employee, Hire_Date indicating the date of employment, Salary representing the employee's salary, Commission for any commission received, and Department_Id as a foreign key referencing the Department_Id in the DEPARTMENT table.

Queries:

The project includes a set of queries demonstrating the functionality of the system. These queries cover a range of operations, including simple data retrieval, filtering using the WHERE clause, ordering with the ORDER BY clause, grouping with the GROUP BY and HAVING clauses, and joining tables to retrieve more complex information.

Use Cases:

Retrieve Employee Details
Retrieve all details from the EMPLOYEE table, providing comprehensive information about each employee.

Contribution:

Feel free to contribute by enhancing queries or adding new insights. Submit pull requests or open issues for discussions.
