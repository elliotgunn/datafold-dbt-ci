with payments as (

    select * from {{ ref('stg_payments')}}
),

orders as (

    select * from {{ ref('stg_orders')}}
    where order_date >= '2018-03-01' and order_date <= '2018-03-31'

),

order_payments as (

    select 
        order_id,
        sum(case when status = 'success' then amount end) as amount

    from payments
    group by order_id

),

final as (

    select
        orders.order_id,
        orders.customer_id,
        orders.order_date,
        coalesce(order_payments.amount, 0) as amount

    from orders 

    left join order_payments using (order_id)

)

select * from final
