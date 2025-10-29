-- 🦺20 SQL Practice Questions
SELECT *FROM workers_data;

----- Basic Queries (SELECT, WHERE, ORDER BY, LIMIT)------

-- Show the age, education, and occupation of the first 10 workers in the dataset.
SELECT TOP(10) age, education, occupation 
FROM workers_data;

-- Find all unique values in the workclass column.
SELECT DISTINCT workclass
FROM workers_data;

-- Retrieve the details of all workers who work exactly 40 hours per week.
SELECT * FROM workers_data 
WHERE hours_per_week = 40;

-- List the age and marital_status of workers who are Never-married, sorted from youngest to oldest.
SELECT age, marital_status FROM workers_data
WHERE marital_status = 'Never-married'
ORDER BY age ASC;

-- Find all workers who have an educational_num greater than or equal to $13$ (typically Bachelors and above) and are not from the United-States.
SELECT * FROM workers_data
WHERE educational_num >= 13
AND native_country != 'United-States';

---------- Aggregate Queries (COUNT, AVG, SUM, MIN, MAX)-------------

-- What is the total number of records (rows) in the dataset?
SELECT COUNT(*) AS total_no_of_records
FROM workers_data;

-- Calculate the average age of all workers.
SELECT AVG(age) AS Average_age_of_workers
FROM workers_data;

-- What is the maximum and minimum number of hours_per_week worked?
SELECT MAX(hours_per_week) 
AS MAX_WORKING_HOURS, MIN(hours_per_week) 
AS MIN_WORKING_HOURS 
FROM workers_data;

-- Find the sum of capital_gain for all workers who report an income greater than $50K (where income_>50K is $1$).
SELECT income_50K, SUM(capital_gain) 
AS SUM_CAPITAL_GAIN 
FROM workers_data
WHERE income_50K=1
GROUP BY income_50K
ORDER BY SUM_CAPITAL_GAIN;

--------- Grouping and Filtering (GROUP BY, HAVING)---------------

-- Count the number of workers in each education level.
SELECT COUNT(*) 
AS NO_OF_WORKERS, education 
FROM workers_data
GROUP BY education;

-- Calculate the average age for each gender.
SELECT AVG(age) 
AS AVERAGE_AGE, gender FROM workers_data
GROUP BY gender;

-- List the top $5$ most common occupation categories, ordered by the count.
SELECT TOP(5) occupation, COUNT(*) AS Common_occupation FROM workers_data
GROUP BY occupation
ORDER BY COUNT(*);

-- Find all workclass categories that have more than $2,000$ workers.
SELECT workclass, COUNT(*) 
AS num_workers
FROM workers_data
GROUP BY workclass
HAVING COUNT(*) > 2000;

-- For each race, calculate the average hours_per_week worked, but only include groups where the average hours worked is less than $40$.
SELECT race, AVG(hours_per_week) 
AS AVERAGE_WORK_HOURS 
FROM workers_data
GROUP BY race
HAVING AVG(hours_per_week) < 40;


------------- Advanced Queries (LIKE, BETWEEN, CASE/Subqueries)---------

-- Retrieve all records where the occupation column contains the word Sales (e.g., could be 'Sales' or 'Other-Sales').
SELECT * FROM workers_data
WHERE occupation LIKE '%Sales%';

-- Find all workers whose age is between $30$ and $40$ (inclusive) and whose workclass is Private.
SELECT * FROM workers_data 
WHERE age BETWEEN 30 AND 40 
AND workclass='Private';

-- Find the age, occupation, and hours_per_week 
-- for all Female workers who have an income greater than $50K (income_>50K = 1) and work more than 45 hours per week.
SELECT age, occupation, hours_per_week FROM workers_data
WHERE gender='FEMALE'
AND hours_per_week > 45
AND income_50K=1;

-- Identify the native_country with the highest total number of female workers.
SELECT TOP(1) native_country, COUNT(*) AS num_female_workers
FROM workers_data
WHERE gender = 'Female'
GROUP BY native_country
ORDER BY num_female_workers DESC;

-- Categorize workers into three age groups (Young: 17-30, Middle: 31-50, Senior:
SELECT
    CASE
        WHEN age BETWEEN 17 AND 30 THEN 'Young: 17-30'
        WHEN age BETWEEN 31 AND 50 THEN 'Middle: 31-50'
        ELSE 'Senior: 51+'
    END AS age,
    COUNT(*) AS num_workers
FROM workers_data
GROUP BY age
ORDER BY num_workers DESC;

-- Find the average capital_gain for workers in the Prof-specialty occupation who also have a Bachelors degree.
SELECT AVG(capital_gain) 
AS average_capital_gain
FROM workers_data
WHERE occupation = 'Prof-specialty' 
AND education = 'Bachelors';


































































































