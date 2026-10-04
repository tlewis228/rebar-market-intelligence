# Methodology

## Rebar Market Intelligence: Construction Spending & Rebar Price Analysis

This document describes the data preparation, analysis methods, and calculations used to examine the historical relationship between U.S. construction spending and rebar prices.
## Data Sources

The analysis uses two monthly U.S. datasets:

### 1. Construction Spending

- **Source:** U.S. Census Bureau
- **Measure:** Total Construction Spending
- **Frequency:** Monthly
- **Coverage:** January 1993 through July 2026
- **Unit:** Millions of dollars

### 2. Rebar Prices

- **Source:** U.S. Bureau of Labor Statistics (BLS) / FRED
- **Series:** WPU1074051
- **Measure:** Producer Price Index for Fabricated Structural Metal Bar Joists and Concrete Reinforcing Bars
- **Frequency:** Monthly
- **Coverage:** January 1993 through July 2026 used for the matched analysis

## Data Preparation

The two datasets were prepared in Google Sheets before being imported into MySQL.

The preparation process included:

1. Cleaning the construction spending data.
2. Removing formatting such as commas from numeric construction spending values so they could be analyzed as numbers.
3. Standardizing the date fields.
4. Matching the construction spending and rebar price data by month.
5. Creating a final matched dataset containing 403 monthly observations.
6. Using the matched dataset for statistical analysis and SQL queries.

The final analysis table contains the following fields:

| Field | Description |
|---|---|
| `Date` | Monthly observation date |
| `Total_Construction` | Total U.S. construction spending |
| `Rebar_PPI` | Rebar-related Producer Price Index |

The final matched dataset covers January 1993 through July 2026.

## Analysis Methods

The analysis was designed to evaluate whether changes in U.S. construction spending were associated with changes in rebar prices over the historical period.

### Monthly Percentage Changes

Monthly percentage changes were calculated for both construction spending and the rebar PPI.

The calculation used was:

\[
\text{Monthly Change (\%)} =
\frac{\text{Current Month} - \text{Previous Month}}
{\text{Previous Month}} \times 100
\]

This allowed the analysis to compare month-to-month movements rather than relying only on absolute values.

### Correlation Analysis

Correlation was used to measure the strength and direction of the relationship between construction spending and rebar prices.

The analysis examined:

- The relationship between monthly changes in construction spending and rebar prices.
- Whether construction spending changes were associated with rebar price changes in the same month.
- Whether construction spending changes appeared to lead rebar price changes.
- Whether rebar price changes appeared to lead construction spending changes.

Correlation values closer to 1 or -1 indicate a stronger relationship, while values closer to 0 indicate a weaker relationship.

### Increasing vs. Decreasing Construction Spending

The analysis separated months into two groups:

- Months when construction spending increased.
- Months when construction spending decreased.

The correlation between construction spending changes and rebar price changes was then compared between the two groups.

This was used to determine whether the relationship behaved differently during periods of increasing versus decreasing construction activity.

### Significant Historical Periods

Significant periods were identified by examining large monthly percentage changes in both construction spending and rebar prices.

A 90th-percentile threshold was used to identify unusually large changes.

The analysis then compared the construction spending and rebar price movements during the identified periods to determine whether the two measures moved in the same or opposite direction.

### SQL Analysis

MySQL Workbench was used to validate and summarize the final matched dataset.

SQL analysis included:

- Overall market statistics.
- Annual construction spending and rebar price summaries.
- The top 10 years by average construction spending.

Additional statistical analysis and calculations were performed using Google Sheets and Python/Jupyter Notebook.
