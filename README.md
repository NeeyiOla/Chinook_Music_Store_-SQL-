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
SQL Analysis of Chinook Music Store: Customer Behavior, Sales Performance & Revenue Insights

# My Role
**Business Intelligence Analyst**  

- Responsibility
	- Wrote and optimised complex SQL quries
 	- Explored and model relational data from the chinook database
  	- Translated business questions into strategic recommendations
  	- Visualised result in PowerPoint for storytelling

# Project Overview
In this project i will be quering the Chinook Database which is a SQLlite Database that holds information or data about a music store. For this project, i will be leveraging data-driven tactics to assist the Chinook team to handle complexity  and business challenges or hidden potential business opportunity. In order to achieve this, Chinook Music Store have recently consulted me as a Business Intellligence Analyst to help make sense of their data to see how I can use my skills to reveal important insights buried within.  

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

# Data Source & Tools
- **Database:** Chinook (SQLite format)
- **Main Tables:** Customers, Invoices, InvoiceLines, Tracks, Albums, Artists, Employees, Genres, Media Types, and Track.

- **Tools Used:**
  	- SQLite + DB Browser
  	- Excel (for result export and pivot analysis)
  	- PowerPoint (for visualisation and storytelling

- **Data Structure**
To assist to execute the queries ahead, the schema for the Chinook Database is provide below.

Artist Table  
| Column Name | Data Type | Description |
| --- | --- | --- |
| Artisid |  | Unique Identifier of each artist |
| Name |  | Name of the Artist |  

Album  
| Column Name | Data Type | Description |
| --- | --- | --- |
| AlbumId |  | Unique identifier for each Album |
| Title |  | Title of the Album |
| ArtistId |  | Foriegn key referencing the Artist table (ArtistId) |  

Relationship:  
ArtistId in the Album table is for key linked to ArtistId (Primary Key) in the Artist table.





# Methodology
## Development
### Setting up my local Environment
### EDA Diagram
### Exploratory Data Analysis (EDA)
### Data Export t0 Spreadsheet (CSV)

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

```sql
/*
1. Which city has the best customers?
-- As we want to throw a promotional Music Festival in the city we made the most money.
*/
SELECT BillingCity,
		SUM(Total) AS Total_Sales
FROM Invoice
GROUP BY BillingCity
ORDER BY Total_Sales DESC
LIMIT 1;
```

```sql
-- Who is the best customer?
-- The customer who spent the most moneyin the history of the nusic store.
1
SELECT  Customer.CustomerId,
		Customer.FirstName,
		Customer.LastName,
		SUM(InvoiceLine.Quantity * InvoiceLine.UnitPrice) AS Total
FROM InvoiceLine
JOIN Invoice
ON InvoiceLine.InvoiceId = Invoice.InvoiceId
JOIN Customer
ON Invoice.CustomerId = Customer.CustomerId
GROUP BY Customer.FirstName
ORDER BY 4 DESC;

SELECT 
    Customer.CustomerId,
    Customer.FirstName,
    Customer.LastName,
    InvoiceLine.InvoiceLineId,
    SUM(InvoiceLine.Quantity * InvoiceLine.UnitPrice) AS Sales
FROM Customer
JOIN Invoice ON Invoice.CustomerId = Customer.CustomerId
JOIN InvoiceLine ON InvoiceLine.InvoiceId = Invoice.InvoiceId
GROUP BY 1
ORDER BY Sales DESC;

```
```sql
/*
-- frist, I find which artist has the mostaccording to the InvoiceLines and then find Which customer spent the most on the top-earning artist?
*/

SELECT * FROM Invoice;

SELECT  Artist.ArtistId,
		Artist.Name,
		COUNT(*) AS Total
 FROM Artist
    JOIN Album
        ON Artist.ArtistId = Album.ArtistId
    JOIN Track
        ON Track.AlbumId = Album.AlbumId
    JOIN InvoiceLine
        ON InvoiceLine.TrackId = Track.TrackId
    JOIN Invoice
        ON Invoice.InvoiceId = InvoiceLine.InvoiceId
    JOIN Customer
        ON Customer.CustomerId = Invoice.CustomerId
GROUP BY 1
ORDER BY 3 DESC;

SELECT 
    Tbl.Artist_name,
    Tbl.CustomerId,
    Tbl.FirstName,
	Tbl.LastName,
    Tbl.Total
FROM (
    SELECT  
        Artist.ArtistId AS Artist_Id,
        Artist.Name AS Artist_name,
        Customer.CustomerId AS CustomerId,
		Customer.FirstName AS FirstName,
        Customer.LastName AS LastName,
        SUM(InvoiceLine.Quantity * InvoiceLine.UnitPrice) AS Total
    FROM Artist
    JOIN Album
        ON Artist.ArtistId = Album.ArtistId
    JOIN Track
        ON Track.AlbumId = Album.AlbumId
    JOIN InvoiceLine
        ON InvoiceLine.TrackId = Track.TrackId
    JOIN Invoice
        ON Invoice.InvoiceId = InvoiceLine.InvoiceId
    JOIN Customer
        ON Customer.CustomerId = Invoice.CustomerId
    WHERE Artist.Name = 'Iron Maiden'
    GROUP BY Artist.ArtistId, Artist.Name, Customer.CustomerId, Customer.LastName
) Tbl
ORDER BY Tbl.Total DESC;
```

```sql
/*
-- Customer who spent the most in each country, and their spending amount.
-- Making sure query retuen the country along with the top customers and how much money they spent.
*/

SELECT  
    Tbl.BillingCountry AS Country,
    Tbl.FirstName,
    Tbl.LastName,
    Tbl.Amount_Spent AS Max_Spent
FROM (
    SELECT  
        Customer.CustomerId,
        Customer.FirstName,
        Customer.LastName,
        Invoice.BillingCountry,
        SUM(Invoice.Total) AS Amount_Spent
    FROM Customer
    JOIN Invoice
        ON Invoice.CustomerId = Customer.CustomerId
    GROUP BY Customer.CustomerId, Customer.FirstName, Customer.LastName, Invoice.BillingCountry
) Tbl
WHERE Tbl.Amount_Spent = (
    SELECT MAX(SubTbl.Amount_Spent)
    FROM (
        SELECT  
            Customer.CustomerId,
            Customer.FirstName,
            Customer.LastName,
            Invoice.BillingCountry,
            SUM(Invoice.Total) AS Amount_Spent
        FROM Customer
        JOIN Invoice
            ON Invoice.CustomerId = Customer.CustomerId
        GROUP BY Customer.CustomerId, Customer.FirstName, Customer.LastName, Invoice.BillingCountry
    ) SubTbl
    WHERE SubTbl.BillingCountry = Tbl.BillingCountry
)
ORDER BY Tbl.BillingCountry, Tbl.Amount_Spent DESC;

```

#### Problem Statement 2: Understand Music Preferences and Customer Behavior
**Tailored Questions:**
4. Return email, name, and genre for all Rock Music listeners.
5. Who is writing the most Rock music? (Top 10 Rock bands to invite for a concert.)
8. Most popular music genre by country.
12. Frequency breakdown of each genre sold by media type.

#### Problem Statement 3: Optimize Product Offering Based on Media Type and Album Popularity
**Tailored Question:**

```sql
/*
-- Top 10 Country Total_Spent by MediaType and Spending Categories.
*/

SELECT  
    MediaType.MediaTypeId,
    MediaType.Name,
    Invoice.BillingCountry,
    SUM(Invoice.Total) AS Total_Spent,
    CASE 
        WHEN SUM(Invoice.Total) > 1000 THEN 'High Spender'
        WHEN SUM(Invoice.Total) BETWEEN 400 AND 1000 THEN 'Medium Spender'
        ELSE 'Low Spender'
    END AS Spending_Category
FROM MediaType
JOIN Track
    ON MediaType.MediaTypeId = Track.MediaTypeId
JOIN InvoiceLine
    ON InvoiceLine.TrackId = Track.TrackId
JOIN Invoice
    ON Invoice.InvoiceId = InvoiceLine.InvoiceId
JOIN Customer
    ON Customer.CustomerId = Invoice.CustomerId
GROUP BY MediaType.MediaTypeId, MediaType.Name, Invoice.BillingCountry
ORDER BY Total_Spent DESC
LIMIT 10;
```

```sql
/*
11. Which is the most popular media type?
*/

SELECT  MediaType.MediaTypeId,
		MediaType.Name,
		COUNT(*) AS MediaType_cOUNT
FROM Track
JOIN MediaType
ON MediaType.MediaTypeId = Track.MediaTypeId
GROUP BY MediaType.MediaTypeId
ORDER BY 3 DESC;

```

```sql
/*
-- Top 3 Most Sold Albums by year and customer count that contributed invoice total fro each year
-- with Max Date = 2013-12-22 and Min Date = 2009-01-01
*/
WITH AlbumSales AS (
    SELECT  
        Album.AlbumId,
        Album.Title AS AlbumTitle,
        strftime('%Y', Invoice.InvoiceDate) AS Year,
        SUM(Invoice.Total) AS TotalSales,
        COUNT(DISTINCT Invoice.CustomerId) AS CustomerCount
    FROM Invoice
    JOIN InvoiceLine
        ON Invoice.InvoiceId = InvoiceLine.InvoiceId
    JOIN Track
        ON InvoiceLine.TrackId = Track.TrackId
    JOIN Album
        ON Track.AlbumId = Album.AlbumId
    WHERE Invoice.InvoiceDate BETWEEN '2009-01-01' AND '2013-12-22'
    GROUP BY Album.AlbumId, Album.Title, Year
),
RankedAlbums AS (
    SELECT 
        AlbumId,
        AlbumTitle,
        Year,
        TotalSales,
        CustomerCount,
        RANK() OVER (PARTITION BY Year ORDER BY TotalSales DESC) AS SalesRank
    FROM AlbumSales
)
SELECT 
    AlbumTitle,
    Year,
    TotalSales,
    CustomerCount
FROM RankedAlbums
WHERE SalesRank <= 3
ORDER BY Year, TotalSales DESC;

```

#### Problem Statement 4: Evaluate Product Catalog Based on Track Performance
**Tailored Question:**

```sql
7. Return all track names that are longer than the average song length.

# Detailed Insights and Recomendation
## Chinook Team(Staff) Insights
## Executive Overview Insights 
## Marketing & Planning Committee Insights
