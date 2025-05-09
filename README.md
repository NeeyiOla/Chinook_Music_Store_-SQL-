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
The Chinook Music Store lacked visibility into customer purchasing behaviour, genre and media format preferences, and artist profitability across regions. Addiontionally, there was no structured, analyst-friendly SQL environment to support efficient querying, data extraction, and export for deeper analysis and data visualisation.

Key business problem includes:
- Difficulty identifying top-performing customers and their geographic distribution
- Limited insight into popular genres, media types, and artist revenue performance
- Lack of a centralised and user-friendly SQL workspace for analyst
- No defined process for exporting query outputs and transforming them into business insights
- Inefficient communication of findings to stakeholders in visual and actionable format

This prohject addressess these challenges by:
- Establishing a local SQLite environment using **DB Browser for SQLite**  to execute and export SQL queries
- Writing tailored SQL scripts to answer key business questions
- Exporting cleaned query results to CSV format for structured analysis
- Building a Power Point presentation to communicate insights clearly and persuasively to stakeholders

# Stakeholder Engagement

## Target Stakeholder
- Business Excecutives (Store Mangement, Sales Directors)
- Marketing and Campaign Teams
- Event Manager
- Data Analyts and Reporting Teams

## Use Cases
- Identify high-value customers and their geographic distribution for targeted promotions
- Anlyse most popular music genres and media types by country to guide stock and campaignes
- Determine top-earning atrists, genres, and albums to inform performance contracts and event planning
- Set up e resusable SQL environment for analyst to run ad-hoc queries and exract business intelligence
- Present inisghts in stakeholder-friendly formats (charts, KPIs, summaries) through PowerPoint slides.

## Stakeholder Stories
- "As a Store Manager, I need to iidentify our most loyal and high-spending customers to increase retention."
- "As the Marketing Manager, I want to track genre popularity by region to better localise campaings."
- "As the Event/Concert Manager, I need insights on which artists brings in the most revenue so we can plan concert bookings."
- "As a Data Analyst, I want a consistent local SQL environment to run qureis and export for rewgular reporting."

## Acceptance Citeria
- A local SQL envirnemnt is properly configured (e.g., DB Browser for SQLite) for ease of use and export
- Query results are accurately exported to CSV files with proper formatting and labelling
- Key insights includes customer, genre, media type, and artist performance metrics
- PowerPoint visuals include charts, KPIs, maps (If applicable), and data-driven recommendations
- Business Questions are clealy answered and aligned with stakeholder goals

## Success Citeria
- Executive are equiped with actionable insights to drive strategic decisions
- Marketing teams run more affective, data-backed campaigns tailored by region and genre
- Artist relations benefit from insights that optimise booking decisions and partnership strategies
- Analyst gain resuable and efficient SQL analysis workflow for ongoing reporting
- Insights are clearly comunicated through profesional presentations, improving data adoption across the organisation.

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
