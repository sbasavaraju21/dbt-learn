select 
    id as pay,
    orderid as order_id,
    paymentmethod as payment_method,
    status,-- amount from cents to dollars
    {{ cents2dollars('amount')}} as amount,-- amount from cents to dollars
    created as created_at
from {{ source ('stripe', 'payment') }}

