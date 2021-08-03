view: agmt_requests {
  sql_table_name: `vistex-analytics.VIZI_REPORT_LAYER.AGMT_REQUESTS`
    ;;

  dimension: xaddress {
    type: string
    sql: ${TABLE}.XADDRESS ;;
  }

  dimension: xbusprocess {
    type: string
    sql: ${TABLE}.XBUSPROCESS ;;
  }

  dimension: xchangedby {
    type: string
    sql: ${TABLE}.XCHANGEDBY ;;
  }

  dimension_group: xchangedon {
    type: time
    timeframes: [
      raw,
      date,
      week,
      month,
      quarter,
      year
    ]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.XCHANGEDON ;;
  }

  dimension: xcity {
    type: string
    sql: ${TABLE}.XCITY ;;
  }

  dimension: xclntid {
    type: string
    sql: ${TABLE}.XCLNTID ;;
  }

  measure: xcommitamt {
    type: sum
    sql: ${TABLE}.XCOMMITAMT ;;
  }

  dimension: xcommitqty {
    type: number
    sql: ${TABLE}.XCOMMITQTY ;;
  }

  dimension: xcontreq {
    type: string
    sql: ${TABLE}.XCONTREQ ;;
  }

  dimension: xcontreqattr1 {
    type: string
    sql: ${TABLE}.XCONTREQATTR1 ;;
  }

  dimension: xcontreqattr2 {
    type: string
    sql: ${TABLE}.XCONTREQATTR2 ;;
  }

  dimension: xcontreqstatus {
    type: string
    sql: ${TABLE}.XCONTREQSTATUS ;;
  }

  dimension: xcontreqtype {
    type: string
    sql: ${TABLE}.XCONTREQTYPE ;;
  }

  measure: xcounter {
    type: sum
    sql: ${TABLE}.XCOUNTER ;;
  }

  dimension: xcountry {
    type: string
    sql: ${TABLE}.XCOUNTRY ;;
  }

  dimension: xcreatedby {
    type: string
    sql: ${TABLE}.XCREATEDBY ;;
  }

  dimension_group: xcreatedon {
    type: time
    timeframes: [
      raw,
      date,
      week,
      month,
      quarter,
      year
    ]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.XCREATEDON ;;
  }

  dimension: xcstatus {
    type: string
    sql: ${TABLE}.XCSTATUS ;;
  }

  dimension: xcurrency {
    type: string
    sql: ${TABLE}.XCURRENCY ;;
  }

  dimension: xcustattr1 {
    type: string
    sql: ${TABLE}.XCUSTATTR1 ;;
  }

  dimension: xcustattr2 {
    type: string
    sql: ${TABLE}.XCUSTATTR2 ;;
  }

  dimension: xcustgrp {
    type: string
    sql: ${TABLE}.XCUSTGRP ;;
  }

  dimension: xcustname {
    type: string
    sql: ${TABLE}.XCUSTNAME ;;
  }

  dimension: xcustomer {
    type: string
    sql: ${TABLE}.XCUSTOMER ;;
  }

  dimension: xlostcount {
    type: number
    sql: ${TABLE}.XLOSTCOUNT ;;
  }

  dimension: xmandt {
    type: number
    sql: ${TABLE}.XMANDT ;;
  }

  dimension: xmonth {
    type: number
    sql: ${TABLE}.XMONTH ;;
  }

  measure: xnewcount {
    type: sum
    sql: ${TABLE}.XNEWCOUNT ;;
  }

  measure: xopenreqcount {
    type: sum
    sql: ${TABLE}.XOPENREQCOUNT ;;
  }

  dimension: xoutputcont {
    type: string
    sql: ${TABLE}.XOUTPUTCONT ;;
  }

  dimension: xowner {
    type: string
    sql: ${TABLE}.XOWNER ;;
  }

  dimension: xparentcont {
    type: number
    sql: ${TABLE}.XPARENTCONT ;;
  }

  dimension: xpartner {
    type: string
    sql: ${TABLE}.XPARTNER ;;
  }

  dimension: xplanspend {
    type: number
    sql: ${TABLE}.XPLANSPEND ;;
  }

  dimension: xpostcode {
    type: string
    sql: ${TABLE}.XPOSTCODE ;;
  }

  dimension: xppg {
    type: string
    sql: ${TABLE}.XPPG ;;
  }

  dimension: xregion {
    type: string
    sql: ${TABLE}.XREGION ;;
  }

  measure: xrenewalcount {
    type: sum
    sql: ${TABLE}.XRENEWALCount ;;
  }

  dimension: xreqdesc {
    type: string
    sql: ${TABLE}.XREQDESC ;;
  }

  dimension: xrevcode {
    type: string
    sql: ${TABLE}.XREVCODE ;;
  }

  dimension: xsalerep {
    type: string
    sql: ${TABLE}.XSALEREP ;;
  }

  dimension: xtelephone {
    type: string
    sql: ${TABLE}.XTELEPHONE ;;
  }

  dimension: xterritory {
    type: string
    sql: ${TABLE}.XTERRITORY ;;
  }

  dimension: xuom {
    type: string
    sql: ${TABLE}.XUOM ;;
  }

  dimension_group: xvalidfrom {
    type: time
    timeframes: [
      raw,
      date,
      week,
      month,
      quarter,
      year
    ]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.XVALIDFROM ;;
  }

  dimension_group: xvalidto {
    type: time
    timeframes: [
      raw,
      date,
      week,
      month,
      quarter,
      year
    ]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.XVALIDTO ;;
  }

  dimension: xwincount {
    type: number
    sql: ${TABLE}.XWINCOUNT ;;
  }

  dimension: xwintype {
    type: string
    sql: ${TABLE}.XWINTYPE ;;
  }

  dimension: xwlcode {
    type: string
    sql: ${TABLE}.XWLCODE ;;
  }

  dimension: xwlflag {
    type: string
    sql: ${TABLE}.XWLFLAG ;;
  }

  dimension: xyear {
    type: number
    sql: ${TABLE}.XYEAR ;;
  }

  dimension: xyearmon {
    type: number
    sql: ${TABLE}.XYEARMON ;;
  }

  measure: count {
    type: count
    drill_fields: [xcustname]
  }
}
