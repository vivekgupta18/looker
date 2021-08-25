connection: "vistex_bq_ldata"

# include all the views
include: "/Views/Agreement_Analytics_Views/*.view"

# include dashboards

include: "/Dashboards/Agreement_Analytics/*"

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

explore: agmt_exp{
  # required_access_grants: [agreement_expiry_grant]
  label: "Agreement Expiry"
}
explore: agmt_requests{
  label: "Agreement Requests"
}
