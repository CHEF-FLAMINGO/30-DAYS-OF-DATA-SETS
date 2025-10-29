# 🗓️ 30 DAYS OF DATA SETS

This repository documents my 30-day data analysis challenge, where I explore a new dataset each day to improve my skills in data cleaning, analysis, and visualization.

Each folder (Day 1, Day 2, etc.) contains:

The dataset used

SQL queries or Python notebooks for analysis

Notes and observations

Screenshots of results

# 💡 GOAL:
To strengthen my understanding of data manipulation, querying, and storytelling using real-world datasets.

🛠️ TOOLS AND TECHNOLOGIES:

SQL (Azure Data Studio)

Excel / CSV Datasets

Git & GitHub for version control

# 📅 DAY 1 PROJECT:
Earthquake Data (Tsunami Impact Analysis) — A study of earthquake records and their relationships with tsunami occurrences. This analysis includes querying magnitude, depth, yearly trends, and tsunami frequency using SQL.

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

