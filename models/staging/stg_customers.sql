select
    id,
    first_name,
    last_name
from {{ source("snowflake_raw_jaffle_shop", "customers") }}
