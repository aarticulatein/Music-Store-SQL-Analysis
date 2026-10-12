
/* Q1: Find how much amount spent by each customer on artists? Write a query to return customer name, artist name and total spent */

SELECT
    c.customer_id,
    c.first_name,
    c.last_name,
    a.name AS artist_name,
    SUM(il.unit_price * il.quantity) AS amount_spent
FROM invoice AS i
JOIN customer AS c
    ON c.customer_id = i.customer_id
JOIN invoice_line AS il
    ON il.invoice_id = i.invoice_id
JOIN track AS t
    ON t.track_id = il.track_id
JOIN album AS alb
    ON alb.album_id = t.album_id
JOIN artist AS a
    ON a.artist_id = alb.artist_id
GROUP BY
    c.customer_id,
    c.first_name,
    c.last_name,
    a.artist_id,
    a.name
ORDER BY amount_spent DESC;

/* Q2: We want to find out the most popular music Genre for each country. We determine the most popular genre as the genre 
with the highest amount of purchases. Write a query that returns each country along with the top Genre. For countries where 
the maximum number of purchases is shared return all Genres. */

WITH popular_genre AS (
    SELECT
        SUM(il.quantity) AS purchases,
        c.country,
        g.name AS genre,
        g.genre_id,
        RANK() OVER (
            PARTITION BY c.country
            ORDER BY SUM(il.quantity) DESC
        ) AS genre_rank
    FROM invoice_line AS il
    JOIN invoice AS i
        ON i.invoice_id = il.invoice_id
    JOIN customer AS c
        ON c.customer_id = i.customer_id
    JOIN track AS t
        ON t.track_id = il.track_id
    JOIN genre AS g
        ON g.genre_id = t.genre_id
    GROUP BY c.country, g.name, g.genre_id
)
SELECT *
FROM popular_genre
WHERE genre_rank = 1
ORDER BY country;

/* Q3: Write a query that determines the customer that has spent the most on music for each country. 
Write a query that returns the country along with the top customer and how much they spent. 
For countries where the top amount spent is shared, provide all customers who spent this amount. */
WITH Customer_with_country AS (
    SELECT
        c.customer_id,
        c.first_name,
        c.last_name,
        i.billing_country,
        SUM(i.total) AS total_spending,
        RANK() OVER (
            PARTITION BY i.billing_country
            ORDER BY SUM(i.total) DESC
        ) AS rank_no
    FROM invoice AS i
    JOIN customer AS c
        ON c.customer_id = i.customer_id
    GROUP BY
        c.customer_id,
        c.first_name,
        c.last_name,
        i.billing_country
)
SELECT *
FROM Customer_with_country
WHERE rank_no = 1
ORDER BY billing_country;
