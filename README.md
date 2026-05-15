# MyZanzibar AI – Milestone 2

### github repo link: https://github.com/JumaJuma19/zanzibar-ai

## Project Overview

MyZanzibar AI is a tourism database system designed for Zanzibar tourism management and future AI-powered recommendation systems.

The project stores and manages:

* Hotels
* Restaurants
* Activities
* Users
* Reviews
* Trip plans
* Locations

This database supports future development of:

* Recommendation systems
* Retrieval-Augmented Generation (RAG)
* Tourism analytics
* AI chatbot integration

---

# Technologies Used

* PostgreSQL
* SQL
* pgAdmin
* Python (for synthetic data generation)

---

# Database Tables

The system contains the following tables:

1. users
2. locations
3. hotels
4. restaurants
5. activities
6. trip_plans
7. reviews

---

# Dataset Description

The dataset contains realistic tourism-related data for Zanzibar, including:

* Hotel information
* Restaurant details
* Tourist activities
* User reviews
* Travel plans
* Location information

The data was synthetically generated to simulate real tourism behavior.

---

# Row Counts

Approximate dataset size:

| Table       | Rows     |
| ----------- | -------- |
| Users       | 100      |
| Hotels      | 300      |
| Restaurants | 300      |
| Activities  | 300      |
| Reviews     | 300      |
| Locations   | 14       |

---

# Features Implemented

## JOIN Queries

* Hotels with locations
* Reviews with users and hotels

## Aggregation Queries

* Average hotel ratings
* Activity counts by category

## Subqueries

* Hotels above average price
* Users with reviews

## Common Table Expressions (CTE)

* Top-rated hotels
* User review summaries

## Window Functions

* Hotel price ranking
* Row numbering by location

---

# Database Schema

The schema includes:

* Primary Keys
* Foreign Keys
* Relational constraints
* Normalized structure

Main relationships:

* Hotels belong to locations
* Reviews belong to users
* Activities belong to locations
* Trip plans belong to users

---

# How to Run the Project

## Step 1: Create Database

```sql
CREATE DATABASE myzanzibar;
```

---

## Step 2: Open pgAdmin or psql

Connect to PostgreSQL and select the database.

---

## Step 3: Run schema.sql

Execute the schema file to create all tables.

---

## Step 4: Import Data

Import generated CSV data into the tables.

---

## Step 5: Run milestone2_queries.sql

Execute all analytical SQL queries.

---

# Example Queries Included

* JOIN
* GROUP BY
* AVG()
* COUNT()
* CTE
* Subqueries
* Window Functions
* RANK()
* ROW_NUMBER()

---

# Future Improvements

* AI recommendation engine
* Chatbot integration
* RAG pipeline
* Real tourism datasets
* Dashboard and analytics


