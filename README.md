# 🛒 Olist E-commerce Sales Analysis

## 📌 Project Overview

This project analyzes the Brazilian Olist E-commerce dataset to uncover actionable business insights related to sales performance, customer behavior, seller performance, customer satisfaction, delivery efficiency, and logistics costs.

The project follows an end-to-end data analysis workflow, beginning with data quality assessment and cleaning in Python, followed by business analysis using MySQL. The objective is to support data-driven decision-making by answering key business questions commonly encountered in e-commerce organizations.


## 🎯 Business Objective

The primary objectives of this project are to:

- Identify the highest revenue-generating product categories.
- Evaluate sales performance across different states and sellers.
- Understand customer purchasing and payment behavior.
- Measure customer satisfaction using review ratings.
- Analyze delivery performance and seller efficiency.
- Identify high-value customers for retention strategies.
- Evaluate logistics costs by comparing freight charges with product prices.

## 🔄 Project Workflow

### Step 1 – Data Quality Assessment (Python)

The raw CSV files were imported into Python using Pandas for data quality assessment and preprocessing.

The following checks were performed:

- Checked data types
- Identified missing values
- Removed duplicate records
- Validated key columns
- Standardized date formats
- Cleaned product category names
- Exported cleaned datasets for SQL analysis
  
### Step 2 – SQL Business Analysis (MySQL)

The cleaned datasets were imported into MySQL, where SQL was used to answer business-focused analytical questions using joins, aggregate functions, window functions, CTEs, and date functions.

### Step 3 – Dashboard (Upcoming)

The SQL analysis will be extended by developing an interactive Power BI dashboard to visualize KPIs and business insights.

# 🛠️ Tools & Technologies

- Python
- Pandas
- MySQL
- DBeaver
- Git & GitHub
- Power BI (In Progress)

# 📂 Dataset

**Dataset:** Olist Brazilian E-commerce Dataset

**Source:** https://www.kaggle.com/datasets/olistbr/brazilian-ecommerce

Dataset contains:

- 100K+ Orders
- Multiple relational tables
- Customer, Product, Seller, Payment, Review and Order information

# 📊 Business Questions

### 1. Which product categories generate the highest revenue?

**Objective:**
Identify the most profitable product categories to support inventory planning and marketing strategies.

### 2. Which states contribute the highest revenue?

**Objective:**
Understand regional sales performance to optimize market expansion and resource allocation.

### 3. Which sellers generate the highest sales revenue?

**Objective:**
Identify top-performing sellers and evaluate their contribution to overall business revenue.

### 4. Which payment methods are most preferred by customers?

**Objective:**
Analyze customer payment preferences to improve payment experience and optimize payment partnerships.

### 5. Which product categories receive the highest and lowest customer ratings?

**Objective:**
Evaluate customer satisfaction across different product categories to identify quality improvement opportunities.

### 6. Which states have the highest average customer review score?

**Objective:**
Measure customer satisfaction across different regions to identify high-performing and underperforming markets.

### 7. How long does delivery take on average?

**Objective:**
Measure delivery efficiency and establish a benchmark for logistics performance.

### 8. Which sellers have the fastest average delivery time?

**Objective:**
Identify sellers with efficient delivery operations and recognize best-performing logistics partners.

### 9. Who are the most valuable customers based on total spending?

**Objective:**
Identify high-value customers for customer retention programs and personalized marketing campaigns.

### 10. Which product categories have the highest freight cost relative to product price?

**Objective:**
Evaluate logistics efficiency by identifying categories where shipping costs consume a large proportion of product value.

# 💡 Key Business Insights

- High-revenue product categories contribute significantly to overall business sales and should be prioritized for inventory and promotional campaigns.
- Revenue varies across states, highlighting regional differences in customer demand.
- A small group of sellers contributes a significant share of total sales revenue.
- Credit cards are the most frequently used payment method, indicating customer preference for flexible payment options.
- Customer satisfaction differs across product categories, helping identify areas requiring product quality improvements.
- Delivery performance varies among sellers, enabling the identification of logistics best practices.
- A small segment of customers generates a disproportionately high share of total revenue, supporting customer loyalty initiatives.
- Certain product categories have disproportionately high freight costs relative to product prices, indicating opportunities to optimize shipping strategies and improve profitability.


# 🧠 SQL Concepts Used

- INNER JOIN
- Common Table Expressions (CTE)
- Aggregate Functions
- Window Functions (RANK)
- GROUP BY
- HAVING
- ORDER BY
- LIMIT
- DATEDIFF
- SUM
- AVG
- COUNT
- ROUND

# 📁 Repository Structure

Olist-Ecommerce-SQL-Analysis/
│
├── Data_Cleaning_Python.ipynb
├── Olist_Ecommerce_SQL_Analysis.sql
├── README.md


# 🚀 Future Enhancements

- Develop an interactive Power BI dashboard.
- Build KPI cards and executive dashboards.
- Perform customer segmentation using RFM analysis.
- Conduct sales forecasting using Python.
- Optimize SQL queries for improved performance.

# 👩‍💻 Author

**Subhashini**
