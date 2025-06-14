# 📊 Telco-Customer-Churn-Analysis
This project explores customer churn patterns using the Telco Customer Churn dataset. It is structured in multiple phases — from exploratory data analysis (EDA) to SQL-based segmentation and ultimately predictive modeling.

## 🧠 Project Objective
The goal is to understand key factors influencing churn and to derive actionable insights that can help telecom companies improve customer retention.

## 🔍 Phases of the Project
### ✅ Step 1: Exploratory Data Analysis (EDA)
**Tools:** Python (Pandas, Matplotlib, Seaborn)

**Tasks:**  
- Cleaned and prepared the dataset 
- Uncovered early churn trends by contract type, tenure, and service usage
- Visualized churn distribution using barplots and histograms

[**📍View EDA Notebook:**](https://github.com/priyankaa370/Telco-Customer-Churn-Analysis/blob/main/Telco_Customer_Churn_Analysis_%26_Prediction_EDA.ipynb)

### ✅ Step 2: SQL-Based Customer Segmentation
**Tools:** PostgreSQL, pgAdmin
**Tasks:**
- Structured the dataset into logical entities (see ERD below)
- Wrote intermediate and advanced SQL queries to:
- Segment customers by tenure and monthly charges
- Identify high-risk churn groups
- Use window functions for customer ranking and comparisons

[📍View SQL Queries & Insights](https://github.com/priyankaa370/Telco-Customer-Churn-Analysis/tree/main/SQL%20Queries)

## 🗂 Entity Relationship Diagram (ERD)

![image](https://github.com/user-attachments/assets/bddb3eed-df11-4167-9090-b5e04aede2a6)

## 🚧 Upcoming Steps
- 🎯 Build a churn prediction model using Logistic Regression / Random Forest
- 📊 Develop dashboards using Tableau or Power BI for stakeholder-friendly visualization
- 🧩 Provide business recommendations based on model findings

## 📎 Dataset
**Source:** [Kaggle - Telco Customer Churn](https://www.kaggle.com/datasets/blastchar/telco-customer-churn/data)
