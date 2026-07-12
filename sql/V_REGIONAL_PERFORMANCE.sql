SELECT
    ORDER_REGION,
    SUM(SALES)                              AS TOTAL_REVENUE,
    SUM(PROFIT)                             AS TOTAL_PROFIT,
    (SUM(PROFIT) / NULLIF(SUM(SALES),0)) 
        * 100                               AS PROFIT_MARGIN_PCT,
    AVG(LATE_DELIVERY_RISK) * 100           AS LATE_ORDER_RATE_PCT,
    RANK() OVER (
        ORDER BY SUM(SALES) DESC
    )                                       AS REVENUE_RANK
FROM "V_ORDERS_MASTER"
GROUP BY ORDER_REGION
