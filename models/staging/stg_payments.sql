select
  id as payment_id,
  orderid as order_id,
  amount / 100 as payment_total
   from raw.stripe.payment
   where status = 'success'
