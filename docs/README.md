# Rebar Market Intelligence: Construction Spending & Rebar Price Analysis

## Project Overview

This project analyzes the historical relationship between U.S. construction spending and rebar prices to better understand construction market conditions and their potential relationship to the rebar industry.

Using monthly data from the U.S. Census Bureau and the Bureau of Labor Statistics (BLS), the analysis examines changes in total U.S. construction spending alongside changes in the Producer Price Index (PPI) for fabricated structural metal products and concrete reinforcing bars.

The goal is to identify historical trends, relationships, timing patterns, and significant periods of change that can provide useful market intelligence for the rebar industry.

## Business Problem

Rebar demand and pricing are influenced by conditions within the broader construction market. Understanding whether changes in construction activity are associated with changes in rebar prices could provide useful information for evaluating historical market conditions.

This project investigates whether total U.S. construction spending can serve as a useful historical market indicator when analyzed alongside rebar price movements.

The analysis focuses on identifying relationships and patterns rather than establishing a causal relationship between construction spending and rebar prices.

## Project Objective

The objective of this project is to analyze historical monthly construction spending and rebar price data to determine:

- How construction spending has changed over time
- How rebar prices have changed over time
- Whether the two variables have a measurable relationship
- How strong that relationship is
- Whether changes in construction spending and rebar prices show a consistent timing pattern
- Whether their relationship differs during periods of increasing versus decreasing construction activity
- What significant historical periods reveal about the relationship between the two markets
- Whether construction activity provides useful historical market intelligence for the rebar industry

## Business Questions

The analysis is structured around eight business questions. Each question builds toward the overall objective of understanding the relationship between construction activity and rebar prices.

### BQ1. How has total U.S. construction spending changed over the period analyzed?

This establishes the overall trend in construction activity.

### BQ2. How have rebar prices changed over the period analyzed?

This establishes the overall trend in rebar prices.

### BQ3. Is there a measurable relationship between total construction spending and rebar prices?

This determines whether the two variables are historically associated.

### BQ4. How strong is the relationship between changes in construction spending and changes in rebar prices?

This measures the strength of the relationship while focusing on changes rather than only the overall levels.

### BQ5. Do changes in construction spending tend to occur before, after, or at the same time as changes in rebar prices?

This examines whether there is a consistent timing relationship between construction activity and rebar prices.

### BQ6. Does the relationship between construction spending and rebar prices change when construction spending increases versus when it decreases?

This examines whether the relationship behaves differently during periods of increasing and decreasing construction activity.

### BQ7. What historical periods show significant changes in both construction spending and rebar prices, and what patterns are observed during those periods?

This identifies notable periods that may provide additional context for the relationship between the two markets.

### BQ8. What does the historical relationship between construction spending and rebar prices indicate about the usefulness of construction activity as a potential market indicator for the rebar industry?

This brings the findings from the previous questions together to address the overall business problem.

## Key Findings

- Construction spending and rebar prices showed long-term changes across the historical period analyzed.
- Monthly changes in construction spending and rebar prices generally showed a weak linear relationship.
- The same-month correlation between construction spending and rebar price changes was approximately **0.091**.
- Lead/lag correlations were also weak, with construction leading rebar at approximately **0.059** and rebar leading construction at approximately **0.087**.
- The relationship remained weak when construction spending increased (**0.068**) or decreased (**0.044**).
- Five historical periods showed significant changes in both construction spending and rebar prices based on the 90th-percentile threshold.
- Four of the five significant periods had increases in both measures, while November 2008 showed significant decreases in both.

## Overall Conclusion

Construction spending provides useful context for understanding overall construction market conditions, but the analysis does not support using monthly changes in total construction spending alone as a strong indicator of monthly rebar price movements.

The results show that construction activity and rebar prices can move in the same direction during certain significant periods, but the monthly relationship between the two variables is consistently weak. This indicates that additional market factors should be considered when evaluating rebar pricing conditions.

## Tools Used

- **Microsoft Excel / Google Sheets** — Data preparation and initial analysis
- **MySQL Workbench** — Data storage and SQL analysis

## Project Structure

```text
rebar-market-intelligence/
│
├── README.md
│
├── data/
│   ├── raw/
│   └── processed/
│
├── sql/
│   ├── 01_data_cleaning.sql
│   ├── 02_business_questions.sql
│   └── 03_analysis_queries.sql
│
├── notebooks/
│
├── visualizations/
│
└── docs/
    ├── methodology.md
    ├── business_questions.md
    └── findings.md


