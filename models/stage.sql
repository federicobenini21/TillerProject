WITH stage_orders_lines AS (
    SELECT * FROM {{ref ('orders_lines')}}
)
,stg_orders AS (
SELECT
    id_order
    ,id_store
    ,date_opened AS start_date
    ,date_closed
    ,m_nb_customer AS number_customers
    ,m_cached_payed AS total_payed
    ,m_cached_price AS total_price
    ,id_table
    ,id_waiter
    ,id_device
FROM `TillerProject.order_data`
WHERE m_cached_payed > 0 AND m_cached_price > 0
)


SELECT *
FROM stg_orders o
LEFT JOIN stage_orders_lines ol USING (id_order)
ORDER BY id_order