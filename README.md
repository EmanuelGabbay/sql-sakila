# SQL: Investigating Sakila DVD Rental Database :dvd:

## Introduction
This is my first project on my journey to become a data scientist :eyeglasses: :bar_chart:

In this project I am used my SQL skills to gain insigts from the Sakila DVD rental database. I started from asking questions that I would like to be answered in order to increase company's profits. Then, I wrote and executed the queries. Finally, I exported the results to Excel in order to create visualizations that showcase my findings.

## Database
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