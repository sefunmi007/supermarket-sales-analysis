# Supermarket Sales Analysis

## Project Overview

This project analyzes 1,000 supermarket transactions recorded across three branches during Q1 2019 (January–March).

The objective is to identify revenue drivers, customer and payment behavior, product-line performance, monthly trends, and practical business opportunities that management can investigate.

## Business Questions

- How much revenue was generated during the quarter?
- Which branch generated the highest revenue?
- Which product lines performed best?
- Which customer type generated more revenue?
- How did revenue differ by gender?
- Which payment method was most frequently used?
- Which month recorded the highest revenue?
- How did transaction volume compare with revenue?
- Which product line had the highest customer rating?
- What actions could management consider based on the findings?

## Tools Used

- Microsoft Excel
- PivotTables
- Excel formulas
- Data visualization
- SQL

## Dataset

The dataset contains 1,000 supermarket transactions and 17 fields covering branch, city, customer type, gender, product line, pricing, quantity, tax, total, date/time, payment method, COGS, gross income, and customer rating.

The analysis covered January to March 2019.

## Data Quality Checks

The source dataset was reviewed for missing values, duplicate records, invalid quantities, negative or zero financial values, and category inconsistencies. No missing values or duplicate rows were identified in the dataset used for this analysis.

## Key Findings

- **Total revenue:** ₦322,966.75
- **Gross income:** ₦15,379.37
- **Quantity sold:** 5,510
- **Transactions:** 1,000
- **Average transaction value:** ₦322.97
- **Overall customer rating:** 6.97
- **Highest-revenue branch:** Branch C — ₦110,568.71
- **Highest-revenue product line:** Food and Beverages — ₦56,144.84
- **Highest-rated product line:** Food and Beverages — 7.11
- **Highest-revenue month:** January — ₦116,291.87
- **Most-used payment method by transaction count:** E-wallet — 345 transactions
- **Highest-revenue payment method:** Cash — ₦112,206.57

## Business Recommendations

1. Review Branch C's performance drivers and assess whether useful practices can be applied across other branches.
2. Maintain focus on Food and Beverages by monitoring inventory availability, demand, and customer feedback.
3. Investigate the February revenue decline using product availability, promotions, customer traffic, and operational data.
4. Monitor payment-channel performance using both transaction count and transaction value.
5. Review Health and Beauty performance, including demand, pricing, availability, and customer feedback.

## Project Structure

```text
supermarket-sales-analysis/
├── README.md
├── data/
│   └── raw/
│       └── supermarket_sales.xlsx
├── excel/
│   └── supermarket-sales-analysis.xlsx
├── sql/
│   └── analysis_queries.sql
├── dashboard/
│   └── dashboard.png
└── insights/
    └── business_insights.md
```
