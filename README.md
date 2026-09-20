Olist E-Commerce Sales Analysis
📌 Project Overview

This project analyzes the Brazilian Olist E-Commerce dataset to identify business insights across sales performance, customer behavior, seller performance, customer satisfaction, delivery efficiency, payment behavior, and logistics costs.

The analysis follows an end-to-end data analytics workflow, starting with data quality assessment and preprocessing in Python, followed by business-focused analysis using MySQL, and concluding with an interactive Power BI dashboard for KPI monitoring and data visualization.

The objective is to transform raw transactional data into actionable insights that can support decision-making across sales, customer experience, seller performance, and logistics operations.

🎯 Business Objectives

The analysis focuses on the following objectives:

Identify the highest revenue-generating product categories.
Evaluate sales performance across customer states and sellers.
Analyze customer purchasing and payment behavior.
Measure customer satisfaction using review ratings.
Evaluate delivery performance and seller efficiency.
Identify high-value customers based on total spending.
Analyze freight costs relative to product prices.
Develop an interactive dashboard to monitor key business performance indicators.
🔄 Project Workflow
Step 1 – Data Quality Assessment & Cleaning (Python)

The raw Olist datasets were imported into Python using Pandas for data quality assessment and preprocessing.

The following activities were performed:

Inspected dataset structure and data types.
Identified missing and duplicate records.
Validated key identifier columns.
Standardized date and time fields.
Cleaned and standardized product category values.
Reviewed data consistency across relational datasets.
Prepared and exported cleaned datasets for SQL analysis.
Step 2 – Business Analysis (MySQL)

The cleaned datasets were loaded into MySQL for structured business analysis.

SQL was used to investigate sales, customer, seller, payment, review, and delivery-related questions through:

Table joins
Common Table Expressions (CTEs)
Aggregate functions
Window functions
Ranking
GROUP BY and HAVING
Sorting and filtering
Date calculations
Revenue and performance metrics

The analysis was designed around business questions rather than purely technical data exploration.

Step 3 – Interactive Dashboard (Power BI)

The Python preprocessing and SQL analysis were extended into an interactive Power BI dashboard to provide a consolidated view of key e-commerce performance metrics.

Dashboard KPIs
Total Revenue
Total Orders
Average Order Value
Average Review Score
Average Delivery Days
Dashboard Visualizations
Monthly Revenue Trend
Revenue by Product Category
Revenue by Customer State
Payment Method Distribution
Top 10 Sellers by Revenue
Average Delivery Time by State
Interactive Filters
Order Date
Customer State
Product Category
Payment Type

The dashboard enables users to interactively explore sales performance, customer satisfaction, seller contribution, payment behavior, and delivery performance.

🛠️ Tools & Technologies
Python — Data quality assessment, preprocessing, and analysis
Pandas — Data cleaning and transformation
MySQL — Business analysis and SQL-based data exploration
Power BI — KPI development, interactive dashboards, and data visualization
DBeaver — SQL development and database analysis
Git & GitHub — Version control and project documentation
📂 Dataset

Dataset: Brazilian E-Commerce Public Dataset by Olist

Source: Kaggle — Olist Brazilian E-Commerce Dataset (https://www.kaggle.com/datasets/olistbr/brazilian-ecommerce)

The dataset contains approximately 100K orders distributed across multiple relational tables covering:

Orders
Customers
Products
Sellers
Payments
Reviews
Order Items

The relational structure enables analysis across different stages of the e-commerce lifecycle, from purchase and payment to delivery and customer feedback.

📊 Business Questions
1. Which product categories generate the highest revenue?

Objective: Identify high-revenue product categories to understand category-level sales performance and support inventory and marketing decisions.

2. Which states contribute the highest revenue?

Objective: Evaluate regional sales performance and identify differences in customer demand across states.

3. Which sellers generate the highest sales revenue?

Objective: Identify top-performing sellers and assess their contribution to overall sales.

4. Which payment methods are most preferred by customers?

Objective: Analyze payment behavior to understand customer payment preferences and the distribution of payment value across payment methods.

5. Which product categories receive the highest and lowest customer ratings?

Objective: Evaluate customer satisfaction across product categories and identify categories with differences in review performance.

6. Which states have the highest average customer review score?

Objective: Compare customer satisfaction across geographic markets using average review scores.

7. How long does delivery take on average?

Objective: Measure delivery duration and establish an overall benchmark for delivery performance.

8. Which sellers have the fastest average delivery time?

Objective: Compare seller-level delivery performance and identify differences in average delivery duration.

9. Who are the most valuable customers based on total spending?

Objective: Identify high-value customers based on their total spending to support potential customer retention and segmentation strategies.

10. Which product categories have the highest freight cost relative to product price?

Objective: Evaluate the relationship between freight costs and product prices to identify categories with relatively high logistics costs.

💡 Key Business Insights

The analysis examines the following business areas:

Revenue concentration across product categories.
Regional differences in sales performance.
Seller contribution to overall revenue.
Customer payment preferences.
Variation in customer satisfaction across product categories.
Geographic differences in customer review scores.
Overall delivery efficiency and delivery-time variation.
Differences in seller delivery performance.
Customer spending concentration and high-value customer segments.
Freight cost exposure across product categories.

Note: Quantitative findings and specific business recommendations will be added based on the validated SQL analysis and Power BI results.

🧠 SQL Concepts Used
INNER JOIN
Common Table Expressions (CTEs)
Aggregate Functions
Window Functions
RANK()
GROUP BY
HAVING
ORDER BY
LIMIT
DATEDIFF
SUM()
AVG()
COUNT()
ROUND()
📁 Repository Structure
Olist-E-commerce-Analysis/
│
├── Data_Cleaning_Python.ipynb
├── Olist_Ecommerce_SQL_Analysis.sql
├── README.md
│
└── Data/
    ├── olist_orders_clean.gz
    ├── olist_order_items_clean.gz
    ├── Olist_customers_clean.gz
    ├── olist__products_clean.gz
    ├── olist_payments_clean.gz
    ├── olist_reviews_clean.gz
    └── olist_sellers_clean.gz
🚀 Future Enhancements

Potential extensions to the analysis include:

Customer segmentation using RFM analysis.
Sales forecasting using Python.
Deeper analysis of customer purchasing behavior.
Seller performance benchmarking.
Optimization of SQL queries for improved analytical performance

# 👩‍💻 Author

**Subhashini**
