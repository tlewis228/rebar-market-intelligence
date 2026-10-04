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

## Data Limitations

The analysis is observational and historical. A relationship between construction spending and rebar prices does not necessarily mean that changes in one variable directly cause changes in the other.

Other factors that can affect rebar prices—including raw material costs, energy prices, supply conditions, imports, tariffs, interest rates, and broader economic conditions—are not directly included in this two-dataset analysis.

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

## Results & Key Findings

### Overall Relationship

The analysis found a weak relationship between monthly changes in total construction spending and monthly changes in rebar prices.

The correlation between same-month changes was approximately **0.091**, indicating a very weak positive relationship.

### Lead/Lag Analysis

The analysis tested whether changes in one market measure tended to occur before changes in the other.

- **Construction spending leading rebar prices:** 0.059
- **Rebar prices leading construction spending:** 0.087

Both relationships were very weak, indicating that neither measure consistently led the other during the period analyzed.

### Increasing vs. Decreasing Construction Spending

The relationship was also examined separately during periods when construction spending increased and decreased.

- **Increasing construction spending:** 0.068
- **Decreasing construction spending:** 0.044

Both correlations were below 0.10, indicating a weak relationship in both conditions.

### Significant Historical Periods

Five periods were identified using the 90th-percentile threshold for significant monthly changes:

| Period | Construction Spending | Rebar PPI | Construction Change | Rebar Change |
|---|---:|---:|---:|---:|
| Mar. 2004 | 73,238 | 142.400 | +2.01% | +14.19% |
| Nov. 2008 | 86,093 | 198.500 | -1.83% | -10.89% |
| Mar. 2021 | 127,095 | 240.900 | +6.88% | +13.75% |
| Mar. 2022 | 148,686 | 353.839 | +3.67% | +13.90% |
| Mar. 2023 | 157,866 | 364.557 | +2.34% | +11.74% |

Four of the five significant periods showed construction spending and rebar prices moving in the same direction. November 2008 was the exception, with both measures experiencing significant declines.

### Overall Finding

Construction spending provides useful context for understanding overall construction market conditions, but the analysis does not support using monthly changes in total construction spending alone as a strong indicator of monthly rebar price movements.

The results suggest that construction activity and rebar prices can move in the same direction during certain significant periods, but their month-to-month relationship is consistently weak. Additional market factors should therefore be considered when evaluating rebar price movements.


## Limitations

This analysis is observational and describes historical relationships between construction spending and rebar prices. The results should not be interpreted as evidence that changes in construction spending directly cause changes in rebar prices.

The analysis does not directly account for other factors that can influence rebar prices, including:

- Raw material costs
- Energy prices
- Supply conditions
- Imports and exports
- Tariffs
- Interest rates
- Broader economic conditions
- Other construction market factors

The analysis also focuses on total U.S. construction spending rather than specific construction sectors, regions, or individual projects.

## Conclusion

Construction spending provides useful context for understanding overall construction market conditions, but the analysis does not support using monthly changes in total construction spending alone as a strong indicator of monthly rebar price movements.

Although construction activity and rebar prices moved in the same direction during several significant historical periods, the overall month-to-month relationships were consistently weak.

For market intelligence purposes, construction spending may be more useful as one component of a broader market-monitoring approach rather than as a standalone predictor of rebar price movements.
