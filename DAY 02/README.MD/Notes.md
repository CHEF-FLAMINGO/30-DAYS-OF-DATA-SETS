# 🧩 DAY 02 — Worker Demographics and Income Analysis 🧑‍💻💰

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

---

## 💡 Summary

This dataset provides a deep look into how **education, occupation, and work hours** impact income levels.  
It offers valuable insights into the **relationship between demographics and economic success** — a true reflection of how **people, work, and opportunity** interact in the modern labor market. 💲

