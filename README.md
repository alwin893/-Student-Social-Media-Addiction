# -Student-Social-Media-Addiction

# 🎓 Student Social Media Addiction Analysis (SQL + Power BI)

## 📊 Overview
This project explores how **social media usage impacts students’ academic performance, sleep patterns, and stress levels** using **SQL for data analysis** and **Power BI for visualization**.

The goal is to identify patterns in social media behavior among students and understand its correlation with lifestyle and academics.

---

## 🧩 Tools & Technologies
- **SQL** (MySQL / SQL Server / SQLite)
- **Microsoft Power BI**
- **Excel / CSV** (Data source)
- **GitHub** (Project hosting)

---

## 🗂️ Dataset Description
| Column Name | Description |
|--------------|-------------|
| Student_ID | Unique ID |
| Name | Student name |
| Age_Group | 15-18 / 19-22 |
| Gender | Male / Female |
| Daily_Usage_Hours | Hours spent daily on social media |
| Mostly_Used_Platform | Instagram / YouTube / WhatsApp / Facebook |
| Usage_Purpose | Entertainment / Study / Communication |
| Sleep_Hours | Avg daily sleep |
| Academic_Score | Exam score out of 100 |
| Mental_Stress_Level | Low / Medium / High |
| Affects_Academic_Performance | Yes / No |

---

##🧠 SQL Tasks Performed

 1️⃣ Basic Queries
sql
SELECT * FROM Student_Social_Media;
SELECT Gender, AVG(Daily_Usage_Hours) AS Avg_Usage FROM Student_Social_Media GROUP BY Gender;

2️⃣ Analytical Queries
SELECT Mostly_Used_Platform, COUNT(*) AS User_Count FROM Student_Social_Media GROUP BY Mostly_Used_Platform;

SELECT Student_ID, Daily_Usage_Hours, Academic_Score
FROM Student_Social_Media
WHERE Daily_Usage_Hours > 5 AND Academic_Score < 60;

3️⃣ Insights Queries
SELECT Mental_Stress_Level, AVG(Daily_Usage_Hours) AS Avg_Usage
FROM Student_Social_Media
GROUP BY Mental_Stress_Level;

