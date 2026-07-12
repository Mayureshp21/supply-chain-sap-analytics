SELECT
    ds          AS FORECAST_DATE,
    yhat        AS PREDICTED_REVENUE,
    yhat_lower  AS LOWER_BOUND,
    yhat_upper  AS UPPER_BOUND
FROM "T_FORECAST_30D_V2"
