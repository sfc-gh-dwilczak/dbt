{% snapshot snp_tasty_bytes__menu_v1 %}
{{ generate_snapshot_sql(
    model=ref('src_tasty_bytes__menu'),
    keys=['menu_item_id']
) }}
{% endsnapshot %}
