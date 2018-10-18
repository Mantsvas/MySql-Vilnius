USE `books`;
-- 1. Pašalinkite jūsų įrašytus autorius. (pagal ID)
DELETE FROM `authors`
WHERE `authorId` = "8" OR `authorId` = "9";
