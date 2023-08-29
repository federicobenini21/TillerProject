SELECT
    id_pay
    ,id_order
    ,date_created
    ,m_amount AS payment_amount
    ,dim_type AS payment_type
FROM `TillerProject.payment_data`