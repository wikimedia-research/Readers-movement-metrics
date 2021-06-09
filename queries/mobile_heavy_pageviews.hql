--SELECT
--    DATE_FORMAT(date, 'YYYY-MM-01') AS month,
--    SUM(mh_views) AS mh_pageviews
--FROM cchen.mh_pageviews_corrected
--WHERE        (year = {metrics_year} AND month = {metrics_cur_month})
--GROUP BY DATE_FORMAT(date, 'YYYY-MM-01')


SELECT
    CONCAT(year,'-',month,'-01') AS month,
    SUM(mh_views) AS mh_pageviews
FROM cchen.mh_pageviews_corrected
WHERE  (year = {metrics_year} AND month = {metrics_cur_month})
GROUP BY CONCAT(year,'-',month,'-01')