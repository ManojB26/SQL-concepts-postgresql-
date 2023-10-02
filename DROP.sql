ALTER TABLE film_info
DROP COLUMN movies CASCADE
--deletes dependies

ALTER TABLE film_info
ADD movies VARCHAR(50) UNIQUE NOT NULL

INSERT INTO film_info(movies, info_id)
VALUES ('AVATAR', '1')

-- ALTER TABLE film_info
-- ALTER COLUMN movies SET POSITION AFTER info_id
--in pgsql AFTER AND SET POSITION is not supported
--insted use below selection

SELECT info_id, movies, timings FROM film_info;

DELETE FROM film_info
WHERE info_id='4'
--delete at particular row

SELECT * FROM film_info 