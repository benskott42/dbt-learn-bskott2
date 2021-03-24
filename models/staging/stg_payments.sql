select
  orderid as order_id,
  (sum(amount))/ 100 as payment_total,
  min(created) as order_date
   from raw.stripe.payment
   where status = 'success'
  group by 1