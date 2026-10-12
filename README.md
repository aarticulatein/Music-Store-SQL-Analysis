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

Key findings will be added after the queries have been executed and the results validated.

The analysis aims to identify customer spending patterns, popular music genres, leading artists, and invoice trends.

## How to Run the Project

1. Install PostgreSQL and open pgAdmin.
2. Restore the database using the provided database file.
3. Open the SQL scripts in the `sql/` folder.
4. Execute the queries against the restored database.
5. Review and interpret the results.

## Learning Outcomes

This project demonstrates the practical use of SQL to analyse relational data and answer business questions through joins, aggregation, subqueries, CTEs, and window functions.

