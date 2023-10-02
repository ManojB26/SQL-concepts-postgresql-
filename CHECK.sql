CREATE TABLE employee(
	emp_id SERIAL PRIMARY KEY,
	first_name VARCHAR(30) NOT NULL,
	last_name VARCHAR(30) NOT NULL,
	phone_number INTEGER CHECK (phone_number>=1000000000 AND phone_number<=9999999999),
	email VARCHAR(50) NOT NULL,
	birth_date DATE CHECK (birth_date<='1991-01-01'),
	hire_date DATE CHECK(hire_date>birth_date)
)

ALTER TABLE employee ALTER COLUMN phone_number
TYPE BIGINT
--change datatype

SELECT * FROM employee

INSERT INTO employee(first_name, last_name, phone_number, email, birth_date, hire_date)
VALUES ('Karna', 'Kumar', '9371846378','karnak@mail.com', '1990-01-01', '1998-01-01'), 
('Karna', 'Kumar', '9371846378','karnak@mail.com', '1990-01-01', '1998-01-01')