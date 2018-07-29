USE mevtwitter;

SELECT t.idtwitter_feed, t.twitt, 
COUNT(c.twitter_feed_idtwitter_feed) AS comments
FROM twitter_feed t
LEFT JOIN comments c ON (c.twitter_feed_idtwitter_feed = t.idtwitter_feed)
GROUP BY t.idtwitter_feed ASC;