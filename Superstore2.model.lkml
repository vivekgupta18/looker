connection:  "vistex_bq_ldata"

include: "/views/*.view.lkml"                # include all views in the views/ folder in this project
# include: "/**/*.view.lkml"                 # include all views in this project
# include: "my_dashboard.dashboard.lookml"   # include a LookML dashboard called my_dashboard

# # Select the views that should be a part of this model,
# # and define the joins that connect them together.

datagroup: rebate_what_if_project_default_datagroup {
  # sql_trigger: SELECT MAX(id) FROM etl_log;;
  max_cache_age: "1 hour"
}

access_grant: can_view_customer_name {
  user_attribute: customername
  allowed_values: [ "yes" ]
}

explore: superstore_orders {

 # access_filter: {
  #  field: city
  #  user_attribute: city
  #}
  label: "SUPERSTORE"
  join: superstore_people {
    sql_on: ${superstore_orders.region}=${superstore_people.region} ;;
    relationship: many_to_one
    type: left_outer
  }

  join: superstore_returns {
    sql_on: ${superstore_orders.order_id}=${superstore_returns.order_id}} ;;
    relationship: many_to_one
    type: left_outer
  }

  }

  explore: superstore_people {}

  explore: looker_security_test_view {

    access_filter:
    {
      field:name
      user_attribute: email



    }
  }

  explore: derived_table_sql_runner {}
