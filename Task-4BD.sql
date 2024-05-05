SELECT d.dname
FROM domains d
JOIN users u ON d.user_id = u.user_id
WHERE u.name = 'Иван Иванов';