SELECT
    id AS customer_id,
    name,
    city
FROM {{ source('silver', 'customers') }}
