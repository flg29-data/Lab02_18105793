SELECT
    id,
    customer_id,
    product,
    quantity,
    price,
    quantity * price AS total_value
FROM {{ source('silver', 'sales') }}
