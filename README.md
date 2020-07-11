# SQL: Investigating Sakila DVD Rental Database :dvd:

## Introduction
This is my first project on my journey to become a data scientist :eyeglasses: :bar_chart:

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

1. What is the most popular film category in each country (top 5 countries)?
2. Who are the top 10 customers (in terms of total amount spent on rentals)?
3. What was the average price payed on films by film rating?
4. What is the running total amount payed on film rental on each week?

## Project Files

- :file_folder: **Database:** Contains the Sakila Database (.tar) and its ERD (.pdf).
- :file_folder: **Queries and Results:** Contains the SQL queries used to answer the questions (.sql) and their outputs (.csv).
- :clipboard: **Report.pdf:** Contains my findings which presented in proper visualizations.