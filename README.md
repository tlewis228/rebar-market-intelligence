# Rebar Market Intelligence: Construction Spending & Rebar Price Analysis

## Project Overview

This project analyzes the historical relationship between U.S. construction spending and rebar prices using monthly data from January 1993 through July 2026.

The analysis combines construction spending data from the U.S. Census Bureau with the Producer Price Index (PPI) for fabricated structural metal bar joists and concrete reinforcing bars from the U.S. Bureau of Labor Statistics/FRED.

The goal is to determine whether construction activity can provide useful insight into rebar market conditions and whether changes in construction spending are associated with changes in rebar prices.

---

## Business Problem

Construction and rebar markets are influenced by changing demand, costs, and broader economic conditions. Understanding whether construction activity is associated with rebar price movements can help provide market context for businesses involved in construction and reinforcing steel.

This project examines whether total U.S. construction spending can be used as an indicator of rebar price behavior and whether the relationship is stronger over the long term or in short-term monthly movements.

---

## Project Objective

The objective of this analysis is to:

* Examine long-term changes in U.S. construction spending
* Examine long-term changes in rebar prices
* Measure the relationship between construction spending and rebar prices
* Compare monthly changes in both variables
* Evaluate potential lead-lag relationships
* Determine whether the relationship changes when construction spending increases or decreases
* Identify historical periods with significant movements in both variables
* Evaluate whether construction spending can serve as a useful market indicator for the rebar industry

---

## Business Questions

### BQ1

How has total U.S. construction spending changed over the period analyzed?

### BQ2

How have rebar prices changed over the period analyzed?

### BQ3

Is there a measurable relationship between total construction spending and rebar prices?

### BQ4

How strong is the relationship between changes in construction spending and changes in rebar prices?

### BQ5

Do changes in construction spending tend to occur before, after, or at the same time as changes in rebar prices?

### BQ6

Does the relationship change when construction spending increases versus decreases?

### BQ7

What historical periods show significant changes in both construction spending and rebar prices, and what patterns are observed?

### BQ8

What does the historical relationship indicate about the usefulness of construction activity as a market indicator for the rebar industry?

---

## Key Findings

* Total U.S. construction spending increased approximately **530.60%** from January 1993 to July 2026.
* The Rebar PPI increased approximately **220.58%** over the same period.
* Construction spending and rebar PPI have a strong positive correlation in their overall levels of approximately **0.902**.
* The correlation between monthly changes is much weaker at approximately **0.091**.
* The one-month lead-lag relationships are also weak, with correlations of approximately **0.059** when construction spending leads rebar prices and **0.087** when rebar prices lead construction spending.
* The relationship remains weak when construction spending is separated into increasing and decreasing periods, with correlations of approximately **0.068** and **0.044**, respectively.
* Five significant periods showed large movements in both construction spending and rebar prices. Four moved upward and one moved downward.

### Overall Conclusion

The analysis indicates that construction spending is useful as a broad indicator of long-term conditions in the rebar market, but it is not a strong short-term predictor of rebar price movements.

The strong correlation between the overall levels of construction spending and rebar PPI suggests that both variables have followed similar long-term upward trends. However, the much weaker correlation between monthly changes indicates that short-term movements in construction spending alone do not explain changes in rebar prices well.

The lead-lag analysis also provides little evidence of a consistent one-month timing relationship, and separating periods of increasing and decreasing construction spending does not materially strengthen the relationship.

Overall, construction spending can provide valuable market context for the rebar industry, but it should be considered alongside other factors such as material costs, supply conditions, imports and exports, tariffs, energy prices, interest rates, and broader economic conditions when evaluating rebar pricing.

---

## Tools Used

* **Python** — Primary language used for data analysis and calculations
* **Jupyter Notebook** — Analysis environment and documentation
* **Pandas** — Data cleaning, transformation, and analysis
* **NumPy** — Numerical calculations
* **Matplotlib** — Data visualization
* **MySQL / MySQL Workbench** — Data storage, organization, validation, and exploratory SQL queries
* **Microsoft Excel / Google Sheets** — Initial data preparation and cleaning
* **GitHub** — Version control and portfolio presentation

---

## Documentation

Additional project documentation is organized in the repository:

* **[Data Documentation](data/README.md)** — Data sources, preparation, final dataset, and data availability
* **[Methodology](docs/methodology.md)** — Data preparation, analysis methods, limitations, and analytical approach
* **[Findings](docs/findings.md)** — Detailed findings and results from the eight business questions

---

## Project Structure

```text
rebar-market-intelligence/
│
├── README.md
│
├── data/
│   └── README.md
│
├── sql/
│   └── analysis_queries.sql
│
├── notebooks/
│   └── rebar_market_intelligence_analysis.ipynb
│
├── visualizations/
│
└── docs/
    ├── findings.md
    └── methodology.md
```

---

## Data Sources

**U.S. Census Bureau — Construction Spending**

Monthly U.S. construction spending data used to measure total construction activity.

**U.S. Bureau of Labor Statistics / FRED — WPU1074051**

Producer Price Index for fabricated structural metal bar joists and concrete reinforcing bars, used as the rebar price indicator.

The final matched analysis dataset contains **403 monthly observations from January 1993 through July 2026**.

