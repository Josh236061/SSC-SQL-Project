
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
    ("Arthur", "Thomas", 4, NULL),
    ("Josh", "Thomas", 8, NULL),
    ("Albert", "Thomas", 2, NULL),
    ("Deveren", "Thomas", 2, NULL),
    ("Annicke", "Joseph", 3, NULL),
    ("Milton", "Modeste", 6, NULL),
    ("Jose", "Calzada", 7, NULL);

    INSERT INTO equipment
    (unit_number, equipment_type, make, model)
VALUES
    ("", "", 1, 1),
    ("", "", 1, NULL),
    ("", "", 1, NULL),
    ("", "", 2, 2),
    ("", "", 2, NULL),
    ("", "", 3, NULL),
    ("", "", 3, 4),
    ("", "", 4, NULL);