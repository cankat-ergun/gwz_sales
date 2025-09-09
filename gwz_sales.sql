-- Günlük ciro ve satın alma maliyetini hesaplayan sorgu
SELECT
    date_date,  -- Gün bilgisi (tarih sütunu)

    -- Günlük toplam ciro (turnover)
    ROUND(SUM(turnover), 2) AS turnover_per_day,

    -- Günlük toplam satın alma maliyeti (purchase cost)
    ROUND(SUM(purchase_cost), 2) AS purchase_cost_per_day

FROM
    `data-analytics-469406.course17.gwz_sales_17`  -- Satış verilerinin bulunduğu tablo

GROUP BY
    date_date  -- Her günü ayrı ayrı grupla

ORDER BY
    date_date; -- Tarihe göre sıralı getir (kronolojik görünüm)
-- Test comment to see if file changes