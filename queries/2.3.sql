USE mevtwitter;

SELECT u.idusers, u.name, u.username,
COUNT(f.idfollower) AS follow
FROM users u
LEFT JOIN follow f ON (f.idfollowed = u.idusers)
GROUP BY u.idusers;