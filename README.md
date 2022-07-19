# SQL: Investigating Sakila DVD Rental Database :dvd:

## Introduction
In this project I used my SQL skills (`PostgreSQL`) to gain insigts from the Sakila DVD rental database.

Based on the data I had, I started from asking questions that I would like to be answered in order to increase company's profits. Then, I wrote and executed the queries using the pgAdmin tool. Finally, I exported the results to Excel in order to create visualizations that showcase my findings.

## The Database
The Sakila Database is a **sample database** that holds information about a company that rents movie DVDs.

There are 14 tables in the database:

- actor – Stores information about film actors.
- film – Stores film information.
- film_actor – Stores the relationships between films and actors.
- category – Stores film’s categories data.
- film_category - Stores the relationships between films and film's categories.
- store – contains the store data including manager staff and address.
- inventory – Stores inventory data.
- rental – Stores rental data.
- payment – Stores customer’s payments.
- staff – Stores staff data.
- customer – Stores customers data.
- address – Stores address data for staff and customers.
- city – Stores the city names.
- country – Stores the country names.

It is worth mentioning that the database is also using *Composite Keys* in addition to *Primary Keys* and *Forigen Keys*. A table with a *Composite Key* does not have a unique key for each row in the table. Instead a combination of two or more columns serves as a unique identifier for each row.

**Disclaimer:** The database is "fake" and does not hold any genuine information.

The database and its ERD (Entity Relationship Diagram) can be found at project's files.

## Questions

1. What is the most popular film category in each country (top 10 countries by number of rentals)?
2. How the stores are compared in terms of weekly revenue?
3. What is the average time between rentals for each our active customers (shown by percentage of customers)? 
4. What is the running total of the revenue for each week?

## Project Files

- :file_folder: **Database:** Contains the Sakila Database (.tar) and its ERD (.pdf).
- :file_folder: **Queries and Results:** Contains the SQL queries used to answer the questions (.sql) and their outputs (.csv).
- :clipboard: **Report.pdf:** Contains my findings which presented in proper visualizations.
