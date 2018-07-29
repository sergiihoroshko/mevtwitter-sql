USE mevtwitter;

SELECT * FROM twitter_feed
WHERE users_idusers = 27
OR users_idusers IN
(
	SELECT idfollowed
	FROM follow
	WHERE idfollower = 27 
)
ORDER BY twitt_create ASC; 