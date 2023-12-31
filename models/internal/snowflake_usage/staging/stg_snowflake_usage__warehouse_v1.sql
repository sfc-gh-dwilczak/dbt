with
    source as (
        select *
        from {{ ref('snp_snowflake_usage__warehouse_v1') }}
        {{ filter_snapshot_current() }}
    ),

    renamed as (
        select
            start_time,
            end_time,
            warehouse_id,
            warehouse_name,
            credits_used,
            credits_used_compute,
            credits_used_cloud_services,
            dbt_scd_uk as dbt_unique_key,
            dbt_scd_id,
            dbt_updated_at,
            dbt_valid_from,
            dbt_valid_to,
            start_time as dwh_effective_from
        from
            source
    )

select * from renamed
