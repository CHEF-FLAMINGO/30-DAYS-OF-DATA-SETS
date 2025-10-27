-- Display all columns from the dataset.
SELECT* FROM earthquake_data_tsunami;

-- Show all earthquakes with a magnitude greater than 6.5.
SELECT * FROM earthquake_data_tsunami 
WHERE magnitude>6.5 
ORDER BY magnitude DESC

-- Retrieve earthquakes that occurred in the year 2022.
SELECT * FROM earthquake_data_tsunami WHERE [Year]=2022

-- List earthquakes that resulted in a tsunami (tsunami = 1).
SELECT*FROM earthquake_data_tsunami WHERE tsunami=1

-- Get earthquakes where depth is greater than 300 km.
SELECT*FROM earthquake_data_tsunami WHERE depth > 300

-- Show the top 10 strongest earthquakes by magnitude.
SELECT TOP (10) * FROM earthquake_data_tsunami
ORDER BY magnitude;

-- List earthquakes sorted by depth in descending order.
SELECT * FROM earthquake_data_tsunami
ORDER BY depth DESC;

-- Find all unique years where earthquakes occurred.
SELECT DISTINCT [Year]
FROM [dbo].[earthquake_data_tsunami]
ORDER BY [Year];

-- Show the top 5 shallowest earthquakes (minimum depth).
SELECT TOP(5) * FROM  earthquake_data_tsunami
ORDER BY depth ASC;

-- Display earthquakes where the magnitude is between 5.0 and 7.0.
SELECT * FROM earthquake_data_tsunami 
WHERE magnitude BETWEEN 5.0 AND 7.0
ORDER BY magnitude DESC;

-- Count how many earthquakes occurred each year.
SELECT Year, COUNT(*) AS total_earthquakes
FROM earthquake_data_tsunami
GROUP BY Year
ORDER BY Year;


-- Find the average magnitude of all earthquakes.
SELECT AVG(magnitude) AS AVERAGE_MAGNITUDE 
FROM earthquake_data_tsunami;

-- Count how many earthquakes caused tsunamis vs. no tsunamis.
SELECT tsunami, COUNT(*) AS total_earthquakes
FROM earthquake_data_tsunami
GROUP BY tsunami;

-- What is the maximum depth and minimum depth recorded?
SELECT 
    MAX(depth) AS MAXIMUM_DEPTH, 
    MIN(depth) AS MINIMUM_DEPTH
FROM earthquake_data_tsunami;

-- Show the total number of earthquakes per month in 2022.
SELECT month, COUNT(*) AS MONTHLY_QUAKES
FROM earthquake_data_tsunami 
WHERE Year=2022
GROUP BY month
ORDER BY month;

--  Which year had the highest number of earthquakes?
SELECT TOP(1) [YEAR], COUNT(*) AS TOTAL_QUAKES FROM earthquake_data_tsunami
GROUP BY YEAR
ORDER BY TOTAL_QUAKES DESC

-- Show the average magnitude of earthquakes that caused a tsunami vs. those that didn’t.
SELECT tsunami, AVG(magnitude) 
AS average_magnitude FROM earthquake_data_tsunami
GROUP BY tsunami;

--  Top 5 years with the highest average magnitude
SELECT TOP(5) Year, AVG(magnitude) 
AS AVERAGE_MAGNITUDE FROM earthquake_data_tsunami
GROUP BY [Year]
ORDER BY AVERAGE_MAGNITUDE DESC;

-- Show the month with the highest number of earthquakes in 2022.
SELECT TOP(1) MONTH, COUNT(*) 
AS NUMBER_OF_QUAKES FROM earthquake_data_tsunami
GROUP BY MONTH
ORDER BY NUMBER_OF_QUAKES DESC

-- Find all earthquakes where the magnitude is greater than the average magnitude.
SELECT * FROM earthquake_data_tsunami 
WHERE magnitude> (SELECT AVG(magnitude) FROM earthquake_data_tsunami)

-- Show the deepest earthquake recorded in each year  
SELECT Year, MAX(DEPTH) AS deepest_quake from earthquake_data_tsunami
GROUP BY year;
