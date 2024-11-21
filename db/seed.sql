
USE employees;

INSERT INTO department
    (name)
VALUES
    ("Administration"), 
    ("Operations"),
    ("Shop"),
    ("IT");

INSERT INTO role
    (title, salary, department_id)
VALUES
    ("President/Vice-President", 000, 1),
    ("Equipment Manager", 000, 1),
    ("Accounting/Finance Manager", 000, 1),
    ("Operations Manager", 000, 2),
    ("Operations Assistant", 000, 2),
    ("Service Manager", 000, 3),
    ("Service Assistant", 000, 3),
    ("IT Manager", 000, 4);

INSERT INTO employee
    (first_name, last_name, role_id, manager_id)
VALUES
    ("Nerv", "Thomas", 1, 1),
    ("Melinna", "Thomas", 1, NULL),
    ("Arthur", "Thomas", 1, NULL),
    ("Josh", "Thomas", 2, 2),
    ("Albert", "Thomas", 2, NULL),
    ("Deveren", "Thomas", 3, NULL),
    ("Annicke", "Joseph", 3, 4),
    ("Milton", "Modeste", 4, NULL);