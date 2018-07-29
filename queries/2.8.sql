USE mevtwitter;

SELECT * FROM comments WHERE comment_create >= now() - INTERVAL 10 HOUR;