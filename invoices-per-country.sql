SELECT co.country_name, count(*), AVG(i.total_price)
FROM country co, city ci, customer cu, invoice i
WHERE co.id = ci.country_id AND ci.id = cu.city_id AND cu.id = i.customer_id
GROUP BY co.country name
HAVING AVG(i.total_price) > (SELECT AVG(total price))


==========================================================or this will work perfectly as i just did the test myself now ========================
SELECT co.country_name, COUNT(*), AVG(i.total_price)
FROM country co
JOIN city ci ON co.id = ci.country_id
JOIN customer cu ON ci.id = cu.city_id
JOIN invoice i ON cu.id = i.customer_id
GROUP BY co.country_name
HAVING AVG(i.total_price) > (SELECT AVG(total_price) FROM invoice);

