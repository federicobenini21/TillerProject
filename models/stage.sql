WITH stg_orders AS (
SELECT
    id_order
    ,id_store
    ,date_opened
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


SELECT
    id_order
    ,id_store
    ,date_opened
    ,date_closed
    ,number_customers
    ,total_payed
    ,total_price
    ,id_table
    ,id_waiter
    ,id_device 
    ,id_order_line
    ,date_opended AS line_date_opened
    ,date_created
    ,m_quantity AS qty
    ,m_unit_price AS unit_price
    ,m_unit_price_exc_vat AS unit_price_exc_vat
    ,m_total_price_inc_vat AS tot_price_inc_vat
    ,m_total_price_exc_vat AS tot_price_exc_vat
    ,m_tax_percent AS tax_percent
    ,m_discount_amount AS discount_amount
    ,dim_type AS line_type
    ,dim_category AS line_category
    ,dim_name AS line_name 
FROM stg_orders o
LEFT JOIN `TillerProject.order_line` ol USING (id_order)
ORDER BY id_order