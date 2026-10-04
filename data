# Data

This folder documents the datasets used in the Rebar Market Intelligence project.

## Data Sources

### Construction Spending

**Source:** U.S. Census Bureau
**Dataset:** Construction Spending — Total Construction
**Frequency:** Monthly
**Analysis period:** January 1993 – July 2026
**Unit:** Millions of dollars

### Rebar Prices

**Source:** U.S. Bureau of Labor Statistics (BLS) / FRED
**Series:** WPU1074051
**Measure:** Producer Price Index for Fabricated Structural Metal Bar Joists and Concrete Reinforcing Bars
**Frequency:** Monthly
**Analysis period:** January 1993 – July 2026

## Final Analysis Dataset

The two datasets were matched by month to create the final analysis dataset.

The final dataset contains **403 monthly observations** with the following fields:

| Field                | Description                        |
| -------------------- | ---------------------------------- |
| `Date`               | Monthly observation date           |
| `Total_Construction` | Total U.S. construction spending   |
| `Rebar_PPI`          | Rebar-related Producer Price Index |

## Data Preparation

The source data was initially cleaned and prepared in Google Sheets before being imported into MySQL for storage, organization, validation, and exploratory querying. The final analysis was performed in Python using Jupyter Notebook.

Preparation included:

* Standardizing dates
* Cleaning numeric values
* Removing commas from construction spending values
* Matching observations by month
* Verifying the final date range and observation count
* Calculating monthly percentage changes in Python

## Data Availability

The original source datasets are not stored in this repository. They are publicly available from the U.S. Census Bureau and BLS/FRED.

The project uses publicly available source data for analysis and portfolio demonstration purposes.
