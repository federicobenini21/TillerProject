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
WHERE m_cached_payed >= 0 AND m_cached_price >= 0
