-- ============================================================
-- Rebar Market Intelligence
-- Construction Spending & Rebar Price Analysis
-- ============================================================

-- ============================================================
-- Query #8: Basic Market Statistics
-- Purpose:
-- Provides an overall statistical summary of the construction
-- spending and rebar PPI data.
-- ============================================================

SELECT
    COUNT(*) AS total_months,
    MIN(date) AS start_date,
    MAX(date) AS end_date,
    MIN(total_construction) AS min_construction,
    MAX(total_construction) AS max_construction,
    AVG(total_construction) AS avg_construction,
    MIN(rebar_ppi) AS min_rebar_ppi,
    MAX(rebar_ppi) AS max_rebar_ppi,
    AVG(rebar_ppi) AS avg_rebar_ppi
FROM market_data;


-- ============================================================
-- Query #9: Annual Market Summary
-- Purpose:
-- Summarizes average, minimum, and maximum construction
-- spending and rebar PPI for each year.
-- ============================================================

SELECT
    YEAR(date) AS year,
    ROUND(AVG(total_construction), 2) AS avg_construction,
    ROUND(AVG(rebar_ppi), 2) AS avg_rebar_ppi,
    ROUND(MIN(total_construction), 2) AS min_construction,
    ROUND(MAX(total_construction), 2) AS max_construction
FROM market_data
GROUP BY YEAR(date)
ORDER BY year;


-- ============================================================
-- Query #11: Top 10 Years by Average Construction Spending
-- Purpose:
-- Identifies the 10 years with the highest average monthly
-- construction spending.
-- Excludes 2026 because the year is incomplete.
-- ============================================================

SELECT
    YEAR(date) AS year,
    ROUND(AVG(total_construction), 2) AS avg_construction
FROM market_data
WHERE YEAR(date) < 2026
GROUP BY YEAR(date)
ORDER BY avg_construction DESC
LIMIT 10;
