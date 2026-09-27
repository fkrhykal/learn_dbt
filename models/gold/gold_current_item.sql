with counted_row as (
    select
        *,
        row_number()
            over (partition by id order by updated_at desc)
            as row_order
    from
        {{ ref('bronze_item') }}
)

select *
from
    counted_row
where
    row_order = 1
