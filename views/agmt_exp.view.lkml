view: agmt_exp {
  sql_table_name: `vistex-analytics.VIZI_REPORT_LAYER.AGMT_EXP`
    ;;

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  dimension: mandt {
    type: number
    primary_key: yes
    sql: ${TABLE}.MANDT ;;
  }

  dimension: xclntid {
    type: string
    sql: ${TABLE}.XCLNTID ;;
  }

  dimension: xcontract {
    type: string
    sql: ${TABLE}.XCONTRACT ;;
  }

  dimension: xcontdesc {
    type: string
    sql: ${TABLE}.XCONTDESC ;;
  }

  dimension: xpartner {
    type: string
    sql: ${TABLE}.XPARTNER ;;
  }

  dimension: xowner {
    type: number
    sql: ${TABLE}.XOWNER ;;
  }

  dimension: xvalidfrom {
    type: date
    datatype: date
    sql: ${TABLE}.XVALIDFROM ;;
  }

  dimension: xvalidto {
    type: date
    datatype: date
    sql: ${TABLE}.XVALIDTO ;;
  }

  dimension: xparentcont {
    type: string
    sql: ${TABLE}.XPARENTCONT ;;
  }

  dimension: xcontstatus {
    type: string
    sql: ${TABLE}.XCONTSTATUS ;;
  }

  dimension: xcontrnflag {
    type: string
    sql: ${TABLE}.XCONTRNFLAG ;;
  }

  dimension: xcreatedon {
    type: string
    sql: ${TABLE}.XCREATEDON ;;
  }

  dimension: xcreatedby {
    type: string
    sql: ${TABLE}.XCREATEDBY ;;
  }

  dimension: xchangedon {
    type: string
    sql: ${TABLE}.XCHANGEDON ;;
  }

  dimension: xchangedby {
    type: string
    sql: ${TABLE}.XCHANGEDBY ;;
  }

  dimension: xcontattr1 {
    type: string
    sql: ${TABLE}.XCONTATTR1 ;;
  }

  dimension: xcontattr2 {
    type: string
    sql: ${TABLE}.XCONTATTR2 ;;
  }

  dimension: xcurrency {
    type: string
    sql: ${TABLE}.XCURRENCY ;;
  }

  dimension: xuom {
    type: string
    sql: ${TABLE}.XUOM ;;
  }

  measure: xcommitamt {
    type: number
    sql: ${TABLE}.XCOMMITAMT ;;
  }

  measure: xcommitqty {
    type: number
    sql: ${TABLE}.XCOMMITQTY ;;
  }

  measure: xcounter {
    type: number
    sql: ${TABLE}.XCOUNTER ;;
  }

  dimension: xbusprocess {
    type: string
    sql: ${TABLE}.XBUSPROCESS ;;
  }

  dimension: xppg {
    type: string
    sql: ${TABLE}.XPPG ;;
  }

  dimension: xconttype {
    type: string
    sql: ${TABLE}.XCONTTYPE ;;
  }

  dimension: xcustomer {
    type: string
    sql: ${TABLE}.XCUSTOMER ;;
  }

  dimension: xcustname {
    type: string
    sql: ${TABLE}.XCUSTNAME ;;
  }

  dimension: xregion {
    type: string
    sql: ${TABLE}.XREGION ;;
  }

  dimension: xcountry {
    type: string
    sql: ${TABLE}.XCOUNTRY ;;
  }

  dimension: xcity {
    type: string
    sql: ${TABLE}.XCITY ;;
  }

  dimension: xaddress {
    type: string
    sql: ${TABLE}.XADDRESS ;;
  }

  dimension: xpostcode {
    type: string
    sql: ${TABLE}.XPOSTCODE ;;
  }

  dimension: xtelephone {
    type: string
    sql: ${TABLE}.XTELEPHONE ;;
  }

  dimension: xsalerep {
    type: string
    sql: ${TABLE}.XSALEREP ;;
  }

  dimension: xterritory {
    type: string
    sql: ${TABLE}.XTERRITORY ;;
  }

  dimension: xcustattr1 {
    type: string
    sql: ${TABLE}.XCUSTATTR1 ;;
  }

  dimension: xcustattr2 {
    type: string
    sql: ${TABLE}.XCUSTATTR2 ;;
  }

  dimension: xexpbucket {
    type: number
    sql: ${TABLE}.XEXPBUCKET ;;
  }

  dimension: xndays {
    type: number
    sql: ${TABLE}.XNDAYS ;;
  }

  measure: xamount1 {
    type: number
    sql: ${TABLE}.XAMOUNT1 ;;
  }

  measure: xamount2 {
    type: number
    sql: ${TABLE}.XAMOUNT2 ;;
  }

  measure: xamount3 {
    type: number
    sql: ${TABLE}.XAMOUNT3 ;;
  }

  measure: xamount4 {
    type: number
    sql: ${TABLE}.XAMOUNT4 ;;
  }

  measure: xamount5 {
    type: number
    sql: ${TABLE}.XAMOUNT5 ;;
  }

  measure: xamount6 {
    type: number
    sql: ${TABLE}.XAMOUNT6 ;;
  }

  measure: xamount7 {
    type: number
    sql: ${TABLE}.XAMOUNT7 ;;
  }

  measure: xamount8 {
    type: number
    sql: ${TABLE}.XAMOUNT8 ;;
  }

  measure: xamount9 {
    type: number
    sql: ${TABLE}.XAMOUNT9 ;;
  }

  measure: xamount10 {
    type: number
    sql: ${TABLE}.XAMOUNT10 ;;
  }

  measure: xamount11 {
    type: number
    sql: ${TABLE}.XAMOUNT11 ;;
  }

  measure: xamount12 {
    type: number
    sql: ${TABLE}.XAMOUNT12 ;;
  }

  measure: xamount13 {
    type: number
    sql: ${TABLE}.XAMOUNT13 ;;
  }

  measure: xamount14 {
    type: number
    sql: ${TABLE}.XAMOUNT14 ;;
  }

  measure: xamount15 {
    type: number
    sql: ${TABLE}.XAMOUNT15 ;;
  }

  measure: xamount16 {
    type: number
    sql: ${TABLE}.XAMOUNT16 ;;
  }

  measure: xamount17 {
    type: number
    sql: ${TABLE}.XAMOUNT17 ;;
  }

  measure: xamount18 {
    type: number
    sql: ${TABLE}.XAMOUNT18 ;;
  }

  dimension: xamount19 {
    type: number
    sql: ${TABLE}.XAMOUNT19 ;;
  }

  measure: xamount20 {
    type: number
    sql: ${TABLE}.XAMOUNT20 ;;
  }

  measure: xamount21 {
    type: number
    sql: ${TABLE}.XAMOUNT21 ;;
  }

  measure: xamount22 {
    type: number
    sql: ${TABLE}.XAMOUNT22 ;;
  }

  measure: xamount23 {
    type: number
    sql: ${TABLE}.XAMOUNT23 ;;
  }

  measure: xamount24 {
    type: number
    sql: ${TABLE}.XAMOUNT24 ;;
  }

  measure: xamount25 {
    type: number
    sql: ${TABLE}.XAMOUNT25 ;;
  }

  measure: xamount26 {
    type: number
    sql: ${TABLE}.XAMOUNT26 ;;
  }

  measure: xamount27 {
    type: number
    sql: ${TABLE}.XAMOUNT27 ;;
  }

  measure: xamount28 {
    type: number
    sql: ${TABLE}.XAMOUNT28 ;;
  }

  measure: xamount29 {
    type: number
    sql: ${TABLE}.XAMOUNT29 ;;
  }

  measure: xamount30 {
    type: number
    sql: ${TABLE}.XAMOUNT30 ;;
  }

  measure: xytd_sales {
    type: sum
    sql: ${TABLE}.XYTD_SALES ;;
  }

  measure: xexpcount_30 {
    type: sum
    sql: ${TABLE}.XEXPCOUNT_30 ;;
  }

  measure: xexpcount_90 {
    type: sum
    sql: ${TABLE}.XEXPCOUNT_90 ;;
  }

  measure: xexpcount_60 {
    type: sum
    sql: ${TABLE}.XEXPCOUNT_60 ;;
  }


  measure: xlytd_sales {
    type: sum
    sql: ${TABLE}.XLYTD_SALES ;;
  }

  dimension: xactive {
    type: string
    sql: ${TABLE}.XACTIVE ;;
  }

  dimension: xfuture {
    type: string
    sql: ${TABLE}.XFUTURE ;;
  }

  measure: xactiveaggrmnt {
    type: sum
    sql: ${TABLE}.XACTIVEAGGRMNT ;;
  }

  measure: xlstmtactive {
    type: number
    sql: ${TABLE}.XLSTMTACTIVE ;;
  }

  measure: xfutureaggrmnt {
    type: number
    sql: ${TABLE}.XFUTUREAGGRMNT ;;
  }

  measure: xexpthismnth {
    type: number
    sql: ${TABLE}.XEXPTHISMNTH ;;
  }

  measure: xaddthismnth {
    type: number
    sql: ${TABLE}.XADDTHISMNTH ;;
  }

  set: detail {
    fields: [
      mandt,
      xclntid,
      xcontract,
      xcontdesc,
      xpartner,
      xowner,
      xvalidfrom,
      xvalidto,
      xparentcont,
      xcontstatus,
      xcontrnflag,
      xcreatedon,
      xcreatedby,
      xchangedon,
      xchangedby,
      xcontattr1,
      xcontattr2,
      xcurrency,
      xuom,
      xcommitamt,
      xcommitqty,
      xcounter,
      xbusprocess,
      xppg,
      xconttype,
      xcustomer,
      xcustname,
      xregion,
      xcountry,
      xcity,
      xaddress,
      xpostcode,
      xtelephone,
      xsalerep,
      xterritory,
      xcustattr1,
      xcustattr2,
      xexpbucket,
      xndays,
      xamount1,
      xamount2,
      xamount3,
      xamount4,
      xamount5,
      xamount6,
      xamount7,
      xamount8,
      xamount9,
      xamount10,
      xamount11,
      xamount12,
      xamount13,
      xamount14,
      xamount15,
      xamount16,
      xamount17,
      xamount18,
      xamount19,
      xamount20,
      xamount21,
      xamount22,
      xamount23,
      xamount24,
      xamount25,
      xamount26,
      xamount27,
      xamount28,
      xamount29,
      xamount30,
      xytd_sales,
      xlytd_sales,
      xactive,
      xfuture,
      xactiveaggrmnt,
      xlstmtactive,
      xfutureaggrmnt,
      xexpthismnth,
      xaddthismnth
    ]
  }
}
