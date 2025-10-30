
# -Student-Social-Media-Addiction

# 🎓 Student Social Media Addiction Analysis (SQL + Power BI)

## 📊 Overview
This project explores how **social media usage impacts students’ academic performance, sleep patterns, and stress levels** using **SQL for data analysis** and **Power BI for visualization**.

The goal is to identify patterns in social media behavior among students and understand its correlation with lifestyle and academics.

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
 

🪄 How to Use This Project

Clone the repository:

git clone https://github.com/yourusername/student-social-media-addiction.git


Open student_social_media_data.xlsx in Power BI.

Load and clean data if necessary.

Open student_social_media_dashboard.pbix in Power BI Desktop.

Explore dashboard pages and interact with filters/slicers.

---

🧑‍💻 Author:

👤 Created by: Alwin Raj

📧 Email: alwinraj952@gmail.com

💼 Freelancer in: | UI/UX Design | Data Analytics

---

⭐ Support:

If you found this project useful:

⭐ Star this repository

🪄 Fork it and add your own analysis

💬 Share feedback or improvement ideas


---

###  Next Steps:
1. Create this folder in your local project:  
   `student-social-media-addiction/powerbi/screenshots/`
2. Save your four uploaded `.png` images inside it.
3. Copy this README.md to your main project folder.
4. Push it to GitHub — and your repository will look **professional and recruiter-ready** 🎯

---

Would you like me to also generate your **SQL query file (`student_social_media_queries.sql`)** that matches this project’s dataset (with ~10 queries from basic to insights)?  
I can make it ready to upload along with this README.
