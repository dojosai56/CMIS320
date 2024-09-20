CREATE TABLE employee (
    employee_id INTEGER PRIMARY KEY,
    first_name VARCHAR(30) NOT NULL,
    last_name VARCHAR(30) NOT NULL,
    position_title VARCHAR(30),
    location VARCHAR(30)
    );

INSERT INTO
    employee (employee_id, first_name, last_name, position_title, location)
VALUES
    (6, 'Mason', 'Reinhart', 'Junior Designer', 'Washington DC');

INSERT INTO
    employee (employee_id, first_name, last_name, position_title, location)
VALUES
    (7, 'Shayne', 'Piltz', 'Architectural Designer', 'Washington DC');
    
INSERT INTO
    employee (employee_id, first_name, last_name, position_title, location)
VALUES
    (9, 'Bhavishya', 'Venkitaraman', 'Architect and Community Planner', 'Washington DC');
    
INSERT INTO
    employee (employee_id, first_name, last_name, position_title, location)
VALUES
    (5, 'Miguel', 'Carlin', 'Senior Associate • Information Technology', 'Washington DC');
    
INSERT INTO
    employee (employee_id, first_name, last_name, position_title, location)
VALUES
    (2, 'Abbas', 'Uddin', 'Principal • Information Technology', 'New York');
    
SELECT * FROM employee;