-- PayStream Payment Failure Analysis
-- SQL analysis of 12 weeks of payment transaction data
-- Purpose: Identify payment failure patterns by payment method,
-- merchant type and week.

-- Query 1: Which payment method has the highest failure rate?

SELECT
    c3 AS payment_method,
    SUM(c5) AS total_failures,
    ROUND(
        SUM(c5) * 100.0 / SUM(c4), 2
    ) AS failure_rate_pct
FROM Transactions
WHERE c1 <> 'week'
GROUP BY c3
ORDER BY failure_rate_pct DESC;


-- Query 2: Which merchant type is most affected?

SELECT
    c2 AS merchant_type,
    SUM(c5) AS total_failures,
    ROUND(
        SUM(c5) * 100.0 / SUM(c4), 2
    ) AS failure_rate_pct
FROM Transactions
WHERE c1 <> 'week'
GROUP BY c2
ORDER BY failure_rate_pct DESC;


-- Query 3: Did payment failures increase suddenly or gradually?

SELECT
    c1 AS week,
    c3 AS payment_method,
    ROUND(
        SUM(c5) * 100.0 / SUM(c4), 2
    ) AS failure_rate_pct
FROM Transactions
WHERE c1 <> 'week'
GROUP BY c1, c3
ORDER BY CAST(c1 AS INTEGER), failure_rate_pct DESC;


-- Query 4: Which payment method and merchant type
-- combination is hardest hit?

SELECT
    c2 AS merchant_type,
    c3 AS payment_method,
    SUM(c5) AS total_failures,
    ROUND(
        SUM(c5) * 100.0 / SUM(c4), 2
    ) AS failure_rate_pct
FROM Transactions
WHERE c1 <> 'week'
GROUP BY c2, c3
ORDER BY failure_rate_pct DESC;
