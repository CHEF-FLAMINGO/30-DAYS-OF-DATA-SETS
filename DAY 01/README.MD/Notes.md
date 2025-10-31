# 🌋 DAY 01 — Exploratory Data Analysis on Earthquake & Tsunami Dataset 🌊💥

The goal of this session was to perform **Exploratory Data Analysis (EDA)** on a **global earthquake dataset** and practice **SQL querying** using **Azure Data Studio**.  
This dataset gives insight into **earthquake patterns**, **magnitudes**, **depths**, and **tsunami occurrences** over time 🌎.

---

## 📂 Dataset Information  

- **Source:** [Kaggle](https://www.kaggle.com)  
- **Dataset Name:** *Global Earthquake & Tsunami Dataset*  
- **Description:** Contains **historical earthquake records** with details such as `magnitude`, `depth`, `location`, `year`, `month`, and whether a tsunami occurred 🌊.

---

## 🧰 Tools & Purpose  

| 🛠️ Tool | 🎯 Purpose |
|----------|------------|
| **Azure Data Studio** | Running SQL queries and exploring data |
| **SQL (T-SQL)** | Querying and analyzing dataset |
| **Git & GitHub** | Version control and documentation |
| **Kaggle** | Dataset source |

---

## ⚙️ 1. Database Setup  

- Imported the dataset into **Azure Data Studio** using **SQL Server**.  
- Created a table named **`earthquake_data_tsunami`**.  
- Verified **column names**, **data types**, and **row count**.  

---

## 🔍 2. Basic SQL Queries  

Here’s a glimpse of the key SQL operations performed:  

- Displayed all records in the dataset.  
- Filtered earthquakes with **magnitude greater than 6.5**.  
- Retrieved earthquakes that occurred in a specific year (e.g., **2022**).  
- Identified events that caused **tsunamis (`tsunami = 1`)**.  
- Sorted earthquakes by **depth** and **magnitude** for trend analysis.  

---

## 📊 3. Aggregations & Insights  

| 🔎 Analysis | 💡 Insight |
|-------------|------------|
| **Year with the highest number of earthquakes** | `2022` 🌍 |
| **Month with most earthquakes across all years** | `September` 📆 |
| **Average magnitude of all earthquakes** | Calculated using `AVG(magnitude)` 📈 |
| **Tsunami vs. Non-Tsunami average magnitude** | Compared using `GROUP BY tsunami` 🌊 |

---

# 🌎 Summary #

 ## This project gave me hands-on experience in:
### ✅ Importing and managing data with Azure Data Studio.
### ✅ Writing and optimizing SQL queries for data exploration.
### ✅ Understanding how earthquake patterns vary across years and regions.
### ✅ Observing relationships between magnitude, depth, and tsunami occurrences.

In short, Day 1 was all about turning raw seismic data into insights that help visualize the story beneath the Earth's surface 🌋✨.







