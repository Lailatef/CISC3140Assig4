/* N# 5 --- Answer 1     Show the total population of the world. */

SELECT SUM(population)
FROM world


/* Q # 5 --- Answer 2  List all the continents - just once each. */

SELECT distinct continent from world



/* Q # 5 --- Answer 3 Give the total GDP of Africa. */

SELECT SUM(GDP)
FROM world where continent = 'Africa'


/* Q # 5 --- Answer 4 How many countries have an area of at least 1000000. */

Select count(name)
from world
where area > 999999

/* Q # 5 --- Answer 5 What is the total population of ('Estonia', 'Latvia', 'Lithuania'). */

select sum (population) from world
where name = 'estonia' or name = 'latvia' or name = 'lithuania'

/* Q # 5 --- Answer 6  For each continent show the continent and number of countries. */

select continent, count(name)
from world
group by continent

/* Q # 5 --- Answer 7  For each continent show the continent and number of countries with populations of at least 10 million. */

select continent, count(name)
from world
where population > 9999999
group by continent

/* Q # 5 --- Answer 8  List the continents that have a total population of at least 100 million. */

SELECT continent
FROM world
GROUP BY continent
HAVING SUM(population) >= 100000000