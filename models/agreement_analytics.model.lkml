connection: "vistex_bq_ldata"

# include all the views
include: "/views/**/*.view"

datagroup: agreement_analytics_default_datagroup {
  # sql_trigger: SELECT MAX(id) FROM etl_log;;
  max_cache_age: "1 hour"
}

persist_with: agreement_analytics_default_datagroup
explore: agmt_exp{
  label: "Agreement Analytics"
}
persist_with: agreement_analytics_default_datagroup
explore: open_requests{
  label: "Open Requests"
}

# explore: automl_forecast {}

# explore: automl_input1 {}

# explore: connection_reg_r3 {}

# explore: cust_prod_rates_new {}

# explore: cust_rates_new {}

# explore: customer_product_rates {}

# explore: customer_rates {}

# explore: ldata_insert {}

# explore: material_rates {}

# explore: material_rates_new {}

# explore: reb_sales_new {}

# explore: tr_data_sales {}
