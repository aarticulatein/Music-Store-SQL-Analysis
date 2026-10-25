# Music Store SQL Analysis | PostgreSQL

## Project Overview

This project uses PostgreSQL to analyse a music store database and answer business questions about customer spending, invoice distribution, music genres, artists, and track durations.

The project demonstrates SQL techniques for querying relational data, combining tables, aggregating results, and identifying patterns that can support business decisions.

## Business Objectives

- Identify the most senior employee.
- Analyse invoice distribution across countries.
- Find the highest invoice totals.
- Identify the city with the highest total invoice value.
- Find the highest-spending customer.
- Identify customers who purchase Rock music.
- Rank artists by the number of Rock tracks.
- Identify tracks longer than the average track duration.
- Analyse customer spending by artist.
- Find the most purchased genre in each country.
- Identify the highest-spending customer in each billing country.

## Tools Used

- **Database:** PostgreSQL
- **SQL environment:** pgAdmin
- **Version control:** Git and GitHub

## SQL Skills Demonstrated

- `SELECT`, `WHERE`, `ORDER BY`, and `LIMIT`
- Aggregate functions: `SUM()`, `COUNT()`, and `AVG()`
- `GROUP BY` and `DISTINCT`
- Multiple-table `JOIN`s
- Subqueries
- Common Table Expressions (CTEs)
- Window functions: `RANK()` and `PARTITION BY`
- Data aggregation and business analysis

## Project Structure

```text
Music-Store-SQL-Analysis/
├── 01_basic_analysis.sql
├── 02_joins_and_subqueries.sql
├── 03_advanced_analysis.sql
├── Music_Store_database.sql
├── README.md
└── screenshots/             # Add this folder if the images are uploaded
    ├── customer_artist_spending.png
    ├── genre_by_country.png
    ├── highest_revenue_city.png
    ├── invoice_counts_by_country.png
    ├── rock_listeners.png
    ├── top_3_invoice_totals.png
    ├── top_customer_by_country.png
    ├── top_rock_artists.png
    └── top_spending_customer.png
```

**Note:** The screenshot folder and filenames above reflect the previously discussed image list. Ensure the folder and all nine files are actually present in the repository before publishing this structure.

## Key Findings

### 1. Invoice Distribution by Country

The query results reviewed showed the United States with 131 invoices, followed by Canada with 76 and Brazil with 61.

**SQL techniques:** `COUNT()`, `GROUP BY`, `ORDER BY`.

### 2. City with the Highest Total Invoice Value

Prague recorded the highest total invoice value in the results reviewed, at approximately 273.24 in the dataset's currency units.

**SQL techniques:** `SUM()`, `GROUP BY`, `ORDER BY`, `LIMIT`.

### 3. Highest-Spending Customer

Customer ID 5, displayed as R Madhav in the results reviewed, recorded total invoice spending of approximately 144.54 in the dataset's currency units.

**SQL techniques:** `JOIN`, `SUM()`, `GROUP BY`, `ORDER BY`.

### 4. Artists with the Most Rock Tracks

The results reviewed ranked Led Zeppelin first with 114 Rock tracks, followed by U2 with 112 and Deep Purple with 92.

This measures the number of Rock tracks associated with each artist, not the number of purchases or listeners.

**SQL techniques:** Multiple-table `JOIN`s, `WHERE`, `COUNT()`, `GROUP BY`, `ORDER BY`.

### 5. Most Purchased Genre by Country

The analysis uses purchase quantities to rank genres within each country. In the results reviewed, Rock ranked first in several countries, while Alternative & Punk ranked first in Argentina with 17 purchases.

This finding should be interpreted using the complete query output, including any ties.

**SQL techniques:** CTEs, aggregate functions, `RANK()`, `PARTITION BY`.

## How to Run the Project

1. Install PostgreSQL and open pgAdmin.
2. Create or restore the database using `Music_Store_database.sql`.
3. Open the SQL scripts directly from the repository root:
   - `01_basic_analysis.sql`
   - `02_joins_and_subqueries.sql`
   - `03_advanced_analysis.sql`
4. Execute the queries against the configured database.
5. Compare the results with the findings documented above.

The exact database setup procedure depends on the contents and format of `Music_Store_database.sql`. Verify that the file loads successfully in your PostgreSQL environment before relying on these instructions.

## Learning Outcomes

Through this project, I practised:

- Writing SQL queries to answer business questions.
- Combining related tables using joins.
- Aggregating customer and invoice data.
- Using subqueries to filter results.
- Applying CTEs and window functions to rank results.
- Translating query outputs into business-oriented findings.

## Conclusion

This project demonstrates practical SQL analysis of a music store database. It applies basic and advanced SQL techniques to explore customer spending, invoice distribution, artist catalogues, and music preferences.

The project is part of my ongoing development of SQL and data analytics skills.
