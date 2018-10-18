USE `books`;
-- 1. Knygos gali turėti vieną ir daugiau autorių.
CREATE TABLE `author-book` (`authorId` INT, `bookId` INT);

-- 2. Sutvarkyti duomenų bazės duomenis, jei reikia papildykite naujais.
INSERT INTO `author-book` (`authorId`,`bookId`)
SELECT `authorId`,`bookId` FROM `books`
WHERE `bookId` IS NOT NULL AND `authorId` IS NOT NULL;

ALTER TABLE `books` DROP COLUMN `authorId`;

-- 3. Išrinkite visas knygas su jų autoriais. (autorius, jei jų daugiau nei vienas atskirkite kableliais)
SELECT `books`.`title`, group_concat(`authors`.`name`) as "authors"
FROM `books`
LEFT JOIN `author-book`
ON `books`.`bookId` = `author-book`.`bookId`
LEFT JOIN `authors`
ON `authors`.`authorId` = `author-book`.`authorId`
GROUP BY `books`.`title`;

-- 4. Sutvarkykite  knygų lentelę, kad galėtumėte išsaugoti originalų knygos pavadinimą. (Pavadinime išsaugokite, lietuviškas raides kaip ą,ė,š ir pan.)
ALTER TABLE `books` CONVERT TO CHARACTER SET utf8;
INSERT INTO `books` SET `title` = "Ąžuolas", `year` = 2000;
