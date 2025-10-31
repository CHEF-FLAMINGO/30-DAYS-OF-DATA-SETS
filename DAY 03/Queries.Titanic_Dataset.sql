-- 🧠 SQL Questions (Titanic Dataset Edition)
-- 🔹 Basic Level (1–7)
-- Show all columns for the first 10 passengers.
SELECT
 TOP(10) * 
FROM [Titanic-Dataset];

-- List all unique embarkation ports from the dataset.
SELECT DISTINCT Embarked
FROM [Titanic-Dataset];

-- Count how many passengers are in each passenger class (Pclass).
SELECT COUNT(PassengerId) AS TOTAL_PASSENGERS, Pclass FROM [Titanic-Dataset]
GROUP BY Pclass
ORDER BY TOTAL_PASSENGERS;

-- Find the number of passengers who survived and those who didn’t.
SELECT Survived, COUNT(*) AS PASSENGERS FROM [Titanic-Dataset] 
GROUP BY Survived;

-- Retrieve all female passengers who were in Pclass = 1.
SELECT * FROM [Titanic-Dataset]
WHERE Sex='Female' AND Pclass=1;

-- Get the names and ages of passengers who paid a fare greater than 100.
SELECT [Name], age, Fare
FROM [Titanic-Dataset]
WHERE Fare>100;

-- Find passengers younger than 18, and label them as “Children”.
SELECT [Name], Age, Sex, Pclass, 
CASE 
WHEN Age < 18 THEN 'Children'
END AS 'Passenger_type' 
FROM [Titanic-Dataset]
WHERE Age < 18;


-------- 🔹 Intermediate Level (8–14)

-- Calculate the average age of survivors vs. non-survivors.
SELECT Survived,AVG(Age) 
AS AVERAGE_AGE,
COUNT(*) AS PASSENGERS 
FROM [Titanic-Dataset]
GROUP BY Survived;

-- Find the total fare sum collected from each embarkation point.
SELECT
 Embarked, SUM(Fare) 
AS TOTAL_FARES 
FROM [Titanic-Dataset]
GROUP BY Embarked;

-- Show the top 5 oldest passengers, including their name, age, and survival status.
SELECT TOP(5)
 Age, [Name], survived, PassengerId 
 FROM [Titanic-Dataset]
 ORDER BY Age DESC;

-- Count the number of passengers by gender in each passenger class.
SELECT COUNT(SEX)
 AS NUMBER_OF_PASSENGERS, Pclass
FROM [Titanic-Dataset]
GROUP BY Pclass;

-- Find the youngest passenger in each passenger class.
SELECT Pclass, MIN(Age) AS Youngest_Age
FROM [Titanic-Dataset]
GROUP BY Pclass;

-- Get all passengers who traveled with siblings/spouses (SibSp > 0).
SELECT * FROM [Titanic-Dataset]
WHERE SibSp >0;

-- Find passengers whose name starts with 'A', showing their name, age, and ticket.
SELECT [Name], Age, Ticket
FROM [Titanic-Dataset]
WHERE [Name] LIKE 'A%';


----- 🔹 Advanced Level (15–20)

-- Find the survival rate for each class (Pclass) — as a percentage.
SELECT
 Pclass, 
 ROUND((SUM(Survived)*100.0 /COUNT(*)), 2) AS Survival_Rate_Percent 
FROM [Titanic-Dataset]
GROUP BY Pclass;

-- Calculate the average fare per class and sex combination.
SELECT
 AVG(Fare) Average_Fare, 
 Pclass, 
 Sex 
FROM [Titanic-Dataset]
GROUP BY Sex, Pclass;

-- Find the most common age group among survivors (you can group by ranges like 0–18, 19–35, 36–50, 51+).
SELECT 
TOP(1)
  CASE
    WHEN Age BETWEEN 0 AND 18 THEN '0–18'
    WHEN Age BETWEEN 19 AND 35 THEN '19–35'
    WHEN Age BETWEEN 36 AND 50 THEN '36–50'
    WHEN Age > 50 THEN '51+'
    ELSE 'Unknown'
  END AS Age_Group,
  COUNT(*) AS Number_of_Survivors
FROM [Titanic-Dataset]
WHERE Survived = 1
GROUP BY 
  CASE
    WHEN Age BETWEEN 0 AND 18 THEN '0–18'
    WHEN Age BETWEEN 19 AND 35 THEN '19–35'
    WHEN Age BETWEEN 36 AND 50 THEN '36–50'
    WHEN Age > 50 THEN '51+'
    ELSE 'Unknown'
END
ORDER BY Number_of_Survivors DESC;
  
-- Find passengers who paid more than the average fare of their class.
SELECT
 [Name],
 Pclass, 
 Fare 
FROM [Titanic-Dataset] 
WHERE Fare >
 (SELECT AVG(Fare) FROM [Titanic-Dataset]);

-- Rank passengers by fare in descending order (use RANK() or DENSE_RANK() if supported).
SELECT * 
FROM [Titanic-Dataset]
ORDER BY Fare DESC;

-- Create a summary view called titanic_summary showing:
-- Pclass,
-- total passengers,
-- survivors,
-- average age,
-- average fare.
SELECT
 * FROM [Titanic-Dataset] 
titanic_summary;
