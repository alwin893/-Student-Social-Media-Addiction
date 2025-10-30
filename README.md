
# Student-Social-Media-Addiction

# 🎓 Student Social Media Addiction Analysis (SQL + Power BI)

📘 Project Overview

The Student Social Media Addiction Analysis project explores how social media usage impacts students’ academic performance, sleep habits, and mental well-being.
It integrates SQL for data management and querying, and Power BI for data visualization and insight generation.

The goal is to identify patterns of addiction, performance drops, and health issues among students, while presenting findings in an interactive dashboard.

Key Features:

📊 SQL Integration: Data storage, cleaning, and analytical queries.

🎨 Power BI Dashboards: Visual storytelling through charts and KPIs.

🧠 Data Insights: Correlation between screen time, academic scores, and stress levels.

🛠️ Documentation: Includes ER diagrams, data dictionary, and project report.

Tools Used:
SQL · Power BI · Excel · GitHub

---
  📦 Student_Social_Media_Analysis:
  
| **Folder / File**                     | **Description**                                                        |
| ------------------------------------- | ---------------------------------------------------------------------- |
| **📦 Student_Social_Media_Analysis/** | Main project folder containing all files.                              |
| ├── **📂 Documentation/**             | Contains all project documentation files.                              |
| │ ├── Project_Report.pdf              | Final project report summarizing objectives, methodology, and results. |
| │ ├── ER_Diagram.png                  | Entity Relationship Diagram showing table relationships.               |
| │ └── Data_Dictionary.xlsx            | Describes tables, columns, and data types used in SQL.                 |
| ├── **📂 SQL_Files/**                 | Contains SQL scripts for data creation and analysis.                   |
| │ ├── create_tables.sql               | Script to create all database tables.                                  |
| │ ├── insert_sample_data.sql          | Script to insert sample student data.                                  |
| │ └── analysis_queries.sql            | SQL queries for performance and addiction insights.                    |
| ├── **📂 PowerBI_Dashboard/**         | Power BI dashboard and theme files.                                    |
| │ ├── Student_Social_Media.pbix       | Power BI project file with dashboards.                                 |
| │ ├── Dashboard_Theme.md              | Defines color palette and theme for visuals.                           |
| │ └── **📂 PowerBI_Screenshots/**     | Dashboard preview images.                                              |
| │     ├── overview_page.png           | Overview dashboard.                                                    |
| │     ├── performance_insights.png    | Academic performance & addiction insights.                             |
| │     └── health_analysis.png         | Sleep and mental health analysis.                                      |
| ├── **📂 Assets/**                    | Cont                                                                   |

---

🗃 Dataset Overview

Table: SSMA
Columns:

| **Column Name**                  | **Description**                             |
| -------------------------------- | ------------------------------------------- |
| **Student_ID**                   | Unique identifier for each student          |
| **Age**                          | Student’s age                               |
| **Gender**                       | Gender of the student                       |
| **Country**                      | Country of the student                      |
| **Avg_Daily_Usage_Hours**        | Daily time spent on social media (in hours) |
| **Most_Used_Platform**           | Commonly used social media platform         |
| **Affects_Academic_Performance** | Academic impact score                       |
| **Addicted_Score**               | Social media addiction level score          |
| **Sleep_Hours_Per_Night**        | Average sleep duration per night (in hours) |
| **Mental_Health_Score**          | Mental health rating or score               |

---

🧩 SQL Analysis Breakdown:

🔹 Basic Analysis

View all data:

SELECT * FROM SSMA;


Students using social media under age 20

SELECT Student_ID, Age, Country FROM SSMA WHERE Age < 20;

---

🔹 Intermediate Analysis

Average social media usage hours

SELECT ROUND(AVG(Avg_Daily_Usage_Hours),2) AS Avg_Usage FROM SSMA;


Platform popularity

SELECT Most_Used_Platform, COUNT(*) AS User_Count FROM SSMA GROUP BY Most_Used_Platform;

---

🔹 Advanced Insights

Categorizing students by addiction level

SELECT Student_ID,
       CASE
         WHEN Avg_Daily_Usage_Hours > 6 THEN 'High'
         WHEN Avg_Daily_Usage_Hours BETWEEN 3 AND 6 THEN 'Moderate'
         ELSE 'Low'
       END AS Addiction_Level
FROM SSMA;


Rank students by addiction level

SELECT Student_ID, Avg_Daily_Usage_Hours,
       RANK() OVER (ORDER BY Avg_Daily_Usage_Hours DESC) AS Addiction_Rank
FROM SSMA;

---

📊 Power BI Dashboard Design:

🏠 Page 1 – Homepage Overview

Highlights

KPIs: Total Students, Avg Usage Hours, Avg Sleep, Avg Addiction Score

Social Media Icon Panel (Instagram, TikTok, Twitter, LinkedIn)

Navigation Buttons → Usage Overview, Addiction Impact, Smart Solutions

Insight: “Most students spend 4–6 hours daily on social media, impacting sleep and academic focus.”

---

📈 Page 2 – Usage Overview

Visuals

Pie Chart: Platform popularity (Instagram & YouTube lead)

Bar Chart: Gender-wise distribution

Horizontal Bar: Avg Daily Usage by Age Group

Matrix Table: Platform vs Sleep Hours vs Addiction Score

---

💭 Page 3 – Addiction Impact

Visuals

Scatter Plot: Usage Hours vs Addiction Score

Line Chart: Daily Usage vs Sleep Hours

Bar Chart: Stress Level Count

Matrix: Platform vs Academic Score vs Sleep Hours

Insight:

Students using social media more than 5 hours/day tend to have lower sleep (avg 3.8 hrs) and higher stress.

---

🧠 Page 4 – Insights & Solutions

Findings

Students with >5 hrs/day usage have lower academic scores.

Instagram & YouTube are the most addictive.

Educational purpose users show minimal stress impact.

Promoting balanced digital routines improves focus and well-being.

---

🎨 Dashboard Color Theme:
| **Element**    | **Color**     | **HEX Code** |
| -------------- | ------------- | ------------ |
| **Primary**    | Deep Blue     | #3B82F6      |
| **Accent**     | Bright Cyan   | #22D3EE      |
| **Alert**      | Coral Red     | #F87171      |
| **Success**    | Emerald Green | #10B981      |
| **Background** | Soft Gray     | #F5F7FA      |

---


🧾 Key Insights Summary:

 Students spending >5 hrs/day are less productive academically.

 Sleep decreases with increased screen time.

 Stress levels are higher for heavy social media users.

 Instagram & YouTube are top addictive platforms.

 Balance between study and social media improves performance.

 ---
 
 ER Diagram | Student Social Media Addiction:
 
Entity Relationship Diagram (ERD) representing the database structure for the Student Social Media Addiction Analysis project.

This diagram shows the relationships between key entities — students, usage, performance, and sleep_health.

📋 Table Details:

| **Table Name**   | **Description**                                                   | **Key Fields**               | **Relationships**                                       |
| ---------------- | ----------------------------------------------------------------- | ---------------------------- | ------------------------------------------------------- |
| **students**     | Stores basic student details. Acts as the **primary entity**.     | `id (PK)`                    | One-to-many with `usage`, `performance`, `sleep_health` |
| **usage**        | Records average daily social media usage and preferred platforms. | `id (PK)`, `student_id (FK)` | Many-to-one with `students`                             |
| **performance**  | Tracks each student’s **academic** and **addiction** scores.      | `id (PK)`, `student_id (FK)` | Many-to-one with `students`                             |
| **sleep_health** | Captures sleep hours and mental health scores of students.        | `id (PK)`, `student_id (FK)` | Many-to-one with `students`                             |

Relationships:

One student → many usage records

One student → many performance records

One student → many sleep_health records

This ERD serves as the foundation for both SQL queries and Power BI visualizations used in the project.
 
--- 

⚙️ Setup Instructions

Clone the repository

git clone https://github.com/yourusername/Student_Social_Media_Analysis.git


Open the SQL scripts

Run create_tables.sql to build the database schema.

Run insert_sample_data.sql to populate data.

Use analysis_queries.sql for insights.


Open Power BI

Load the .pbix file located in PowerBI_Dashboard/.

Connect it to your SQL database if necessary.

Explore visuals and filters interactively.

---

🧑‍💻 Author:

👤 Created by: Alwin Infentraj

📧 Email: alwinraj952@gmail.com

💼 Freelancer in: | UI/UX Design | Data Analytics

---

🏁 Conclusion

This project demonstrates how data-driven insights can help understand digital behavior patterns among students and their effects on performance and well-being.

---

⭐ Support:

If you found this project useful:

⭐ Star this repository

🪄 Fork it and add your own analysis

💬 Share feedback or improvement ideas


---
