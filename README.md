# Music Store SQL Analysis | PostgreSQL

## Project Overview

This project explores a digital music store database using PostgreSQL to answer business questions about customers, invoices, music genres, artists, and sales.

The goal is to demonstrate practical SQL skills by querying relational data, combining tables, aggregating results, and using advanced SQL techniques to generate business insights.

## Business Objectives

- Analyse invoice distribution across countries.
- Identify the city generating the highest total invoice value.
- Find the highest-spending customer.
- Identify artists with the most Rock tracks.
- Determine the most purchased genre in each country.
- Identify the highest-spending customer in each country.
- Explore customer spending on individual artists.
- Compare invoice totals and customer purchasing patterns.

## Tools and Technologies

- **Database:** PostgreSQL
- **Query Tool:** pgAdmin
- **Language:** SQL
- **Techniques:** Filtering, aggregation, joins, subqueries, Common Table Expressions (CTEs), window functions, ranking, and sorting.

## SQL Concepts Demonstrated

### Basic Analysis
- `SELECT` and `WHERE`
- `ORDER BY`
- Aggregate functions such as `COUNT()` and `SUM()`
- `GROUP BY`
- `LIMIT`

### Joins and Subqueries
- Combining related tables using `JOIN`
- Nested queries and subqueries
- Aggregating customer and invoice data
- Comparing spending across customers, artists, and countries

### Advanced Analysis
- Common Table Expressions (CTEs)
- Window functions
- `RANK()` for ranking results
- `PARTITION BY` for country-level analysis
- Aggregations across multiple related tables

## Key Findings

### 1. Invoice Distribution by Country

The United States recorded the highest number of invoices in the analysed results, with 131 invoices. Canada followed with 76, and Brazil with 61.

![Invoice Distribution by Country](screenshots/invoice_counts_by_country.png)

### 2. City with the Highest Total Invoice Value

Prague recorded the highest total invoice value, approximately 273.24 in the dataset's currency units.

![City with Highest Invoice Value](screenshots/highest_revenue_city.png)

### 3. Highest-Spending Customer

Customer ID 5, listed as R Madhav in the query results, had the highest total invoice spending, approximately 144.54 in the dataset's currency units.

![Highest-Spending Customer](screenshots/top_spending_customer.png)

### 4. Artists with the Most Rock Tracks

Led Zeppelin ranked first with 114 Rock tracks, followed by U2 with 112 and Deep Purple with 92.

This analysis measures the number of Rock tracks associated with each artist, rather than the number of purchases or listeners.

![Top Rock Artists](screenshots/top_rock_artists.png)

### 5. Most Purchased Genre by Country

The analysis uses purchase quantities to rank genres within each country. In the results reviewed, Rock ranked first in several countries, while Alternative & Punk ranked first in Argentina with 17 purchases.

![Most Purchased Genre by Country](screenshots/genre_by_country.png)

### 6. Highest-Spending Customer by Country

The country-level analysis ranks customers according to their total spending within each country. This helps identify valuable customers across different markets.

![Highest-Spending Customer by Country](screenshots/top_customer_by_country.png)

## Additional Query Results

The repository also includes screenshots showing additional analyses, including customer spending on artists, listeners of Rock music, and the three highest invoice totals.

### Customer Spending by Artist

![Customer and Artist Spending](screenshots/customer_artist_spending.png)

### Rock Music Listeners

![Rock Listeners](screenshots/rock_listeners.png)

### Top Three Invoice Totals

![Top Three Invoice Totals](screenshots/top_3_invoice_totals.png)

## Project Structure

```text
Music-Store-SQL-Analysis/
│
├── screenshots/
│   ├── customer_artist_spending.png
│   ├── genre_by_country.png
│   ├── highest_revenue_city.png
│   ├── invoice_counts_by_country.png
│   ├── rock_listeners.png
│   ├── top_3_invoice_totals.png
│   ├── top_customer_by_country.png
│   ├── top_rock_artists.png
│   └── top_spending_customer.png
│
├── 01_basic_analysis.sql
├── 02_joins_and_subqueries.sql
├── 03_advanced_analysis.sql
├── Music_Store_database.sql
└── README.md
```

## How to Run the Project

1. Install PostgreSQL and open pgAdmin.
2. Set up the Music Store database using the provided `Music_Store_database.sql` file.
3. Open the SQL scripts in the repository root:
   - `01_basic_analysis.sql`
   - `02_joins_and_subqueries.sql`
   - `03_advanced_analysis.sql`
4. Execute the queries against the configured database.
5. Review the query results and compare them with the findings and screenshots in this README.

**Note:** The exact database setup procedure depends on the format of `Music_Store_database.sql` and your PostgreSQL environment. If the file is a database dump, restore it using the appropriate PostgreSQL restore procedure.

## What I Learned

Through this project, I practised:

- Writing SQL queries to answer business questions.
- Analysing data across multiple related tables.
- Aggregating and comparing customer and sales data.
- Using joins and subqueries to combine information.
- Applying window functions to rank results within groups.
- Presenting query results as understandable business insights.

## Conclusion

This project demonstrates how SQL can be used to explore relational data and answer practical business questions about sales, customers, artists, and music preferences.

It represents my ongoing development of SQL and data analytics skills, with a focus on transforming database queries into clear, business-oriented findings.
