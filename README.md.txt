#Teenagers Smartphone Usage – MySQL Workbench Project

##📌 Project Overview
This project analyzes teenagers' smartphone usage patterns using MySQL Workbench.
The dataset provides insights into how teenagers use their smartphones, the apps they spend time on, daily screen time, and general behavioral trends.

The main goal of this project is to practice:

Creating and managing a database in MySQL

Designing an ER Diagram

Writing SQL queries for insights

Understanding relationships between entities in a real-world dataset


##🖼️ Entity Relationship Diagram (ERD)

The ERD shows the relationships between tables, but here is just a table, helping visualize how the dataset is structured.
![Entity Relationship Diagram (ERD)](Teenagers Entity Relationship Diagram.png")

🛠️ Tools Used
MySQL Workbench – Database design, ER diagram creation, and query execution

SQL – Data definition & analysis

Workbench Forward Engineering – To create database structure


##📊 Sample Queries

-- 1. Daily usage hours:
	SELECT 
		Round(AVG(daily_usage_hours),2) as Average_Daily_Usage
	FROM 
		teens_phone_usage
	;

-- Most popular app among teenagers
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


📈 Key Insights
Average daily smartphone usage among teenagers is X hours

Most used app category: Social Media

Peak phone usage time is between 8 PM and 11 PM


📂 How to Use This Project
Clone the repository

Import the Teens_phoneUsage.sql file into MySQL Workbench

View the ER Diagram under the "Model" tab

Run the provided queries or create your own for deeper insights










