{% snapshot snp_tasty_bytes__city_v1 %}
{{ generate_snapshot(
    model=ref('src_tasty_bytes__city'),
    keys=['city_id']
) }}
{% endsnapshot %}
