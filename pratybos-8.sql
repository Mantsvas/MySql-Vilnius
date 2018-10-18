-- 1. Paruoškite duomenų bazės atnaujinimo skriptą. (tik struktūros).
USE `books`;

CREATE TABLE IF NOT EXISTS `author-book` (`authorId` INT, `bookId` INT);

ALTER TABLE `books` CONVERT TO CHARACTER SET utf8;

ALTER TABLE `books` DROP COLUMN `authorId`;
