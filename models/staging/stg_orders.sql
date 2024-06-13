select
    id,
    user_id as customer_id,
    status,
    order_date
from {{ source("snowflake_raw_jaffle_shop", "orders") }}
