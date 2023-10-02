SELECT * FROM account;
-- all below updates are for last_login
UPDATE account
SET last_login=CURRENT_TIMESTAMP
WHERE last_login IS NULL

UPDATE account
SET last_login=created_on 

UPDATE account
SET last_login=CURRENT_TIMESTAMP
RETURNING email, last_login, created_on

SELECT * FROM account_job;
UPDATE account_job
SET hire_data=account.created_on
FROM account
WHERE account.user_id=account_job.user_id