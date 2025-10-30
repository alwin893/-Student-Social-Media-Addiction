#Database for student socail media addication:

SELECT*from ssma;

#student using social media < age 20

SELECT STUDENT_ID, AGE,COUNTRY
FROM SSMA
WHERE AGE <20;

#Students using social media >5 hrs/day

SELECT STUDENT_ID, COUNTRY, Avg_Daily_Usage_Hours
FROM SSMA
WHERE Avg_Daily_Usage_Hours > 5;

#Platform usage popularity

SELECT Most_Used_Platform, COUNT(*) AS User_Count
FROM SSMA
GROUP BY Most_Used_Platform;

#Relationship Between High Usage and Low Academic Score

SELECT Student_ID, Avg_Daily_Usage_Hours, Affects_Academic_Performance
FROM SSMA
WHERE Avg_Daily_Usage_Hours > 5 AND Affects_Academic_Performance < 60;

#Average social media usage

SELECT ROUND(AVG(Avg_Daily_Usage_Hours),2) AS Avg_Usage
FROM SSMA;

#Average academic score by gender

SELECT Gender, ROUND(AVG(Addicted_Score),2) AS Avg_Score
FROM SSMA
GROUP BY Gender;

#Students checking social media >20 times/day

SELECT  MENTAL_HEALTH_SCORE
FROM SSMA
WHERE MENTAL_HEALTH_SCORE > 5;


#Average sleep hours by country

SELECT COUNTRY, ROUND(AVG(Sleep_Hours_Per_Night),1) AS Avg_Sleep
FROM SSMA
GROUP BY COUNTRY;

# Addiction Categorization

SELECT 
  Student_ID, 
  CASE 
    WHEN Avg_Daily_Usage_Hours > 6 THEN 'High'
    WHEN Avg_Daily_Usage_Hours BETWEEN 3 AND 6 THEN 'Moderate'
    ELSE 'Low'
  END AS Addiction_Level
FROM SSMA;

# Average Score and Sleep by Addiction Level
SELECT 
  CASE 
    WHEN Avg_Daily_Usage_Hours > 6 THEN 'High'
    WHEN Avg_Daily_Usage_Hours BETWEEN 3 AND 6 THEN 'Moderate'
    ELSE 'Low'
  END AS Addiction_Level,
  ROUND(AVG(Addicted_Score),2) AS Avg_Score,
  ROUND(AVG(Sleep_Hours_Per_Night),2) AS Avg_Sleep
FROM SSMA
GROUP BY 
  CASE 
    WHEN Avg_Daily_Usage_Hours > 6 THEN 'High'
    WHEN Avg_Daily_Usage_Hours BETWEEN 3 AND 6 THEN 'Moderate'
    ELSE 'Low'
  END;
  
#Top 5 Most Addicted Students
SELECT 
  STUDENT_ID, Avg_Daily_Usage_Hours, Addicted_Score
FROM SSMA
ORDER BY Avg_Daily_Usage_Hours DESC
LIMIT 5 ;

#Gender-based Analysis
SELECT 
  Gender,
  ROUND(AVG(Avg_Daily_Usage_Hours),2) AS Avg_Usage,
  ROUND(AVG(Mental_Health_Score),2) AS Avg_Mental_Health,
  ROUND(AVG(Addicted_Score),2) AS Avg_Score
FROM SSMA
GROUP BY Gender;

#Rank Students by Addiction (Window Function)
SELECT 
  Student_ID,
  Avg_Daily_Usage_Hours,
  RANK() OVER (ORDER BY Avg_Daily_Usage_Hours DESC) AS Addiction_Rank
FROM SSMA;

