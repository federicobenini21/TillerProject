SELECT
    id_order_line
    ,id_order
    ,date_opended AS lines_open_date
    ,ol.date_created AS lines_creation_date
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
FROM `TillerProject.order_line` ol
RIGHT JOIN {{ref("orders")}} o USING (id_order)