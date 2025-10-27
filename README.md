# 🌍 Earthquake_Data_Tsunami

This project analyzes historical earthquake records using **SQL**.  
The dataset contains real-world earthquake data, including details like magnitude, location, depth, date, and tsunami warnings. The goal of this project is to explore patterns, understand trends, and derive meaningful insights from past earthquake events.

---

## 📌 **Overview**

- Uses SQL queries to analyze earthquake data from a **CSV dataset**.
- Provides insights like:
  - Highest and lowest earthquake magnitudes recorded.
  - Locations with the most frequent earthquakes.
  - Earthquake events that triggered tsunamis.
  - Average depth and magnitude of earthquakes over time.
- Aimed at helping users understand global earthquake history and tsunami-related events.

---

## 🗂 **Dataset Description**

The project uses a CSV file containing earthquake data with fields such as:

| Column Name       | Description                                  |
|-------------------|----------------------------------------------|
| `date`            | Date and time of the earthquake              |
| `latitude`        | Latitude of the earthquake epicenter         |
| `longitude`       | Longitude of the earthquake epicenter        |
| `magnitude`       | Magnitude of the earthquake (Richter scale) |
| `depth`           | Depth of the earthquake in kilometers        |
| `location`        | Place/region where the earthquake occurred   |
| `tsunami`         | Indicates if a tsunami was triggered (1 = Yes, 0 = No) |

---

## ⚙️ **How the Project Works**

1. The CSV file is imported into an SQL database or environment.
2. SQL queries are used to:
   - Filter, sort, and group earthquake data.
   - Identify tsunami-triggering earthquakes.
   - Perform aggregations like `MAX()`, `COUNT()`, `AVG()`, etc.
3. Results from SQL queries are used to understand trends and answer questions about earthquake occurrences.

---

## 🧠 **Examples of SQL Queries Used**

```sql
-- Find the strongest earthquake ever recorded
SELECT MAX(magnitude) AS Highest_Magnitude FROM Earthquake_Data;

-- List all earthquake events that triggered a tsunami
SELECT * FROM Earthquake_Data
WHERE tsunami = 1;

-- Count earthquakes by country/location
SELECT location, COUNT(*) AS Total_Earthquakes
FROM Earthquake_Data
GROUP BY location
ORDER BY Total_Earthquakes DESC;
