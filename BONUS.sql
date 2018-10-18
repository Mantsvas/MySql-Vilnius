USE `news`;
SELECT `news`.`newsId`,`news`.`date` as `newsDate`,`news`.`text` as `newsText`,`c`.`date` as `commentDate`,`comments`.`text` as `commentText`
    FROM `comments`
    JOIN `news` ON `news`.`newsId` = `comments`.`newsId`
    JOIN (SELECT `newsId`, MAX(`date`) as `date` FROM `comments` GROUP BY  `comments`.`newsId`) `c`
    ON `comments`.`date` = c.`date`
WHERE `c`.`newsId` = `news`.`newsId`
GROUP BY `news`.`newsId`
ORDER BY `news`.`date` DESC
LIMIT 10;
