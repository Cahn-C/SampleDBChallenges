use [SAMPLEDB]


-- Challenge 1
select * from bird.california_sightings
union all
select * from bird.arizona_sightings


-- Challenge 2
select scientific_name from bird.california_sightings
union
select scientific_name from bird.arizona_sightings


-- Challenge 3
select scientific_name from bird.california_sightings
union
select scientific_name from bird.arizona_sightings


-- Challenge 4
select scientific_name, 'California' as state_name from bird.california_sightings
union
select scientific_name, 'Arizona' as state_name from bird.arizona_sightings
order by state_name, scientific_name


-- Challenge 5
select 'California' as stat_name, sighting_id, common_name, scientific_name, location_of_sighting, sighting_date 
from bird.california_sightings
union all
select 'Arizona' as stat_name, sighting_id, common_name, scientific_name, sighting_location, sighting_date 
from bird.arizona_sightings
union all
select 'Florida' as stat_name, observation_id, null, scientific_name, locality, sighting_datetime 
from bird.florida_sightings


-- Challenge 6
select customer_id from oes.customers
intersect
select customer_id from oes.orders


-- Challenge 7
select product_id from oes.products
except
select product_id from oes.inventories