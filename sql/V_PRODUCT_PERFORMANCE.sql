SELECT
    CATEGORY_NAME,
    PRODUCT_NAME,
    COUNT(ORDER_ID)                         AS ORDER_COUNT,
    SUM(SALES)                              AS TOTAL_REVENUE,
    SUM(PROFIT)                             AS TOTAL_PROFIT,
    (SUM(PROFIT) / NULLIF(SUM(SALES),0))
        * 100                               AS PROFIT_MARGIN_PCT,
    NTILE(4) OVER (
        ORDER BY SUM(PROFIT) DESC
    )                                       AS PROFIT_QUARTILE
FROM "V_ORDERS_MASTER"
GROUP BY CATEGORY_NAME, PRODUCT_NAME
