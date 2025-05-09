# SQL PROEJCT: SQLite Relational Database to Excel and Power Point

## Chinook Music Store: Querying Chinook Database to extract Data

![Chinook Music Fest.png](Assets/Images/Chinook_Music_Fest.png)

# Table of Content
- [Project Title](#Project-Title)
- [My Role](#My-Role)
- [Project Overview](#Project-overview)
- [Problem Statement](#Problem-statement)
- [Stakeholder Engagement](#Stakeholder-Engagement)
    - [Target Stakeholder](#Target-stakeholder)
    - [Use Cases](#Use-cases)
    - [Stakeholders Stories](#Stakeholder-stories)
    - [Acceptance Criteria](#Acceptance-criteria)
    - [Success Criteria](#Success-criteria)
- [Data Source](#Data-source)
  - [Database Structure](#Access-Database-Structure)
  - [Access Database Benefit](#Benefit-of-Access-Storage)
- [Methodology](#Methodology)
  - [Tool used](#Tool-Used)
  - [Development](#Development)
  - [Setting up My Local Environment](#Setting_up_My_Local_Environment)
  - [EDA_Diagram](#EDA_Diagram)
  - [Exploratory Data Analysis (EDA)](#Exploratory_Data_Analysis_(EDA))
  - [Data_Export_to_Spreedsheet_(CSV)](#Data_Export_to_Spreedsheet_(CSV))
  - [Analysis](#Analysis)
  - [Visualisation](#Visualisation)
- [Detailed Insights and Recommendations](#Detailed-Insights-and-Recommendation)
  - [Chinook_Team(Staff)_Insights](#Sales-Pulse-Performance,-Frequency-&-Return-(Executive-Overview))
  - [Executive_Overiew_Insight](#Sales-Performance-&-Customer-Behaviour-(Net-sales-by-Customer-Demographic))
  - [Marketing_&_Planning_Committee_Insight](#Product-portfolio-performance-(Based-on-Gross-Proft))

# Project Title 
Querying Chinook Digital Music Store Database for Tailored Analysis  

# My Role
**Business Intelligence Analyst** 

# Project Overview
In this project i will be quering the Chinook Databae which is a SQLlite Database that holds information or data about a music store. For this project, i will be leveraging data-driven tactics to assist the Chinook team to handle complexity  and business challenges or hidden potential business opportunity. In order to achieve this, Chinook Music Store have recently consulted me as a Business Intellligence Analyst to help make sense of their data to see how I can use my skills to reveal important insights buried within.  

As a Business Intelligence Analyst in this project my role is to perform thorough analysis to assist the chinook team with understanding the media in their store, their customers, employees, and their invoice information. This has been achieved through the use of my Analytical skills, hoping to derive comprehensive insights that will guide both the operational and overall improvement, helping Chinook Store to continue to maintain customer retention through adequate and appropriate customer service satisfaction.

# Problem Statement
# Stakeholder Engagement
## Target Stakeholder
## Use Cases
## Stakeholder Stories
## Acceptance Citeria
## Success Citeria
# Data Source
## Data Structure
## SQLite Database Benefit
# Methodology
## Tool Used
## Development
### Setting up my local Environment
### EDA Diagram
### Exploratory Data Analysis (EDA)
### Data Export ti Spreadsheet (CSV)


### Extacted Queries Analysis 

#### Problem Statement 1: Identify and Understand High-Value Customers
**Tailored Questions:**  
```sql
/*
1. Which countries have the most invoices?
*/

SELECT BillingCountry,
		COUNT(*) AS Invoice_Per_Country
FROM Invoice
GROUP BY BillingCountry
ORDER BY 2 DESC;
```

1. Which city has the best customers?
2. Who is the best customer?
3. Which customer spent the most on the top-earning artist?
4. Customer who spent the most in each country, and their spending amount.

#### Problem Statement 2: Understand Music Preferences and Customer Behavior
**Tailored Questions:**
4. Return email, name, and genre for all Rock Music listeners.
5. Who is writing the most Rock music? (Top 10 Rock bands to invite for a concert.)
8. Most popular music genre by country.
12. Frequency breakdown of each genre sold by media type.

#### Problem Statement 3: Optimize Product Offering Based on Media Type and Album Popularity
**Tailored Question:**
10. Top 10 Country Total_Spent by MediaType and Spending Categories.
11. Which is the most popular media type?
13. Top 3 Most Sold Albums by year and customer count.

#### Problem Statement 4: Evaluate Product Catalog Based on Track Performance
**Tailored Question:**
7. Return all track names that are longer than the average song length.

# Detailed Insights and Recomendation
## Chinook Team(Staff) Insights
## Executive Overview Insights 
## Marketing & Planning Committee Insights
