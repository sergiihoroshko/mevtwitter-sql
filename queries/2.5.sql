USE mevtwitter;

SELECT u.idusers, u.name, u.username
FROM users u
LEFT JOIN twitter_feed t ON (t.users_idusers = u.idusers)
WHERE t.idtwitter_feed IS NULL
GROUP BY u.idusers;