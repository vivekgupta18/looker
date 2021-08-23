view: looker_security_test_view {
  sql_table_name: `vistex-analytics.LOOKER_2021.LOOKER_SECURITY_TEST_VIEW`
    ;;

  dimension: email {
    type: string
    sql: ${TABLE}.EMAIL ;;
  }

  dimension: name {
    type: string
    sql: ${TABLE}.NAME ;;
  }

  measure: count {
    type: count
    drill_fields: [name]
  }
}
