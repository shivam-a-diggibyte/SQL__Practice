# SQL_Practice

A structured, day-by-day collection of SQL practice work built while learning Microsoft SQL Server and SQL Server Management Studio (SSMS). The repository progresses from installing SSMS and writing basic commands, through constraints and joins, into stored procedures, views, and analytical querying with window functions — each topic kept in its own folder in the order it was learned.

## About This Repository

This is a personal training repository, not a production codebase. It exists to:

- Keep a dated, topic-by-topic record of SQL concepts as they are learned
- Provide working, runnable example queries for each concept, to revisit and revise later
- Track progress from fundamentals (SELECT, constraints) through to more advanced querying (CTEs, window functions, query optimization)

## Repository Structure

```
SQL_Practice/
└── src/
    ├── 01_sql_server_&_ssms_basics/       Installing SQL Server and SSMS, and touring the interface (Object Explorer, Query Editor, Results pane)
    ├── 02_sql_basics/                     Core commands: CREATE, INSERT, SELECT, WHERE, ORDER BY, UPDATE, DELETE, ALTER, DROP
    ├── 03_sql_constraints/                NOT NULL, UNIQUE, CHECK, DEFAULT, FOREIGN KEY — enforcing data integrity
    ├── 04_logical_query_processing_pipeline/   How a query is actually evaluated: FROM → WHERE → GROUP BY → HAVING → SELECT → ORDER BY
    ├── 05_joins/                          INNER, LEFT, RIGHT, FULL, SEMI, and ANTI joins across related tables
    ├── 06_aggregation_&_having/           COUNT, SUM, AVG, MIN, MAX, GROUP BY, and filtering groups with HAVING
    ├── 07_stored_procedure/               Creating and executing reusable, parameterized SQL logic
    ├── 08_views/                          Saved SELECT queries used like virtual tables
    ├── 09_cte_subquery/                   Common Table Expressions (WITH) and nested subqueries
    ├── 10_window_functions/               ROW_NUMBER, RANK, LAG, and LEAD over partitioned, ordered data
    ├── 11_running_total/                  Cumulative totals using SUM() as a window function
    └── 12_qualify/                        Filtering window-function results directly (QUALIFY, and its SQL Server equivalent)
```

Each folder holds standalone, numbered `.sql` scripts (or screenshots, for the SSMS basics folder), ordered to match the sequence they were learned in. The numbering across folders reflects the actual training sequence, so the repository can also be read top to bottom as a learning path.

## Topic Reference

| # | Folder | Level |
|---|---|---|
| 01 | SSMS & SQL Server basics | Setup |
| 02 | SQL basics | Fundamentals |
| 03 | Constraints | Fundamentals |
| 04 | Logical query processing | Fundamentals |
| 05 | Joins | Intermediate |
| 06 | Aggregation & HAVING | Intermediate |
| 07 | Stored procedures | Intermediate |
| 08 | Views | Intermediate |
| 09 | CTEs & subqueries | Advanced |
| 10 | Window functions | Advanced |
| 11 | Running totals | Advanced |
| 12 | QUALIFY | Advanced |

## Prerequisites

- Microsoft SQL Server (a local instance or Developer/Express edition)
- SQL Server Management Studio (SSMS)

## How to Use This Repository

Clone the repository, then open any `.sql` file in SSMS to run it against a local database:

```bash
git clone https://github.com/shivam-a-diggibyte/SQL_Practice.git
```

Scripts are numbered to be worked through in order within each folder, and folders are numbered to be worked through in order overall — starting at `01_sql_server_&_ssms_basics` and progressing to the most recently added topic.

## Purpose

A working record of SQL training — practice queries, constraint examples, join exercises, stored procedures, views, window-function exercises, and screenshots — kept in one organized, topic-by-topic structure for reference and revision as the material builds in difficulty.

## Author

**shivam-a-diggibyte**
