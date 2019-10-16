SELECT CONCAT(first_name, last_name) AS name,
       SUM(p.id) AS post_count,
       AVG(p.rating) AS avg_rating
FROM users AS u
JOIN posts AS p ON u.id = p.user_id
GROUP BY name