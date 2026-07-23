# Zomato Customer Analytics using SQL

Welcome to my **Zomato Customer Analytics using SQL** project!

This repository presents an end-to-end SQL analytics case study based on a Zomato dataset. The project focuses on solving real-world business problems by analyzing customer behavior, restaurant performance, revenue trends, coupon effectiveness, cancellations, refunds, and customer churn.

Using SQL, I performed data cleaning, data quality analysis, relational data analysis, KPI reporting, and business intelligence to uncover actionable insights that can help improve business growth and operational efficiency.

---

# Zomato Customer Analytics Case Study

## Problem Statement

Zomato is one of India's largest food delivery platforms, connecting millions of customers with restaurants across multiple cities.

Over the last few months, the leadership team observed that although the number of registered customers continues to grow, overall business performance is not improving at the expected rate.

The company is facing several business challenges:

- Revenue growth has become inconsistent.
- Customer retention appears to be declining.
- Some restaurant partners are underperforming.
- Coupon effectiveness is unclear.
- Cancellation and refund rates may be affecting revenue.
- High-value customers may have stopped ordering.

The management team hired a Data Analyst to investigate these issues and identify the factors affecting growth, customer retention, restaurant performance, and operational efficiency.

As a Data Analyst, the objective of this project is to analyze customer, restaurant, and order data using SQL, uncover meaningful business insights, and provide data-driven recommendations.

---

# Areas of Analysis

The project focuses on six major business areas:

1. Revenue Analysis
2. Customer Analysis
3. Restaurant Performance
4. Coupon Analysis
5. Cancellation & Refund Analysis
6. Customer Churn Analysis

---

# Business Questions

## Revenue Analysis

- What is the total revenue?
- What is the monthly revenue trend?
- Which city contributes the highest revenue?
- Which payment mode generates the most revenue?
- What is the Average Order Value (AOV)?

---

## Customer Analysis

- Who are the top 20 customers by revenue?
- What percentage of revenue comes from the top customers?
- Which acquisition channel brings the highest-value customers?
- How many repeat customers does the business have?

---

## Restaurant Performance

- Which restaurants generate the highest revenue?
- Which restaurants receive the most orders?
- Which cuisines are the most popular?
- Do highly-rated restaurants generate more revenue?
- Which are the bottom five restaurants by revenue?

---

## Coupon Analysis

- What percentage of orders use coupons?
- Do coupon users spend more than non-coupon users?
- Which city uses the most coupons?
- Are coupons helping improve customer retention?

---

## Cancellation & Refund Analysis

- What is the cancellation rate?
- What is the refund rate?
- How much revenue is lost due to cancellations?
- Which restaurants have the highest number of cancelled orders?

---

## Customer Churn Analysis

- How many customers have churned?
- What is the customer churn rate?
- Which city has the highest churn?
- How much revenue is lost due to churn?
- Who are the high-value churned customers?

---

# Project Objectives

The objective of this project is to use SQL to analyze Zomato's customer, restaurant, and order data in order to:

- Analyze revenue performance.
- Identify high-value customers.
- Evaluate restaurant performance.
- Measure customer retention.
- Analyze coupon effectiveness.
- Monitor cancellations and refunds.
- Detect customer churn.
- Generate business KPIs.
- Support data-driven decision-making.

---

# Project Workflow

## 1. Database Setup

- Create MySQL Database
- Import Customer Dataset
- Import Orders Dataset
- Import Restaurant Dataset
- Rename Incorrect Columns
- Validate Data Types

---

## 2. Data Quality Analysis

Performed data quality checks including:

- Missing Value Analysis
- Duplicate Record Detection
- Blank Value Detection
- Unique Key Validation
- Data Consistency Checks

---

## 3. Data Cleaning

- Removed blank records
- Removed duplicate records
- Corrected column names
- Validated primary keys
- Standardized data structure

---

## 4. Data Integration

Combined customer, restaurant, and order datasets using SQL JOIN operations to perform business analysis.

Integrated information includes:

- Customer Details
- Restaurant Details
- Order Information
- Revenue Metrics
- Coupon Information
- Order Status

---

## 5. Business Analytics

### Revenue Analysis

- Total Revenue
- Monthly Revenue Trend
- Revenue by City
- Revenue by Payment Mode
- Average Order Value

### Customer Analysis

- Top Customers
- Revenue Contribution
- Acquisition Channel Performance
- Repeat Customers

### Restaurant Performance

- Highest Revenue Restaurants
- Most Ordered Restaurants
- Popular Cuisines
- Restaurant Rating vs Revenue
- Bottom Performing Restaurants

### Coupon Analysis

- Coupon Usage Percentage
- Coupon User Spending
- City-wise Coupon Usage
- Coupon Impact on Retention

### Cancellation & Refund Analysis

- Cancellation Rate
- Refund Rate
- Revenue Lost
- Restaurants with Highest Cancellations

### Customer Churn Analysis

- Churned Customers
- Churn Rate
- Revenue Lost Due to Churn
- High-Value Churned Customers
- City-wise Churn Analysis

---

# SQL Concepts Used

## SQL Fundamentals

- SELECT
- WHERE
- GROUP BY
- ORDER BY
- HAVING
- DISTINCT
- LIMIT

---

## Aggregate Functions

- COUNT()
- SUM()
- AVG()
- MIN()
- MAX()
- ROUND()

---

## Joins

- INNER JOIN
- LEFT JOIN

---

## Conditional Statements

- CASE
- COALESCE

---

## Date Functions

- STR_TO_DATE()
- DATE_FORMAT()
- DATE_SUB()
- MAX()

---

## Data Cleaning

- ALTER TABLE
- DELETE
- TRIM()
- NULL Handling
- Duplicate Detection

---

## Business Analytics

- Revenue Analysis
- Customer Analytics
- Restaurant Analytics
- Coupon Analytics
- Cancellation Analysis
- Refund Analysis
- Customer Churn Analysis
- KPI Reporting

---

# Key Performance Indicators (KPIs)

- Total Revenue
- Monthly Revenue Growth
- Average Order Value
- Highest Revenue City
- Highest Revenue Payment Mode
- Top Customers
- Repeat Customers
- Customer Acquisition Performance
- Highest Revenue Restaurants
- Most Popular Cuisine
- Coupon Usage Percentage
- Cancellation Rate
- Refund Rate
- Customer Churn Rate
- Revenue Lost Due to Churn

---

# Features

- Database Setup
- Data Cleaning
- Data Quality Analysis
- SQL Joins
- Revenue Analytics
- Customer Analytics
- Restaurant Performance Analysis
- Coupon Effectiveness Analysis
- Cancellation & Refund Analysis
- Customer Churn Analysis
- KPI Reporting
- End-to-End SQL Business Case Study

---

# Tools & Technologies

- SQL
- MySQL
- MySQL Workbench
- Git
- GitHub
- Visual Studio Code

---

# Repository Structure

```text
Zomato-Customer-Analytics-SQL
│
├── Zomato_SQL_Project.sql
├── zomato_customer.csv
├── zomato_orders.csv
├── zomato_restaurants.csv
├── README.md
```

---

# Learning Outcomes

Through this project, I strengthened my ability to:

- Perform end-to-end SQL data analysis.
- Clean and validate relational datasets.
- Integrate multiple tables using SQL joins.
- Solve real-world business problems using SQL.
- Analyze customer purchasing behavior.
- Evaluate restaurant performance.
- Build KPI-driven business reports.
- Perform customer churn analysis.
- Generate actionable business insights.
- Structure professional SQL projects for GitHub portfolios.

---

# Future Enhancements

This project can be enhanced by implementing:

- Window Functions
- Common Table Expressions (CTEs)
- Stored Procedures
- SQL Functions
- Index Optimization
- Power BI Dashboard
- Tableau Dashboard
- Customer Lifetime Value (CLV) Analysis
- Sales Forecasting
- Advanced Business Intelligence Reporting

---

# About

An end-to-end SQL analytics project that investigates Zomato's customer, restaurant, and order data to solve real business problems. The project includes data cleaning, data quality assessment, revenue analysis, customer analytics, restaurant performance evaluation, coupon analysis, cancellation & refund analysis, customer churn analysis, and KPI reporting using MySQL. The insights generated through this project help support strategic decision-making and business growth.

---

# Topics

```text
sql
mysql
mysql-workbench
data-analysis
business-intelligence
customer-analytics
restaurant-analytics
sales-analysis
revenue-analysis
kpi-reporting
coupon-analysis
cancellation-analysis
refund-analysis
customer-churn
joins
aggregate-functions
data-cleaning
business-analysis
github-project




Zomato Business Analytics Project (SQL + Power BI)
📌 Project Overview

This project analyzes Zomato food delivery data using MySQL and Power BI.

The objective is to transform raw transactional data into meaningful business insights by answering real-world business questions related to:

Revenue
Customers
Restaurants
Coupons
Cancellations
Refunds
Customer Churn
🛠 Tools Used
MySQL Workbench
Power BI Desktop
SQL
DAX
Power Query
Dataset

Three datasets were used.

Customers

Contains customer details.

Orders

Contains all order transactions.

Restaurants

Contains restaurant information.

Database Design

Three tables were connected.

Customers
     │
customer_id
     │
Orders
     │
restaurant_id
     │
Restaurants

Relationships were created inside Power BI.

SQL Work

The SQL phase included

Database creation
Table creation
Importing CSV files
Data cleaning
Business SQL queries
Revenue Analysis
Customer Analysis
Restaurant Analysis
Coupon Analysis
Cancellation Analysis
Churn Analysis
Power BI Process

The project followed these steps.

Step 1

Connected Power BI with MySQL.

Step 2

Loaded all tables.

Step 3

Created relationships.

Step 4

Performed data cleaning using Power Query.

Step 5

Created calculated measures using DAX.

Step 6

Designed interactive dashboards.

KPIs Created
Total Revenue
Total Orders
Average Order Value
Cancellation Rate
Refund Rate
Coupon Usage %
Coupon Avg Spend
No Coupon Avg Spend
Revenue Lost
Churn Rate
Churn Customers
Remaining Customers
Remaining Revenue
Total Restaurants
Dashboards
1 Executive Dashboard

Shows

Revenue
Orders
AOV
Payment Mode
Revenue by City
Revenue by Restaurant
Order Status
2 Customer Analysis

Shows

Total Customers
New Customers
Repeat Customers
Revenue by Customer
Customer Segmentation
3 Restaurant Performance

Shows

Top Restaurants
Bottom Restaurants
Cuisine Analysis
Restaurant Rating vs Revenue
4 Coupon Analysis

Shows

Coupon Usage %
Coupon Spend
City-wise Coupon Usage
Repeat Coupon Customers
5 Cancellation & Refund Analysis

Shows

Cancellation Rate
Refund Rate
Revenue Lost
Restaurants with Highest Cancellation
6 Customer Churn Analysis

Shows

Churn Customers
Churn Rate
Highest Churn City
Revenue Lost Due to Churn
High Value Churn Customers
Business Questions Solved
Revenue Analysis
Total Revenue
Monthly Revenue Trend
Top Cities
Best Restaurants
Customer Analysis
Repeat Customers
Average Spend
Customer Distribution
Restaurant Analysis
Top Restaurants
Bottom Restaurants
Cuisine Popularity
Coupon Analysis
Coupon Usage %
Coupon Spending
Coupon Cities
Repeat Coupon Users
Cancellation Analysis
Cancellation Rate
Refund Rate
Revenue Lost
Highest Cancellation Restaurants
Churn Analysis
Churn Customers
Churn Rate
Highest Churn City
Revenue Lost
High Value Churn Customers
