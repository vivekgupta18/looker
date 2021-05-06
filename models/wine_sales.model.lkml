connection: "vistex_bq_ldata"

# include all the views
include: "/views/**/*.view"

datagroup: wine_sales_default_datagroup {
  # sql_trigger: SELECT MAX(id) FROM etl_log;;
  max_cache_age: "1 hour"
}

persist_with: wine_sales_default_datagroup

explore: liquor_sales {
  label: "wines_sales_explore"
}
