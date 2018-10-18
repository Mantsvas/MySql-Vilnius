USE `books`;
-- 1. Suskaičiuokite kiek knygų kiekvieno autoriaus yra duomenų bazėje
-- 1.1. įtraukdami autorius, kurie neturi knygų .
SELECT `authors`.`authorId`, `authors`.`name`, COUNT(`title`)
FROM `authors`
LEFT JOIN `books`
ON `books`.`authorId` = `authors`.`authorId`
GROUP BY `authors`.`authorId`;

-- 1.2 neįtraukdami šių autorių
SELECT `authors`.`authorId`, `authors`.`name`, COUNT(`title`)
FROM `authors`
RIGHT JOIN `books`
ON `books`.`authorId` = `authors`.`authorId`
GROUP BY `authors`.`authorId`;

-- 2. Pašalinkite autorius, kurie neturi knygų.
-- Kadangi trinimas vyksta ne pagal PRIMARY KEY, todėl tenka išjungti SAFE UPDATE, kuris pas mane įjungtas pagal DEFAULT
SET SQL_SAFE_UPDATES = 0;

DELETE `authors`
FROM `authors`
LEFT JOIN `books` ON `authors`.`authorId` = `books`.`authorId`
WHERE `books`.`authorId` IS NULL;

SET SQL_SAFE_UPDATES = 1;
