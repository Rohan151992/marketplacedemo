
    
    

select
    order_trip_id as unique_field,
    count(*) as n_records

from "marketplace_demo"."public"."orders"
where order_trip_id is not null
group by order_trip_id
having count(*) > 1


