with source as (
    select * from {{ source('snowflake_raw_stripe', 'payment') }}

),

renamed as (

    select
        id as payment_id,
        orderid as order_id,
        paymentmethod as payment_method,
        status,
        -- `amount` is currently stored in cents, so we convert it to dollars
        amount / 100 as amount,
        created

    from source

)

select * from renamed
