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




 Power BI Dashboard

After completing the SQL analysis, the cleaned and structured data was connected to Power BI to build an interactive Business Intelligence dashboard. The objective was to convert SQL insights into visually appealing dashboards that allow business users to monitor KPIs, identify trends, and make data-driven decisions without writing SQL queries.

## Dashboard Overview

The Power BI report consists of six dashboard pages:

1. Executive Dashboard
2. Customer Analysis Dashboard
3. Restaurant Performance Dashboard
4. Coupon Analysis Dashboard
5. Cancellation & Refund Analysis Dashboard
6. Customer Churn Analysis Dashboard

---
 Power BI Workflow

## Step 1: Connect Power BI with MySQL

The MySQL database created during the SQL phase was connected directly to Power BI.

Connection Details

- Server: localhost
- Database: zomato_project
- Authentication: MySQL Database Authentication

Imported Tables

- customers
- orders
- restaurants

---

 Step 2: Data Transformation

Power Query was used to verify and prepare the imported data.

Tasks performed:

- Checked data types
- Removed unnecessary columns
- Validated null values
- Renamed columns where required
- Verified relationships

---

 Step 3: Data Modeling

Relationships were created between the tables.

customers(customer_id)
        │
        ▼
orders(customer_id)

restaurants(restaurant_id)
        │
        ▼
orders(restaurant_id)

Relationship Type

- One-to-Many
- Single Direction Filtering

This star schema improves report performance and simplifies DAX calculations.

---

 Step 4: Date Table

A Calendar table was created to support time-based analysis.

Used for:

- Year
- Month
- Month Name
- Revenue Trend
- Time Intelligence

---

 Step 5: DAX Measures

Several DAX measures were created to calculate KPIs and business metrics.

Revenue KPIs

- Total Revenue
- Average Order Value
- Monthly Revenue
- Revenue by City
- Revenue by Payment Mode

Customer KPIs

- Total Customers
- Repeat Customers
- Top Customers Revenue
- Customer Revenue %
- Acquisition Channel Performance

Restaurant KPIs

- Total Restaurants
- Restaurant Revenue
- Popular Cuisine
- Restaurant Orders

Coupon KPIs

- Coupon Usage %
- Coupon Orders
- Coupon Average Spend
- Non-Coupon Average Spend
- Repeat Coupon Customers

Cancellation KPIs

- Cancellation Rate
- Refund Rate
- Revenue Lost
- Cancelled Orders

Customer Churn KPIs

- Churned Customers
- Churn Rate
- Revenue Lost Due to Churn
- High Value Churn Customers

---

 Dashboard Pages

 1. Executive Dashboard

Purpose

Provide a complete business overview for management.

Visuals Used

- KPI Cards
- Line Chart
- Donut Charts
- Bar Charts
- Table
- Slicers

KPIs

- Total Revenue
- Total Orders
- Average Order Value
- Cancellation Rate
- Refund Rate
- Total Customers

---

 2. Customer Analysis Dashboard

Business Questions

- Top customers
- Repeat customers
- Revenue contribution
- Acquisition channel performance

Visuals Used

- Cards
- Bar Charts
- Donut Chart
- Table

---

 3. Restaurant Performance Dashboard

Business Questions

- Highest revenue restaurants
- Most ordered restaurants
- Popular cuisines
- Bottom performing restaurants

Visuals Used

- Horizontal Bar Charts
- Column Charts
- KPI Cards
- Tables

---

 4. Coupon Analysis Dashboard

Business Questions

- Coupon Usage %
- Coupon vs Non-Coupon Spend
- City-wise Coupon Usage
- Repeat Coupon Customers

Visuals Used

- KPI Cards
- Clustered Column Chart
- Horizontal Bar Chart

---

5. Cancellation & Refund Dashboard

Business Questions

- Cancellation Rate
- Refund Rate
- Revenue Lost
- Restaurants with Highest Cancellations

Visuals Used

- KPI Cards
- Horizontal Bar Chart

---

 6. Customer Churn Dashboard

Business Questions

- Churned Customers
- Churn Rate
- Highest Churn City
- Revenue Lost Due to Churn
- High Value Churn Customers

Visuals Used

- KPI Cards
- Horizontal Bar Chart
- Table

---

 Power BI Features

- Interactive Dashboard
- Cross Filtering
- Drill Down
- KPI Monitoring
- Business Intelligence Reporting
- Data Modeling
- DAX Calculations
- Slicers
- Dynamic Filtering
- Executive Reporting

---

 DAX Concepts Used

- SUM()
- COUNT()
- COUNTROWS()
- DISTINCTCOUNT()
- CALCULATE()
- FILTER()
- DIVIDE()
- IF()
- VAR
- RETURN
- MAX()
- TODAY()
- DATEDIFF()

---

 Power BI Skills Demonstrated

- Data Import
- Data Modeling
- Relationship Management
- Power Query
- DAX
- KPI Development
- Dashboard Design
- Business Analytics
- Interactive Reporting
- Data Visualization

---

 Tools Used

- MySQL
- MySQL Workbench
- Microsoft Power BI
- Power Query
- DAX
- Git
- GitHub

---

 Business Outcome

The Power BI dashboards transformed raw SQL outputs into interactive business reports that help stakeholders monitor revenue, customer behavior, restaurant performance, coupon effectiveness, cancellations, refunds, and customer churn in real time.

This project demonstrates an end-to-end Business Intelligence workflow, starting from SQL data extraction and cleaning to interactive dashboard development in Power BI, making it suitable for real-world analytics and portfolio presentation.
