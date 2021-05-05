view: superstore_returns {
  sql_table_name: `vistex-analytics.LOOKER_2021.SUPERSTORE_RETURNS`
    ;;

  dimension: order_id {
    type: string
    sql: ${TABLE}.Order_ID ;;
  }

  dimension: returned {
    type: yesno
    sql: ${TABLE}.Returned ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
