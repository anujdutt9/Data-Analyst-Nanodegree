/* Select city name from City List */
SELECT *
FROM city_list
WHERE country LIKE 'India'
LIMIT 10;

/* Alter the names for Avg_Temp in City to City_Avg_Temp */
ALTER TABLE city_data RENAME COLUMN avg_temp to city_avg_temp;


/* Alter the names for Avg_Temp in Global to Global_Avg_Temp */
ALTER TABLE global_data RENAME COLUMN avg_temp to global_avg_temp;

/* Before downloading the CSV File, select the three columns with the data and join the two tables to get the relevent data. */
SELECT gd.year, gd.global_avg_temp, cd.city_avg_temp
FROM global_data AS gd
INNER JOIN city_data as cd
ON gd.year = cd.year
WHERE city LIKE 'Delhi';