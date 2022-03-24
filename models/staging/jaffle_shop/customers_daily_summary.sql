select
    {{ dbt_utils.surrogate_key(['customer_id','order_date'])}} as ID,
    customer_id as customer_id,
    order_date as order_date,
    count(*) as count
from {{ ref('stg_orders')}}
group by 1,2,3