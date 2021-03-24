select
  id as payment_id,
  orderid as order_id,
  amount / 100 as payment_total
  -- converts to dollars from cents
   from {{ source('stripe', 'payment') }}
   where status = 'success'
-- some payments have status fail, don't need those