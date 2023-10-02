SELECT * FROM account;
INSERT INTO account(username, password,email,created_on)
VALUES ('Karna', 'password', 'karna@mail.com', CURRENT_TIMESTAMP);

SELECT * FROM job;
INSERT INTO job(job_name)
VALUES ('Engineer'),('Doctor');

SELECT * FROM account_job;
INSERT INTO account_job(user_id,job_id, hire_data)
VALUES('1', '1', CURRENT_TIMESTAMP)