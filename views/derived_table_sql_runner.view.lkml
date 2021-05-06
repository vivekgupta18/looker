datagroup: pdt_datagroup {
  max_cache_age: "1 hour"
  sql_trigger: SELECT CURRENT_DATE() ;;
}

view: derived_table_sql_runner {
  derived_table: {
    sql: SELECT
          superstore_orders.State  AS superstore_orders_state,
          COALESCE(SUM(superstore_orders.Sales ), 0) AS superstore_orders_sales_measure,
          COALESCE(SUM(CASE WHEN (superstore_orders.State = 'California') THEN superstore_orders.Sales  ELSE NULL END), 0) AS superstore_orders_sales_measure_california
      FROM `vistex-analytics.LOOKER_2021.SUPERSTORE_ORDERS`
           AS superstore_orders
      GROUP BY
          1
      ORDER BY
          2 DESC
      LIMIT 500
       ;;

    datagroup_trigger: pdt_datagroup
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  dimension: superstore_orders_state {
    type: string
    sql: ${TABLE}.superstore_orders_state ;;
  }

  dimension: superstore_orders_sales_measure {
    type: number
    sql: ${TABLE}.superstore_orders_sales_measure ;;
  }

  dimension: superstore_orders_sales_measure_california {
    type: number
    sql: ${TABLE}.superstore_orders_sales_measure_california ;;
  }

  set: detail {
    fields: [superstore_orders_state, superstore_orders_sales_measure, superstore_orders_sales_measure_california]
  }
}
