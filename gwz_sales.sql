-- Günlük ciroyu hesaplayan sorgu
SELECT
    date_date,
    ROUND(SUM(turnover), 2) AS turnover_per_day
FROM
    `data-analytics-469406.course17.gwz_sales_17`
GROUP BY
    date_date
ORDER BY
    date_date;
