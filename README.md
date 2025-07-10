# Uber Request Data Analysis – Internship Project

**Tools Used:** Microsoft Excel, Google Colab (Python), SQL Server Management Studio

---

## 📌 Project Objective
Analyze Uber ride request data to identify service failures, peak hours, and patterns in trip behavior — and provide recommendations to improve operational efficiency.

---

## 1: Excel-Based Data Cleaning & Dashboard

### ✔ What was done:
- **Data Cleaning:**
  - Converted timestamps using "Text to Columns"
  - Created new columns:
    - `Request Hour`
    - `Request Day`
    - `Trip Duration (minutes)`
  - Handled missing values and NA entries

- **Pivot Tables & Graphs:**
  - Ride request status counts
  - Requests by hour and day
  - Cancellations by pickup point
  - Average trip durations
  - Used slicers for interactivity

- **Dashboard:**
  - Built using Pivot Charts and Slicers
  - Fully dynamic with filters for `Pickup Point`, `Request Day`, and `Status`
  - Helped visualize:
    - Peak demand hours
    - High cancellation slots
    - City vs Airport request patterns

---

## 2: Python-Based EDA (Google Colab)

### ✔ What was done:
- **Loaded dataset using Pandas**
- **Explored basic info:**
  - `.head()`, `.info()`, `.isnull()`, `.duplicated()`, `.describe()`

- **Feature Engineering:**
  - Parsed datetime
  - Extracted hour, weekday
  - Calculated trip durations

- **Charts Created (Matplotlib & Seaborn):**
  - Bar plots for status/hour/day
  - Line charts for demand trends
  - Pie charts for distribution
  - Heatmap for correlations
  - Pair plots for multivariate relationships
  - Box plots for trip duration comparison

- **Insights Included:**
  - Most failures occurred during peak hours (5–9 AM & 5–9 PM)
  - 'No Cars Available' was dominant in high-demand slots
  - Drivers were less available during peak hours at 'City'

---

## 3: SQL-Based Querying (SSMS)

### ✔ What was done:
- **Imported dataset using Flat File Import Wizard**
- **Created queries for:**
  - Count by request status
  - Hourly and daily request volumes
  - Top drivers by trip completion
  - Average trip duration by pickup point
  - Cancellation percentages
  - Completion ratio across entire dataset

- **Advanced Queries Included:**
  - Requests without assigned drivers
  - Requests with same timestamps (duplicates)
  - Peak hour failure rate analysis

---

## Business Recommendations

- Add more drivers during peak request hours
- Improve driver availability near 'City' in mornings and evenings
- Use historical demand data for predictive scheduling
- Improve user wait time experience in failure-prone slots

---

