
-- Caution: this statement drops the existing storage_sj table
DROP TABLE IF EXISTS storage_sj;

-- Creating storage_sj table
CREATE TABLE storage_sj (owners VARCHAR, item_1_sj VARCHAR, item_2_sj VARCHAR, item_3_sj VARCHAR);

-- Inserting data into storage_sj table
INSERT INTO storage_sj (owners, item_1_sj, item_2_sj, item_3_sj)
VALUES ('Matt', 'TV', 'Canoe', 'Mattress'),
       ('Cody', 'Saxophone', 'Piano', 'DJ Set');

SELECT *
FROM storage_sj;

-- Caution: this statement drops the existing storage_ok table
DROP TABLE IF EXISTS storage_ok;

-- Creating storage_ok table
CREATE TABLE storage_ok (owners VARCHAR, item_1_ok VARCHAR, item_2_ok VARCHAR, item_3_ok VARCHAR);

-- Inserting data into storage_ok table
INSERT INTO storage_ok (owners, item_1_ok, item_2_ok, item_3_ok)
VALUES ('Matt', 'Dresser', 'Tires', 'Safe'),
       ('Donna', 'Shoes', 'Pots', 'Pole');

SELECT *
FROM storage_ok;

-- INNER JOIN [storage_sj and storage_ok], simply use the JOIN command here
SELECT sj.*,
       ok.item_1_ok,
       ok.item_2_ok,
       ok.item_3_ok
FROM storage_sj sj
JOIN storage_ok ok ON sj.owners = ok.owners;

-- LEFT JOIN [storage_sj and storage_ok]
SELECT sj.*,
       ok.item_1_ok,
       ok.item_2_ok,
       ok.item_3_ok
FROM storage_sj sj
LEFT JOIN storage_ok ok ON sj.owners = ok.owners;

-- RIGHT JOIN [storage_sj and storage_ok]
SELECT ok.*,
       sj.item_1_sj,
       sj.item_2_sj,
       sj.item_3_sj
FROM storage_sj sj
RIGHT JOIN storage_ok ok ON sj.owners = ok.owners;

-- FULL OUTER JOIN [storage_sj and storage_ok], FULL JOIN or FULL OUTER JOIN command may be used here
SELECT *
FROM storage_sj sj
FULL JOIN storage_ok ok ON sj.owners = ok.owners;
