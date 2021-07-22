view: agreement_analytics {
  derived_table: {
    sql: Select * from vistex-analytics.VIZI_REPORT_LAYER.AGMT_EXP
      ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  dimension: mandt {
    type: number
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

  dimension: xcommitamt {
    type: number
    sql: ${TABLE}.XCOMMITAMT ;;
  }

  dimension: xcommitqty {
    type: number
    sql: ${TABLE}.XCOMMITQTY ;;
  }

  dimension: xcounter {
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

  dimension: xamount1 {
    type: number
    sql: ${TABLE}.XAMOUNT1 ;;
  }

  dimension: xamount2 {
    type: number
    sql: ${TABLE}.XAMOUNT2 ;;
  }

  dimension: xamount3 {
    type: number
    sql: ${TABLE}.XAMOUNT3 ;;
  }

  dimension: xamount4 {
    type: number
    sql: ${TABLE}.XAMOUNT4 ;;
  }

  dimension: xamount5 {
    type: number
    sql: ${TABLE}.XAMOUNT5 ;;
  }

  dimension: xamount6 {
    type: number
    sql: ${TABLE}.XAMOUNT6 ;;
  }

  dimension: xamount7 {
    type: number
    sql: ${TABLE}.XAMOUNT7 ;;
  }

  dimension: xamount8 {
    type: number
    sql: ${TABLE}.XAMOUNT8 ;;
  }

  dimension: xamount9 {
    type: number
    sql: ${TABLE}.XAMOUNT9 ;;
  }

  dimension: xamount10 {
    type: number
    sql: ${TABLE}.XAMOUNT10 ;;
  }

  dimension: xamount11 {
    type: number
    sql: ${TABLE}.XAMOUNT11 ;;
  }

  dimension: xamount12 {
    type: number
    sql: ${TABLE}.XAMOUNT12 ;;
  }

  dimension: xamount13 {
    type: number
    sql: ${TABLE}.XAMOUNT13 ;;
  }

  dimension: xamount14 {
    type: number
    sql: ${TABLE}.XAMOUNT14 ;;
  }

  dimension: xamount15 {
    type: number
    sql: ${TABLE}.XAMOUNT15 ;;
  }

  dimension: xamount16 {
    type: number
    sql: ${TABLE}.XAMOUNT16 ;;
  }

  dimension: xamount17 {
    type: number
    sql: ${TABLE}.XAMOUNT17 ;;
  }

  dimension: xamount18 {
    type: number
    sql: ${TABLE}.XAMOUNT18 ;;
  }

  dimension: xamount19 {
    type: number
    sql: ${TABLE}.XAMOUNT19 ;;
  }

  dimension: xamount20 {
    type: number
    sql: ${TABLE}.XAMOUNT20 ;;
  }

  dimension: xamount21 {
    type: number
    sql: ${TABLE}.XAMOUNT21 ;;
  }

  dimension: xamount22 {
    type: number
    sql: ${TABLE}.XAMOUNT22 ;;
  }

  dimension: xamount23 {
    type: number
    sql: ${TABLE}.XAMOUNT23 ;;
  }

  dimension: xamount24 {
    type: number
    sql: ${TABLE}.XAMOUNT24 ;;
  }

  dimension: xamount25 {
    type: number
    sql: ${TABLE}.XAMOUNT25 ;;
  }

  dimension: xamount26 {
    type: number
    sql: ${TABLE}.XAMOUNT26 ;;
  }

  dimension: xamount27 {
    type: number
    sql: ${TABLE}.XAMOUNT27 ;;
  }

  dimension: xamount28 {
    type: number
    sql: ${TABLE}.XAMOUNT28 ;;
  }

  dimension: xamount29 {
    type: number
    sql: ${TABLE}.XAMOUNT29 ;;
  }

  dimension: xamount30 {
    type: number
    sql: ${TABLE}.XAMOUNT30 ;;
  }

  dimension: xytd_sales {
    type: number
    sql: ${TABLE}.XYTD_SALES ;;
  }

  dimension: xlytd_sales {
    type: number
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

  dimension: xactiveaggrmnt {
    type: number
    sql: ${TABLE}.XACTIVEAGGRMNT ;;
  }

  dimension: xlstmtactive {
    type: number
    sql: ${TABLE}.XLSTMTACTIVE ;;
  }

  dimension: xfutureaggrmnt {
    type: number
    sql: ${TABLE}.XFUTUREAGGRMNT ;;
  }

  dimension: xexpthismnth {
    type: number
    sql: ${TABLE}.XEXPTHISMNTH ;;
  }

  dimension: xaddthismnth {
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
