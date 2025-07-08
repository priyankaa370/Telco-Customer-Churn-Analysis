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

### ✅ Step 3: Churn Prediction Model + Deployment
**Tools:** Python (scikit-learn, Pandas), Flask, Render

**Tasks:** 
- Built a machine learning pipeline using Logistic Regression and Random Forest
- Preprocessed and encoded categorical features using ColumnTransformer
- Evaluated models using accuracy, ROC-AUC, and feature importance
- Deployed an interactive Flask-based web application on Render for real-time churn prediction

🚀 [Try the Live App](https://telco-customer-churn-analysis-2.onrender.com/)

📍[View ML Code](https://github.com/priyankaa370/Telco-Customer-Churn-Analysis/blob/main/Customer_Churn_Analysis_%26_Prediction_Model%20Training.ipynb)

### ✅ Step 4: Power BI Dashboard & Business Recommendations
**Tools:** Power BI

**Tasks:** 
- Designed an interactive dashboard with KPI cards, bar charts, area charts, pie charts, and slicers
- Included dynamic filters (tenure, gender, contract type, payment method) for business exploration
- Highlighted risky customer groups (e.g., early tenure + month-to-month + electronic check users)
- Provided actionable insights to improve retention and reduce revenue leakage


### ✅ Final Deliverables
- End-to-end churn prediction solution with business insight
- EDA, SQL, ML modeling, deployment, and Power BI visualization
- Created with recruiters, analysts, and business stakeholders in mind

## 📎 Dataset
**Source:** [Kaggle - Telco Customer Churn](https://www.kaggle.com/datasets/blastchar/telco-customer-churn/data)
