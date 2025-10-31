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

# 📆 DAY 02 

## 📘 Dataset Overview
The **`workers`** dataset is a rich collection of **demographic and socio-economic data** 📊, extracted from census records.  
Its main objective is to predict whether an individual's annual income exceeds **$50,000** based on various features. 🎯

---

## 🧱 1. Data Structure and Scope

- **Total Records:** **43,957** individual worker records. 🤯  
- **Primary Goal:** Binary classification on **`income_>50K`**  
  - **1** → Income **> $50K** ⬆️  
  - **0** → Income **≤ $50K** ⬇️  
- **Core Variable Groups:**
  - **Demographics:** `age`, `gender`, `race`, `marital_status`, `native_country` 🌍  
  - **Work/Education:** `workclass`, `occupation`, `education`, `educational_num`, `hours_per_week` 📚  
  - **Financial/Census:** `fnlwgt` (Final Weight), `capital_gain`, `capital_loss` 📈  

---

## 🔍 2. Key Insights from SQL Analysis

The SQL exploration revealed several important patterns and characteristics of the workforce: 🧐

### 🏢 Work and Occupation Insights

| Finding | Details |
| :--- | :--- |
| **Most Common Workclass (Q13)** | `Private` sector dominates with **30,587** workers. |
| **Top 3 Occupations (Q12)** | `Craft-repair` (5,519) 🛠️, `Prof-specialty` (5,518) 🔬, and `Exec-managerial` (5,506) 👔 |
| **Work Hours (Q14)** | Most races average around **40 hrs/week**, though some groups (e.g., Black workers — 38.69 hrs) average slightly less. |

---

### 🎂 Age Distribution (Q7 & Q19)

- **Average Age:** Approximately **38.62 years**.  
- **Largest Age Group:** **Middle: 31–50** years, totaling **20,844** workers. 💪  

---

### 🎓 Income vs Education (Q17 & Q20)

Education strongly influences income levels: 🎓➡️💰  

| Education Level | % of Workers Earning > $50K |
| :--- | :--- |
| **Prof-school** | **73.66%** 🥇 |
| **Doctorate** | **71.64%** 🚀 |
| **Masters** | **55.52%** |
| **Bachelors** | **41.40%** |

# 📆Day 3: Titanic Survival Analysis ⚓

## ✨ Project Overview

This project is a detailed **Exploratory Data Analysis (EDA)** of the historical **Titanic passenger manifest**, completed as part of the 30-Days of Data Challenge.

The primary goal was to move beyond simple counts and create an **interactive dashboard** in **Power BI** to analyze the demographics and uncover the key statistical factors influencing survival.

---

## 🎯 Key Questions & Insights

The analysis focused on revealing the following insights through visualization:

* **Survival by Class:** What was the **survival probability** for 1st, 2nd, and 3rd class passengers? (A measure of socio-economic impact.)
* **Gender Bias:** What was the massive **difference in survival rates** between male and female passengers?
* **Age Profile:** Did children and the elderly have different **survival chances** compared to the general population?
* **Fare vs. Survival:** Was there a direct **correlation** between the ticket price a passenger paid and their final outcome?

---

## 🛠️ Tools & Technologies

| Tool | Purpose |
| :--- | :--- |
| **Power BI Desktop** | Primary tool for **Visualization**, Dashboard Creation, and Data Modeling. |
| **Power Query (M)** | Used for **Data cleaning**, transformation, and handling of missing values (e.g., Age imputation). |
| **DAX** | Utilized for creating explicit **measures** and calculating key performance indicators (KPIs). |
| **Source Data** | `titanic_dataset.csv` |

---


## 📁 Repository Contents

* **`Titanic_Analysis.pbix`**: The **full Power BI project file** (the main deliverable).
* **`titanic_dataset.csv`**: The raw dataset used for the analysis.
* **`README.md`**: This document.
