INSERT INTO job(job_name)
VALUES ('eating')

SELECT * FROM job

/* DELETE FROM TABLE --> This deletes whole table */
DELETE FROM job
WHERE job_name='eating'
RETURNING job_id,job_name /*this returns removed values of job_id only ONCE*/
