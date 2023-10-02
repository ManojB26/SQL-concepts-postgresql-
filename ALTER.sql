CREATE TABLE information(
	info_ID SERIAL PRIMARY KEY NOT NULL,
	movies VARCHAR(50) UNIQUE NOT NULL,
	timings INTEGER NOT NULL,
	created_on TIMESTAMP
)

ALTER TABLE information
RENAME TO film_info

SELECT * FROM film_info
INSERT INTO film_info(movies)
VALUES ('Hero')
/*ERROR:  Failing row contains (1, Hero, null, null).null value in column "timings" of relation "film_info" violates not-null constraint 

ERROR:  null value in column "timings" of relation "film_info" violates not-null constraint
SQL state: 23502
Detail: Failing row contains (1, Hero, null, null).*/

ALTER TABLE film_info ALTER COLUMN timings
DROP NOT NULL

UPDATE film_info SET created_on=CURRENT_TIMESTAMP

ALTER TABLE account_job RENAME COLUMN hire_data TO hiredate
SELECT * FROM account_job
