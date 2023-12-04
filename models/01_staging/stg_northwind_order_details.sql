with
    src as (
        select
            order_id
            , product_id
            , cast(unit_price as numeric) as unit_price
            , quantity
            , cast(discount as numeric) as discount
        from {{ source('raw_northwind', 'order_details') }}
    )

select *
from src
