select p.order_id as order_id,
    o.customer_id,
    sum(p.payment_total) as payment_total,
    min(order_date) as order_date
    from {{ ref('stg_payments') }} p
left join {{ ref('stg_orders') }}  o on p.order_id = o.order_id
left join {{ ref('stg_customers') }} c on o.customer_id = c.customer_id
group by 1,2
