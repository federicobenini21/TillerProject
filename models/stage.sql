{{
  config(
    materialized='table'
  )
}}
WITH stage_payments AS (
    SELECT * FROM {{ref ('payments')}}
)
,stage_orders_lines AS (
    SELECT * FROM {{ref ('orders_lines')}}
)
,stg_orders AS (
    SELECT * FROM {{ref ('orders')}}
)
,stg_stores AS (
    SELECT * FROM {{ref ('stores')}}
)


SELECT *
FROM stg_orders o
LEFT JOIN stage_orders_lines ol USING (id_order)
LEFT JOIN stage_payments p USING (id_order)
LEFT JOIN stg_stores s USING (id_store)   
ORDER BY id_order