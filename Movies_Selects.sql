# SELECT
#1
Select *
FROM movies;

#2
Select
first_name,
last_name,
rating
From actors;

#3
Select title
From series;

#WHERE y ORDER BY
#4
Select
first_name,
last_name,
rating
From actors
Where rating >7.5;

#5
Select title, rating, awards
From movies
Where rating >7.5 AND awards>2;

#6
Select title, 
rating
FROM movies
order by rating asc;

#BETWEEN Y LIKE
#7
Select Title,
rating
From movies
Where upper(Title) like "%TOY STORY%"
;

#8 
Select *
From actors
Where first_name like "Sam%";

#9
Select *
From movies
Where release_date between "2004-01-01" and "2008-12-31";

#Alias, limit y offset
# 10
Select
title as TituloSerie
From series;

#11
Select 
Title as Titulo,
Rating,
Awards as Premios,
release_date as FechaLanzamiento
From movies
Where
Rating >3
AND 
awards >1
AND
release_date between "1988-01-01" and "2009-12-31"
ORder by
rating desc;

#12
Select 
Title as Titulo,
Rating,
Awards as Premios,
release_date as FechaLanzamiento
From movies
Where
Rating >3
AND 
awards >1
AND
release_date between "1988-01-01" and "2009-12-31"
ORder by
rating desc
limit 3
offset 10
;
#13
Select *
FROM episodes
Order by rating asc
Limit 3;

#14
Select id,
first_name as Nombre,
last_name as Apellido, 
rating
From actors

