-- Rebar Market Intelligence
-- Construction Spending & Rebar Price Analysis
--
-- MySQL was used for data storage, organization,
-- validation, and basic exploratory querying.
-- Primary statistical analysis was performed in Python/Jupyter Notebook.


-- ============================================================
-- 1. Confirm the number of records
-- ============================================================

SELECT COUNT(*) AS total_records
FROM market_data;


-- ============================================================
-- 2. Check the date range
-- ============================================================

SELECT
    MIN(date) AS start_date,
    MAX(date) AS end_date
FROM market_data;


-- ============================================================
-- 3. Review the stored data
-- ============================================================

SELECT *
FROM market_data
LIMIT 10;


-- ============================================================
-- 4. Check for missing construction spending values
-- ============================================================

SELECT COUNT(*) AS missing_construction
FROM market_data
WHERE total_construction IS NULL;


-- ============================================================
-- 5. Check for missing rebar PPI values
-- ============================================================

SELECT COUNT(*) AS missing_rebar_ppi
FROM market_data
WHERE rebar_ppi IS NULL;


-- ============================================================
-- 6. Review the range of construction spending
-- ============================================================

SELECT
    MIN(total_construction) AS min_construction,
    MAX(total_construction) AS max_construction,
    AVG(total_construction) AS avg_construction
FROM market_data;


-- ============================================================
-- 7. Review the range of rebar PPI
-- ============================================================

SELECT
    MIN(rebar_ppi) AS min_rebar_ppi,
    MAX(rebar_ppi) AS max_rebar_ppi,
    AVG(rebar_ppi) AS avg_rebar_ppi
FROM market_data;


-- ============================================================
-- 8. Overall dataset summary
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
-- 9. Annual summary for data exploration
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
-- 10. Review the most recent observations
-- ============================================================

SELECT *
FROM market_data
ORDER BY date DESC
LIMIT 10;


-- ============================================================
-- 11. Identify years with the highest average construction spending
--     for exploratory review
-- ============================================================

SELECT
    YEAR(date) AS year,
    ROUND(AVG(total_construction), 2) AS avg_construction
FROM market_data
WHERE YEAR(date) < 2026
GROUP BY YEAR(date)
ORDER BY avg_construction DESC
LIMIT 10;
