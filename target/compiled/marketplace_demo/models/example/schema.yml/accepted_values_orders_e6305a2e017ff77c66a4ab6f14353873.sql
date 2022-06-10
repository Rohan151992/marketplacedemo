
    
    

with all_values as (

    select
        order_status as value_field,
        count(*) as n_records

    from "marketplace_demo"."public"."orders"
    group by order_status

)

select *
from all_values
where value_field not in (
    'completed','canceled','unfulfilled'
)


