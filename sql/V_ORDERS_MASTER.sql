SELECT
    "Order Id"                    AS ORDER_ID,
    "Customer Id"                 AS CUSTOMER_ID,
    "Customer Segment"            AS CUSTOMER_SEGMENT,
    "Product Card Id"             AS PRODUCT_ID,
    "Product Name"                AS PRODUCT_NAME,
    "Category Name"               AS CATEGORY_NAME,
    "Sales"                       AS SALES,
    "Order Profit Per Order"      AS PROFIT,
    "Order Region"                AS ORDER_REGION,
    "Market"                      AS MARKET,
    "Delivery Status"             AS DELIVERY_STATUS,
    "Late_delivery_risk"          AS LATE_DELIVERY_RISK,
    "Shipping Mode"               AS SHIPPING_MODE,
    "order date (DateOrders)"     AS ORDER_DATE
FROM "T_DATACO_RAW"
