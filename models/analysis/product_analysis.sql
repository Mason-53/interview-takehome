select
    p.origin,
    (avg((v.msrp - v.price) / v.price) * 100)::decimal(5,2) as "profit_margin_%"
from {{ ref('stg_rugs_usa_parent') }} as p
inner join {{ ref('stg_rugs_usa_variant') }} as v on p.p_id = v.p_id
group by 1
