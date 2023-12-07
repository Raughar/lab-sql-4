-- Selecting the database to work with:
use sakila;

-- Getting film rates:
select title, rental_rate from film;

-- Getting all release years:
select title, release_year from film;

-- Getting all films with the word Armageddon on the name:
select film_id, title
from film
where title like "%ARMAGEDDON%";

-- Getting all the films with the wor Apollo on the name:
select film_id, title
from film
where title like "%APOLLO%";

-- Getting all the films whose names end in Apollo:
select film_id, title
from film
where title like "%APOLLO";

-- Getting all the films whose titles contain the word Date:
select film_id, title
from film
where title like "%DATE%";

-- Getting the 10 films with the longest title:
select film_id, title
from film
order by length(title) desc
limit 10;

-- Getting the 10 longest films:
select film_id, title, length
from film
order by length desc
limit 10;

-- Checking how many films contains Behind the Scenes Content:
	-- Checking the value for Behind the Scenes:
    select special_features from film;
    
    -- Getting the data:
    select count(*) as Number_Of_Films_With_BtS
    from film
    where special_features like "%Behind the Scenes%";
    
-- Getting and ordering the films by release year and alphabetical order:
select film_id, title, release_year
from film
order by release_year asc, title asc;