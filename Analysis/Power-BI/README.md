# PayStream Payment Failure Analysis – Power BI

## Overview
This Power BI dashboard was developed to analyse PayStream payment transaction performance and identify patterns associated with failed transactions.

The dashboard provides an interactive view of overall payment performance and a detailed breakdown of payment failures.

## Dashboard Pages

### 1. Payment Performance
Provides a high-level overview of payment performance, including:
- Overall failure rate
- Total transactions
- Failed transactions
- Failure rate by week
- Failure rate by payment method
- Failure rate by merchant type
- Interactive filters for week, merchant type and payment method

### 2. Failure Analysis
Provides a detailed investigation of payment failures, including:
- Failure rate by merchant type and payment method
- Failed transactions by week
- Failed transactions by payment method
- Failed transactions by merchant type
- Interactive merchant and payment method filters

## Key Findings
- Overall payment failure rate was approximately 3.60%.
- Approximately 157K transactions were analysed.
- Around 6K transactions failed.
- Payment failures increased significantly around Week 9.
- API Direct recorded the highest concentration of failed transactions.
- SME merchants showed the highest failure rate, reaching approximately 11.06% when the SME segment was selected.

## Recommendation

PayStream should prioritise investigation of API Direct failures affecting SME merchants and examine operational or technical changes around the Week 8–9 period. Ongoing monitoring should also be used to identify unusual increases in payment failures earlier.

---

# Power BI Dashboard

## Download

You can download and explore the interactive Power BI dashboard below.

📥 **[Download the Power BI Dashboard](PayStream_Payment_Failure_Analysis.pbix)**

---

## Dashboard Preview

### Executive Dashboard

![Executive Dashboard](Executive_Dashboard.png)
<img width="701" height="392" alt="Screenshot 2026-07-28 195936" src="https://github.com/user-attachments/assets/06bc2ab9-fc4f-4d3d-9975-8aeffe9fe22d" />

---

### Root Cause Analysis

![Root Cause Analysis](Root_Cause_Analysis.png)
<img width="700" height="396" alt="Screenshot 2026-07-28 200404" src="https://github.com/user-attachments/assets/e1f5774a-5553-4cbe-8591-3fb996c07125" />
