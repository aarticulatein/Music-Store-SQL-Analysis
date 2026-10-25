# Music Store SQL Analysis

## Project Overview

This project uses SQL and PostgreSQL to analyse a music store database and answer business-related questions about customer spending, invoices, music genres, artists, and track durations.

## Objectives

- Identify the highest-spending customers.
- Analyse invoice distribution across countries and cities.
- Identify customers who listen to Rock music.
- Find the top 10 artists with the most Rock tracks.
- Identify tracks longer than the average track duration.
- Calculate how much each customer spends on each artist.
- Find the most popular music genre in each country.
- Identify the highest-spending customer in each billing country.

## Tools Used

- **Database:** PostgreSQL
- **SQL Environment:** pgAdmin
- **Version Control:** Git and GitHub

## SQL Skills Demonstrated

- SELECT, WHERE, ORDER BY and LIMIT
- Aggregate functions: SUM(), COUNT() and AVG()
- GROUP BY and DISTINCT
- INNER JOIN and multiple-table joins
- Subqueries
- Common Table Expressions (CTEs)
- Window functions: RANK()
- Data aggregation and business analysis


## Business Questions

### 1. Basic SQL Analysis

- Which employee is the most senior?
- Which countries have the most invoices?
- What are the three highest invoice totals?
- Which city generates the highest invoice revenue?
- Who is the highest-spending customer?

### 2. Joins and Subqueries

- Which customers listen to Rock music?
- Which 10 artists have the most Rock tracks?
- Which tracks are longer than the average track duration?

### 3. Advanced SQL Analysis

- How much does each customer spend on each artist?
- Which music genre is most popular in each country based on purchase quantity?
- Who is the highest-spending customer in each billing country?

## Database File

The repository includes `Music_Store_database.sql`, the database file used for this project.

**Database:** PostgreSQL

Before running the analysis queries, restore the database using the appropriate PostgreSQL restore method for the file format.

## Key Findings

### 1. Invoice Distribution by Country
- **Finding:** The USA recorded the highest number of invoices (131), followed by Canada (76) and Brazil (61).
- **SQL techniques:** `COUNT()`, `GROUP BY`, `ORDER BY`.
- **Business implication:** The USA represents the largest market by invoice count in this dataset. Further analysis of revenue and customer spending could help evaluate its commercial importance.

### 2. City Generating the Highest Revenue
- **Finding:** Prague generated the highest total invoice revenue, amounting to approximately 273.24.
- **SQL techniques:** `SUM()`, `GROUP BY`, `ORDER BY`, `LIMIT`.
- **Business implication:** Prague could be considered as a potential location for a promotional music event. Additional analysis of customer demand and event costs would be needed before making a final decision.

### 3. Highest-Spending Customer
- **Finding:** Customer ID 5, displayed as R Madhav, recorded the highest total invoice spending, at approximately 144.54.
- **SQL techniques:** `JOIN`, `SUM()`, `GROUP BY`, `ORDER BY`.
- **Business implication:** Analysing the purchasing patterns of high-spending customers could help identify opportunities for targeted promotions and customer engagement.

### 4. Top Rock Artists by Track Count
- **Finding:** Led Zeppelin ranked first with 114 Rock tracks, followed by U2 with 112 and Deep Purple with 92.
- **SQL techniques:** Multiple-table `JOIN`s, `WHERE`, `COUNT()`, `GROUP BY`, `ORDER BY`.
- **Business implication:** Identifying artists with extensive Rock music catalogues can support genre-specific music promotion and inventory analysis.

### 5. Most Popular Music Genre by Country
- **Finding:** Rock ranked first in six of the seven countries visible in the query results. Canada recorded 333 Rock track purchases, followed by Brazil with 205. Argentina's top-ranked genre was Alternative & Punk, with 17 purchases.
- **SQL techniques:** Common Table Expressions (CTEs), aggregate functions, `RANK()`, `PARTITION BY`.
- **Business implication:** Comparing genre preferences across countries can help identify regional purchasing patterns and inform targeted promotional campaigns.

## How to Run the Project

1. Install PostgreSQL and open pgAdmin.
2. Restore the database using the provided database file.
3. Open the SQL scripts in the `sql/` folder.
4. Execute the queries against the restored database.
5. Review and interpret the results.

## Learning Outcomes

This project demonstrates the practical use of SQL to analyse relational data and answer business questions through joins, aggregation, subqueries, CTEs, and window functions.

