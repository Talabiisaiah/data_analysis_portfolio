# 🏥 Hospital Transactions Dashboard – Power BI Case Study

This project showcases an end-to-end Power BI solution designed to help **City Hospital** uncover insights from its financial and operational transaction data. The goal was to create an interactive dashboard to support data-driven decision-making in areas such as revenue tracking, expense management, procedure performance, and doctor/patient analysis.

## 🧾 Case Study Overview

**Client**: City Hospital  
**Objective**: Identify key performance indicators (KPIs), track revenue trends, and optimize operations through an interactive dashboard.

City Hospital lacked a centralized view of its financial performance, leading to inefficiencies and guesswork in decision-making. As a Data Analyst, I designed a data model, cleaned the dataset, created DAX measures, and developed interactive dashboards to improve operational clarity.

---

## 🛠️ Tools & Technologies
- **Power BI Desktop**
- **Power Query (M Language)**
- **DAX (Data Analysis Expressions)**
- **Data Modeling (Star Schema)**

---

## 🧩 Data Preparation

### 🔍 Data Cleaning
- Removed nulls and empty fields using **Column Quality** in Power Query.
- Fixed inconsistencies in gender and specialty fields.
- Removed duplicates and ensured valid date formats.

### 🏗️ Data Modeling
- Fact Table: `Hospital_Transactions`
- Dimension Tables: `Doctors`, `Patients`, `Location`, `Procedures`
- Relationships created based on: `DoctorID`, `PatientID`, `ProcedureName`, `LocationID`

---

## 📊 Key Metrics and KPIs

| KPI | Description |
|-----|-------------|
| **Total Revenue** | Sum of all revenue generated across transactions |
| **Total Expenses** | Sum of all expenses incurred |
| **Total Profit** | Revenue - Expenses |
| **Profit Margin (%)** | `(Profit ÷ Revenue) × 100` |
| **# of Doctors / Patients** | Unique counts |
| **Revenue by Specialty** | Breakdown by medical specialty |
| **Revenue by Procedure** | Revenue, cost, margin and count per procedure |
| **Doctor & Patient Contribution** | Top revenue generators |
| **Visits Over Time** | Quarterly patient activity trends |

---

## 📈 Insights & Visualizations

### 📌 Dashboard 1: Financial Overview
- 💰 **Total Revenue**: $274K  
- 💸 **Total Expenses**: $189K  
- 📈 **Profit Margin**: 30.62%  
- 📉 Revenue and Profit trend over time
- 🔬 Revenue by **Specialty**, **Category**, and **Procedure**

### 📌 Dashboard 2: People & Performance
- 🧑‍⚕️ 81 Doctors | 👨‍⚕️ 86 Patients
- 📋 Revenue by top doctors and patients
- 🩺 Patient visit trends by year and quarter
- 👥 Gender breakdown of doctors and patients
- 📚 Doctor/Patient count by specialty

---
### 🧠 Key Recommendations
- Focus marketing on specialties like Neurology and Dermatology (i.e the highest revenue earners).
- Optimize costs in Radiology and Surgery, which show lower margins.
- Retain top-performing doctors (e.g., Benjamin, Ava Adams) based on consistent revenue contributions.
- Use quarterly trends to allocate staff and resources during high demand periods.



