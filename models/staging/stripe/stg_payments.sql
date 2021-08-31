select 
    id as pay,
    orderid as order_id,
    paymentmethod as payment_method,
    status,
    -- amount from cents to dollars
    amount/100 as amount,
    created as created_at
from raw.stripe.payment