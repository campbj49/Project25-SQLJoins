-- write your queries here
\c joins_exercise
/*SELECT * FROM owners o
	FULL JOIN vehicles v
	ON o.id = v.owner_id;--Query 1
SELECT o.first_name, o.last_name, COUNT(*) as count FROM owners o
	JOIN vehicles v
	ON o.id = v.owner_id
	GROUP BY o.id
	ORDER BY o.first_name;*/--Query 2
SELECT o.first_name, o.last_name, ROUND(AVG(v.price)) AS average_price, COUNT(*) as count
	FROM owners o
	JOIN vehicles v
	ON o.id = v.owner_id
	GROUP BY o.id
	HAVING COUNT(*) >1 and ROUND(AVG(v.price)) > 10000
	ORDER BY o.first_name;--Query 3