CREATE TABLE teens_phone_usage (

	ID	int primary key,
    
    Name varchar(100),	
    
	Age int,
    
	Gender enum ('male', 'female', 'other'),
	
	Location varchar (100),
	
	School_Grade varchar(5),
    
	Daily_Usage_Hours decimal(10,2),
	
	Sleep_Hours decimal(10,2),
	
	Academic_Performance int,
	
	Social_Interactions int,
    
	Exercise_Hours decimal(10,2),
	
	Anxiety_Level int,
    
	Depression_Level int,
    
	Self_Esteem	int,
    
	Parental_Control int,
	
	Screen_Time_Before_Bed decimal(10,2),
	
	Phone_Checks_Per_Day int,
    
	Apps_Used_Daily int,
	
	Time_on_Social_Media decimal(10,2),
	
	Time_on_Gaming decimal(10,2),
	
	Time_on_Education decimal(10,2),
    
	Phone_Usage_Purpose varchar(20),
	
	Family_Communication int,
    
	Weekend_Usage_Hours decimal(10,2),
	
	Addiction_Level decimal(10,2)
);


SELECT *
FROM 
	teens_phone_usage
    ;	

#Teenager Smartphone Usage Analysis

# Demographic Analysis
	#1. Age distribution:    
SELECT 
	Age, 
    COUNT(*) as Frequency
FROM 
	teens_phone_usage
GROUP BY 
	Age
ORDER BY 
	Age DESC
	;

	#2. Gender distribution:
SELECT 
	Gender, 
    COUNT(*) as Frequency
FROM 
	teens_phone_usage
GROUP BY
	Gender 
ORDER BY
	Gender ASC
	;


#Smartphone Usage Patterns
	#1. Daily usage hours:
SELECT 
	Round(AVG(daily_usage_hours),2) as Average_Daily_Usage
FROM 
	teens_phone_usage
	;

	#2. Most popular apps:
SELECT
	Apps_Used_Daily, 
	COUNT(*) AS Frequency 
FROM 
	teens_phone_usage
GROUP BY 
	Apps_Used_Daily
ORDER BY 
	Frequency  DESC
	;
    
	#3 Phone Usage Purpose
SELECT 
	Phone_Usage_Purpose,
	count(*) As frequency
FROM 
	teens_phone_usage
GROUP BY
	Phone_Usage_Purpose
ORDER BY
	Phone_Usage_Purpose
    ;

#Impact on Well-being
	#1. Sleep and smartphone usage:
SELECT 
	ROUND(AVG(Sleep_Hours),2) as Average_Sleep_Hours,
	ROUND(AVG(Screen_Time_Before_Bed),2) as Average_Screen_Time_Before_Bed
FROM 
	teens_phone_usage
    ;

	#2. Anxiety and depression:
SELECT 
	ROUND(AVG(Anxiety_Level),2) as Average_Anxiety_Level,
	ROUND(AVG(Depression_Level),2) as Average_Depression_Level
FROM 
	teens_phone_usage
	;

#Time Spent 
select 
	MAX(Time_on_Education) AS Maximum_Time_on_Education, 
    MAX(Time_on_Gaming) AS Maximum_Time_On_Gaming,
    MAX(Time_on_Social_Media) AS Maximum_Time_On_Social_Media
FROM
	teens_phone_usage
    ;
    

#Correlation Analysis
	#1. Correlation between Time on social meida and academic performance:
SELECT 
	(Time_on_Social_Media), 
    MAX(Academic_Performance) as Score
FROM 
	teens_phone_usage
GROUP BY 
	Time_on_Social_Media,
	Academic_Performance
ORDER BY
	Academic_Performance DESC;
# THEREFORE the time spent on socail medial has a negative impact on their academic performance


#  Parental Control Analaysis
SELECT
	parental_control,
    count(*) As Frequency
FROM
	teens_phone_usage
GROUP BY 
	Parental_Control 
ORDER BY
	Parental_Control desc;


SELECT
	parental_control,
    Time_on_Social_Media, 
    count(*) as frequency
FROM
	teens_phone_usage
GROUP BY
	Parental_Control,Time_on_Social_Media
ORDER BY
	frequency desc
    ; 

SELECT 
	Parental_Control,
    Time_on_Social_Media,
    Academic_Performance
FROM
	teens_phone_usage
WHERE
 Parental_Control= 1 and 
 Time_on_Social_Media 
 <(SELECT AVG(Time_on_Social_Media) FROM teens_phone_usage)
ORDER BY
 Academic_Performance desc ;


#Data Filtering and Grouping
#1. Teens with high addiction levels:

SELECT 
	Addiction_Level,  
    count(*) As Frequency
FROM
	teens_phone_usage
GROUP BY 
	Addiction_Level
HAVING
 Addiction_Level>5
;

#2. Average daily usage hours by age group:

SELECT 
	Age, 
    ROUND(AVG(Daily_Usage_Hours),2) as Average_Daily_Usage  
FROM 
	teens_phone_usage
group by 
Age
ORDER BY 
	Age desc
    ;
	

;

describe teens_phone_usage;