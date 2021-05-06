view: superstore_people {
  sql_table_name: `vistex-analytics.LOOKER_2021.SUPERSTORE_PEOPLE`
    ;;

  dimension: string_field_0 {
    label: "Person"
    type: string
    sql: ${TABLE}.string_field_0 ;;
  }

  dimension: region {
    label: "region"
    type: string
    sql: ${TABLE}.string_field_1 ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
