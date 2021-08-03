view: open_requests {
  derived_table: {
    sql: --CREATE VIEW VZAGREQ as
      SELECT
        A.XMANDT AS XMANDT,                                                 -- Client
        A.XCLNTID AS XCLNTID,                                             -- Client ID
        A.XCONTREQ AS XCONTREQ,                                           -- Agreement Request Number
        A.XREQDESC AS XREQDESC,                                           -- Agreement Request Description
        A.XCONTREQTYPE AS XCONTREQTYPE,                                   -- Agreement Request Type
        A.XPARTNER AS XPARTNER,                                           -- Primary Partner
        A.XOWNER AS XOWNER,                                               -- Owner
        A.XVALIDFROM AS XVALIDFROM,                                       -- Valid From
        A.XVALIDTO AS XVALIDTO,                                           -- Valid To
        A.XPARENTCONT AS XPARENTCONT,                                     -- Parent Agreement
        A.XOUTPUTCONT AS XOUTPUTCONT,                                     -- Output Agreement
        A.XCONTREQSTATUS AS XCONTREQSTATUS,                               -- Agreement Request Status
        A.XWLFLAG AS XWLFLAG,                                             -- Win/Loss Indicator
        A.XWLCODE AS XWLCODE,                                             -- Win/Loss Reason
        A.XCREATEDON AS XCREATEDON,                                       -- Created On
        A.XCREATEDBY AS XCREATEDBY,                                       -- Created By
        A.XCHANGEDON AS XCHANGEDON,                                       -- Changed On
        A.XCHANGEDBY AS XCHANGEDBY,                                       -- Changed By
        A.XCURRENCY AS XCURRENCY,                                         -- Currency
        A.XUOM AS XUOM,                                                   -- Unit of Measure
        A.XCONTREQATTR1 AS XCONTREQATTR1,                                 -- Agreement Request Attribute 1
        A.XCONTREQATTR2 AS XCONTREQATTR2,                                 -- Agreement Request Attribute 2
      --A.XCONTREQATTR3 AS XCONTREQATTR3,                                  -- Agreement Request Attribute 3
      --A.XCONTREQATTR4 AS XCONTREQATTR4,                                  -- Agreement Request Attribute 4
      --A.XCONTREQATTR5 AS XCONTREQATTR5,                                  -- Agreement Request Attribute 5
      --A.XCONTREQATTR6 AS XCONTREQATTR6,                                  -- Agreement Request Attribute 6
      --A.XCONTREQATTR7 AS XCONTREQATTR7,                                  -- Agreement Request Attribute 7
      --A.XCONTREQATTR8 AS XCONTREQATTR8,                                  -- Agreement Request Attribute 8
      --A.XCONTREQATTR9 AS XCONTREQATTR9,                                  -- Agreement Request Attribute 9
      --A.XCONTREQATTR10 AS XCONTREQATTR10,                                -- Agreement Request Attribute 10
        A.XCOMMITAMT AS XCOMMITAMT,                                       -- Committed  Amount
        A.XCOMMITQTY AS XCOMMITQTY,                                       -- Committed Quantity
        1 AS XCOUNTER,                                                    -- Count
        A.XCSTATUS AS XCSTATUS,                                           -- Current Status
        A.XREVCODE AS XREVCODE,                                           --Revision Reason
        A.XBUSPROCESS AS XBUSPROCESS,                                     -- Business Process
        A.XWINTYPE AS XWINTYPE,                                           -- Win Type
        A.XPPG AS XPPG,                                                   -- PPG
        A.XPLANSPEND AS XPLANSPEND,                                       -- Planned Spend
        CASE WHEN A.XWLFLAG = 'W' THEN 1 ELSE 0 END AS XWINCOUNT,         --Win Counter
        CASE WHEN A.XWLFLAG = 'L' THEN 1 ELSE 0 END AS XLOSTCOUNT,        -- Lost Counter
        CASE WHEN A.XCONTREQSTATUS = 'OPEN' THEN 1 ELSE 0 END AS XOPENREQCOUNT,  -- Open Request Counter
        CASE WHEN cast(A.XPARENTCONT as string) = '' THEN 1 ELSE 0 END AS XNEWCOUNT,
        CASE WHEN cast(A.XPARENTCONT as string) <> '' THEN 1 ELSE 0 END AS XRENEWALCount,
        B.XMONTHID AS XMONTH,                                             -- Month
        B.XYEAR AS XYEAR,                                                 -- Year
        B.XYEARMON AS XYEARMON,                                           -- Year/Month
      -- Customer Master
        C.XCUSTOMER AS XCUSTOMER,                                         -- Customer Number
        C.XCUSTNAME AS XCUSTNAME,                                         -- Customer name
        C.XREGION AS XREGION,                                             -- Region
        C.XCOUNTRY AS XCOUNTRY,                                           -- Country
        C.XCITY AS XCITY,                                                 -- City
        C.XADDRESS AS XADDRESS,                                           -- Address
        C.XPOSTCODE AS XPOSTCODE,                                         -- Post Code
        C.XTELEPHONE AS XTELEPHONE,                                       -- Telephone
        C.XSALEREP AS XSALEREP,                                           -- Sales Rep
        C.XTERRITORY AS XTERRITORY,                                       -- Territory
        --C.XCUSTGRP as XCUSTGRP,                                           -- Customer Group
        C.XCUSTATTR1 AS XCUSTATTR1,                                       -- Customer Attribute 1
        C.XCUSTATTR2 AS XCUSTATTR2                                        -- Customer Attribute 2
      --C.XCUSTATTR3 AS XCUSTATTR3,                                        -- Customer Attribute 3
      --.XCUSTATTR4 AS XCUSTATTR4,                                        -- Customer Attribute 4
      --C.XCUSTATTR5 AS XCUSTATTR5,                                        -- Customer Attribute 5
      --C.XCUSTATTR6 AS XCUSTATTR6,                                        -- Customer Attribute 6
      --C.XCUSTATTR7 AS XCUSTATTR7,                                        -- Customer Attribute 7
      --C.XCUSTATTR8 AS XCUSTATTR8,                                        -- Customer Attribute 8
      --C.XCUSTATTR9 AS XCUSTATTR9,                                        -- Customer Attribute 9
      --C.XCUSTATTR10 AS XCUSTATTR10,                                      -- Customer Attribute 10
      --C.XHIERL1 AS XHIERL1,                                              -- Hierarchy Level 1
      --C.XHIERL2 AS XHIERL2,                                              -- Hierarchy Level 2
      --C.XHIERL3 AS XHIERL3,                                              -- Hierarchy Level 3
      --C.XHIERL4 AS XHIERL4,                                              -- Hierarchy Level 4
      --C.XHIERL5 AS XHIERL5                                               -- Hierarchy Level 5

        FROM `vistex-analytics.VIZI_RAW_DATA.AGMT_REQUESTS` AS A        -- Agreement Requests
        LEFT JOIN `vistex-analytics.VIZI_RAW_DATA.VZDATES` AS B  -- Dates Records
        ON A.XCLNTID = B.XCLNTID AND A.XCREATEDON = FORMAT_DATETIME("%m/%d/%Y",B.XDATE)
        LEFT JOIN `vistex-analytics.VIZI_RAW_DATA.VZCUSTOMER` AS C   -- Customer Master
        ON A.XCLNTID = C.XCLNTID AND A.XPARTNER = C.XCUSTOMER
       ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  dimension: xmandt {
    type: number
    sql: ${TABLE}.XMANDT ;;
  }

  dimension: xclntid {
    type: string
    sql: ${TABLE}.XCLNTID ;;
  }

  dimension: xcontreq {
    type: string
    sql: ${TABLE}.XCONTREQ ;;
  }

  dimension: xreqdesc {
    type: string
    sql: ${TABLE}.XREQDESC ;;
  }

  dimension: xcontreqtype {
    type: string
    sql: ${TABLE}.XCONTREQTYPE ;;
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
    type: number
    sql: ${TABLE}.XPARENTCONT ;;
  }

  dimension: xoutputcont {
    type: string
    sql: ${TABLE}.XOUTPUTCONT ;;
  }

  dimension: xcontreqstatus {
    type: string
    sql: ${TABLE}.XCONTREQSTATUS ;;
  }

  dimension: xwlflag {
    type: string
    sql: ${TABLE}.XWLFLAG ;;
  }

  dimension: xwlcode {
    type: string
    sql: ${TABLE}.XWLCODE ;;
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
    type: date
    datatype: date
    sql: ${TABLE}.XCHANGEDON ;;
  }

  dimension: xchangedby {
    type: string
    sql: ${TABLE}.XCHANGEDBY ;;
  }

  dimension: xcurrency {
    type: string
    sql: ${TABLE}.XCURRENCY ;;
  }

  dimension: xuom {
    type: string
    sql: ${TABLE}.XUOM ;;
  }

  dimension: xcontreqattr1 {
    type: string
    sql: ${TABLE}.XCONTREQATTR1 ;;
  }

  dimension: xcontreqattr2 {
    type: string
    sql: ${TABLE}.XCONTREQATTR2 ;;
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

  dimension: xcstatus {
    type: string
    sql: ${TABLE}.XCSTATUS ;;
  }

  dimension: xrevcode {
    type: string
    sql: ${TABLE}.XREVCODE ;;
  }

  dimension: xbusprocess {
    type: string
    sql: ${TABLE}.XBUSPROCESS ;;
  }

  dimension: xwintype {
    type: string
    sql: ${TABLE}.XWINTYPE ;;
  }

  dimension: xppg {
    type: string
    sql: ${TABLE}.XPPG ;;
  }

  dimension: xplanspend {
    type: number
    sql: ${TABLE}.XPLANSPEND ;;
  }

  dimension: xwincount {
    type: number
    sql: ${TABLE}.XWINCOUNT ;;
  }

  dimension: xlostcount {
    type: number
    sql: ${TABLE}.XLOSTCOUNT ;;
  }

  measure: xopenreqcount {
    type: sum
    sql: ${TABLE}.XOPENREQCOUNT ;;
  }

  measure: xnewcount {
    type: sum
    sql: ${TABLE}.XNEWCOUNT ;;
  }

  measure: xrenewalcount {
    type: sum
    sql: ${TABLE}.XRENEWALCount ;;
  }

  dimension: xmonth {
    type: number
    sql: ${TABLE}.XMONTH ;;
  }

  dimension: xyear {
    type: number
    sql: ${TABLE}.XYEAR ;;
  }

  dimension: xyearmon {
    type: number
    sql: ${TABLE}.XYEARMON ;;
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

  set: detail {
    fields: [
      xmandt,
      xclntid,
      xcontreq,
      xreqdesc,
      xcontreqtype,
      xpartner,
      xowner,
      xvalidfrom,
      xvalidto,
      xparentcont,
      xoutputcont,
      xcontreqstatus,
      xwlflag,
      xwlcode,
      xcreatedon,
      xcreatedby,
      xchangedon,
      xchangedby,
      xcurrency,
      xuom,
      xcontreqattr1,
      xcontreqattr2,
      xcommitamt,
      xcommitqty,
      xcounter,
      xcstatus,
      xrevcode,
      xbusprocess,
      xwintype,
      xppg,
      xplanspend,
      xwincount,
      xlostcount,
      xopenreqcount,
      xnewcount,
      xrenewalcount,
      xmonth,
      xyear,
      xyearmon,
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
      xcustattr2
    ]
  }
}
