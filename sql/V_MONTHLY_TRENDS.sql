SELECT
    YEAR(ORDER_DATE)                        AS ORDER_YEAR,
    MONTH(ORDER_DATE)                       AS ORDER_MONTH,
    SUM(SALES)                              AS MONTHLY_REVENUE,
    SUM(PROFIT)                             AS MONTHLY_PROFIT,
    COUNT(ORDER_ID)                         AS ORDER_COUNT,
    AVG(LATE_DELIVERY_RISK)                 AS AVG_LATE_RISK,
    SUM(SUM(SALES)) OVER (
        ORDER BY YEAR(ORDER_DATE),
                 MONTH(ORDER_DATE)
    )                                       AS RUNNING_REVENUE,
    ROUND((SUM(SALES) - LAG(SUM(SALES)) OVER (
        ORDER BY YEAR(ORDER_DATE),
                 MONTH(ORDER_DATE))
    ) / NULLIF(LAG(SUM(SALES)) OVER (
        ORDER BY YEAR(ORDER_DATE),
                 MONTH(ORDER_DATE)
    ), 0) * 100, 2)                         AS MOM_GROWTH_PCT
FROM "V_ORDERS_MASTER"
GROUP BY YEAR(ORDER_DATE), MONTH(ORDER_DATE)
