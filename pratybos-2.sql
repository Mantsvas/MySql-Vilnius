USE `books`;
-- 1. Papildykite autorių lentelę 2 įrašais;
INSERT INTO `authors`
SET `name` = "Jonas Jonaitis";
INSERT INTO `authors`
SET `name` = "Petras Petraitis";

-- 2. Papildykite knygų lentelę, 3 įrašais apie knygas, kurių autorius įrašėte prieš tai.
INSERT INTO `books`
SET `authorId` = "8", `title` = "Knyga", `year` = "2010";
INSERT INTO `books`
SET `authorId` = "9", `title` = "Pavadinimas", `year` = "2000";
INSERT INTO `books`
SET `authorId` = "8", `title` = "Book", `year` = "2005";

-- 3. Pakeiskite vienos knygos autorių į kitą.
UPDATE `books`
SET `authorId` = "2"
WHERE `bookId` = "1";
