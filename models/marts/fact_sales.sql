SELECT
    s.id,
    c.name,
    c.city,
    s.product,
    s.quantity,
    s.total_value
FROM {{ ref('stg_sales') }} s
JOIN {{ ref('stg_customers') }} c
    ON s.customer_id = c.customer_id
