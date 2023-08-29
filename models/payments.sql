SELECT
    id_pay
    ,id_order
    ,p.date_created AS payment_date
    ,m_amount AS payment_amount
    ,dim_type AS payment_type
FROM `TillerProject.payment_data` p