USE `books`;
-- 1. Išrinkite visus įrašus, tiek iš knygų tiek iš autorių lentelių, išrinkdami pasirinktinai du stulpelius.
SELECT `authorId` FROM `authors`
UNION ALL
SELECT `authorId` FROM `books`;
