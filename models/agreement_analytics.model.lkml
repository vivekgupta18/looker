connection: "vistex_bq_ldata"

# include all the views
include: "/Views/Agreement_Analytics_Views/*.view"

# include dashboards

include: "/Agreement_Analytics_Dashboards/*"

include: "/Agreement_Explores.explore"
datagroup: agreement_analytics_default_datagroup {
  # sql_trigger: SELECT MAX(id) FROM etl_log;;
  max_cache_age: "1 hour"
}

# access_grant: agreement_expiry_grant {
#   user_attribute: company
#   allowed_values: ["Vistex"]
# }

persist_with: agreement_analytics_default_datagroup

# explore: agmt_exp{
#   required_access_grants: [agreement_expiry_grant]
#   label: "Agreement Expiry"
# }
# explore: agmt_requests{
#   label: "Agreement Requests"
# }

### Test commit

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
