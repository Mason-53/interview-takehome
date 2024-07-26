select
    p.category,
    p.color,
    count(distinct l.page_links) as page_views,
    count(distinct l.card_links) as card_views
from {{ ref('prep_rugs_usa_links') }} as l
inner join {{ ref('stg_rugs_usa_parent') }} as p on l.p_id = p.p_id
group by 1, 2
