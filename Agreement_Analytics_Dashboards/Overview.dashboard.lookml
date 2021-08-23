- dashboard: 1__overview
  title: 1. Overview
  layout: newspaper
  preferred_viewer: dashboards-next
  elements:
  - title: Top 10 Expiring Agreements (Sales)
    name: Top 10 Expiring Agreements (Sales)
    model: agreement_analytics
    explore: agmt_exp
    type: looker_column
    fields: [agmt_exp.xcontract, agmt_exp.xytd_sales]
    filters:
      agmt_exp.xcontstatus: EXPIRED
    sorts: [agmt_exp.xytd_sales desc]
    limit: 10
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: ''
    limit_displayed_rows: false
    legend_position: center
    point_style: none
    show_value_labels: true
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    y_axes: [{label: YTD Sales, orientation: left, series: [{axisId: agmt_exp.xytd_sales,
            id: agmt_exp.xytd_sales, name: Xytd Sales}], showLabels: true, showValues: true,
        valueFormat: '0.,\K', unpinAxis: false, tickDensity: default, tickDensityCustom: 5,
        type: linear}]
    x_axis_label: 'Contract #'
    hide_legend: false
    label_value_format: 0,\K
    series_types: {}
    series_colors:
      agmt_exp.xytd_sales: "#36d69f"
    label_color: [black]
    defaults_version: 1
    listen: {}
    row: 12
    col: 0
    width: 8
    height: 8
  - title: Growth Sales
    name: Growth Sales
    model: agreement_analytics
    explore: agmt_exp
    type: single_value
    fields: [agmt_exp.xlytd_sales, agmt_exp.xytd_sales]
    filters:
      agmt_exp.xcontract: ''
    sorts: [agmt_exp.xlytd_sales desc]
    limit: 500
    dynamic_fields: [{table_calculation: sales_growth, label: Sales Growth %, expression: 'if(((sum(${agmt_exp.xlytd_sales})>0)
          OR (sum(${agmt_exp.xlytd_sales})<0)),(sum(${agmt_exp.xytd_sales})-(sum(${agmt_exp.xlytd_sales})))*100/(sum(${agmt_exp.xlytd_sales})),0)',
        value_format: !!null '', value_format_name: !!null '', _kind_hint: measure,
        _type_hint: number}]
    custom_color_enabled: true
    show_single_value_title: false
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: true
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    color_application:
      collection_id: aed851c8-b22d-4b01-8fff-4b02b91fe78d
      palette_id: c36094e3-d04d-4aa4-8ec7-bc9af9f851f4
    custom_color: "#000000"
    single_value_title: Sales Growth %
    value_format: "#.##\\%"
    conditional_formatting: [{type: greater than, value: 0, background_color: '',
        font_color: "#81BE56", color_application: {collection_id: aed851c8-b22d-4b01-8fff-4b02b91fe78d,
          palette_id: a77d2b8b-ee06-4086-8459-cfff9cccb2d2}, bold: false, italic: false,
        strikethrough: false, fields: !!null ''}, {type: less than, value: 0, background_color: '',
        font_color: "#D14242", color_application: {collection_id: aed851c8-b22d-4b01-8fff-4b02b91fe78d,
          palette_id: 6dda4f8b-4e73-4e50-8760-eb378041ce07}, bold: false, italic: false,
        strikethrough: false, fields: !!null ''}]
    show_view_names: false
    show_row_numbers: true
    transpose: false
    truncate_text: true
    hide_totals: false
    hide_row_totals: false
    size_to_fit: true
    table_theme: white
    limit_displayed_rows: false
    header_text_alignment: left
    header_font_size: 12
    rows_font_size: 12
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: ''
    legend_position: center
    point_style: none
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    defaults_version: 1
    series_types: {}
    hidden_fields: [agmt_exp.xlytd_sales, agmt_exp.xytd_sales]
    map: auto
    map_projection: ''
    quantize_colors: false
    note_state: collapsed
    note_display: above
    note_text: Sales Growth
    listen: {}
    row: 4
    col: 8
    width: 4
    height: 4
  - title: Expires in 30 days
    name: Expires in 30 days
    model: agreement_analytics
    explore: agmt_exp
    type: single_value
    fields: [agmt_exp.xexpcount_30]
    limit: 500
    custom_color_enabled: true
    show_single_value_title: false
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    color_application:
      collection_id: b43731d5-dc87-4a8e-b807-635bef3948e7
      palette_id: fb7bb53e-b77b-4ab6-8274-9d420d3d73f3
    custom_color: "#B42F37"
    single_value_title: ''
    series_types: {}
    defaults_version: 1
    note_state: collapsed
    note_display: above
    note_text: Agreement Expiring in 30 days
    listen: {}
    row: 0
    col: 12
    width: 4
    height: 4
  - title: YTD Sales
    name: YTD Sales
    model: agreement_analytics
    explore: agmt_exp
    type: single_value
    fields: [agmt_exp.xcurrency, agmt_exp.xytd_sales, agmt_exp.growth_sales]
    filters:
      agmt_exp.xcontract: ''
    sorts: [agmt_exp.growth_sales desc]
    limit: 500
    custom_color_enabled: true
    show_single_value_title: false
    show_comparison: true
    comparison_type: change
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    color_application:
      collection_id: b43731d5-dc87-4a8e-b807-635bef3948e7
      palette_id: fb7bb53e-b77b-4ab6-8274-9d420d3d73f3
    custom_color: "#000000"
    single_value_title: YTD Sales
    value_format: "$0.000,,\\M\\"
    comparison_label: Sales Change from LY
    conditional_formatting: [{type: greater than, value: !!null '', background_color: "#3EB0D5",
        font_color: !!null '', color_application: {collection_id: b43731d5-dc87-4a8e-b807-635bef3948e7,
          palette_id: 85de97da-2ded-4dec-9dbd-e6a7d36d5825}, bold: false, italic: false,
        strikethrough: false, fields: !!null ''}]
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: ''
    limit_displayed_rows: false
    legend_position: center
    point_style: none
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    defaults_version: 1
    hidden_fields: []
    series_types: {}
    note_state: collapsed
    note_display: above
    note_text: YTD Sales
    listen: {}
    row: 4
    col: 0
    width: 4
    height: 4
  - title: LYTD Sales
    name: LYTD Sales
    model: agreement_analytics
    explore: agmt_exp
    type: single_value
    fields: [agmt_exp.xcurrency, agmt_exp.xlytd_sales]
    filters:
      agmt_exp.xcontract: ''
    sorts: [agmt_exp.xlytd_sales desc]
    limit: 500
    custom_color_enabled: true
    show_single_value_title: false
    show_comparison: false
    comparison_type: change
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    color_application:
      collection_id: b43731d5-dc87-4a8e-b807-635bef3948e7
      palette_id: fb7bb53e-b77b-4ab6-8274-9d420d3d73f3
    custom_color: "#000000"
    single_value_title: YTD Sales
    value_format: "$0.000,,\\M\\"
    comparison_label: Sales Change from LY
    conditional_formatting: [{type: greater than, value: !!null '', background_color: "#3EB0D5",
        font_color: !!null '', color_application: {collection_id: b43731d5-dc87-4a8e-b807-635bef3948e7,
          palette_id: 85de97da-2ded-4dec-9dbd-e6a7d36d5825}, bold: false, italic: false,
        strikethrough: false, fields: !!null ''}]
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: ''
    limit_displayed_rows: false
    legend_position: center
    point_style: none
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    defaults_version: 1
    hidden_fields: []
    series_types: {}
    note_state: expanded
    note_display: above
    note_text: LYTD Sales
    listen: {}
    row: 4
    col: 4
    width: 4
    height: 4
  - title: Top 10 Active Agreements (Sales)
    name: Top 10 Active Agreements (Sales)
    model: agreement_analytics
    explore: agmt_exp
    type: looker_column
    fields: [agmt_exp.xcontract, agmt_exp.xytd_sales]
    filters:
      agmt_exp.xcontract: ''
      agmt_exp.xcontstatus: ACTIVE
    sorts: [agmt_exp.xytd_sales desc]
    limit: 10
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: ''
    limit_displayed_rows: false
    legend_position: center
    point_style: none
    show_value_labels: true
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    color_application:
      collection_id: b43731d5-dc87-4a8e-b807-635bef3948e7
      palette_id: ccba75a3-58c7-4b9c-a931-4ffc59e79cba
      options:
        steps: 5
    y_axes: [{label: YTD Sales, orientation: left, series: [{axisId: agmt_exp.xytd_sales,
            id: agmt_exp.xytd_sales, name: Xytd Sales}], showLabels: true, showValues: true,
        valueFormat: '0.,\K', unpinAxis: false, tickDensity: default, tickDensityCustom: 5,
        type: linear}]
    x_axis_label: 'Contract #'
    hide_legend: false
    label_value_format: 0,\K
    series_types: {}
    series_colors:
      agmt_exp.xytd_sales: "#5bd17f"
    label_color: [black]
    defaults_version: 1
    listen: {}
    row: 12
    col: 16
    width: 8
    height: 8
  - title: Expires in 61-90 days
    name: Expires in 61-90 days
    model: agreement_analytics
    explore: agmt_exp
    type: single_value
    fields: [agmt_exp.xexpcount_90]
    limit: 500
    custom_color_enabled: true
    show_single_value_title: false
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    color_application:
      collection_id: b43731d5-dc87-4a8e-b807-635bef3948e7
      palette_id: fb7bb53e-b77b-4ab6-8274-9d420d3d73f3
    custom_color: "#B42F37"
    single_value_title: Expires in 61-90 days
    series_types: {}
    defaults_version: 1
    note_state: collapsed
    note_display: above
    note_text: Agreement Expiring in 61-90 days
    listen: {}
    row: 0
    col: 20
    width: 4
    height: 4
  - title: Expires in 31-60 days
    name: Expires in 31-60 days
    model: agreement_analytics
    explore: agmt_exp
    type: single_value
    fields: [agmt_exp.xexpcount_60]
    limit: 500
    custom_color_enabled: true
    show_single_value_title: false
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    color_application:
      collection_id: b43731d5-dc87-4a8e-b807-635bef3948e7
      palette_id: fb7bb53e-b77b-4ab6-8274-9d420d3d73f3
    custom_color: "#B42F37"
    single_value_title: Expires in 31-60 days
    series_types: {}
    defaults_version: 1
    note_state: collapsed
    note_display: above
    note_text: Agreement Expiring in 31-60 days
    listen: {}
    row: 0
    col: 16
    width: 4
    height: 4
  - title: Active Agreement
    name: Active Agreement
    model: agreement_analytics
    explore: agmt_exp
    type: single_value
    fields: [agmt_exp.xactiveaggrmnt]
    filters:
      agmt_exp.xcontstatus: ACTIVE
    limit: 500
    custom_color_enabled: true
    show_single_value_title: false
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    single_value_title: ''
    defaults_version: 1
    note_state: collapsed
    note_display: above
    note_text: Active Agreement
    listen: {}
    row: 8
    col: 0
    width: 4
    height: 4
  - title: Renewal Requests
    name: Renewal Requests
    model: agreement_analytics
    explore: agmt_requests
    type: single_value
    fields: [agmt_requests.xrenewalcount]
    limit: 500
    custom_color_enabled: true
    show_single_value_title: false
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    series_types: {}
    defaults_version: 1
    note_state: collapsed
    note_display: above
    note_text: Renewal Requests
    listen: {}
    row: 0
    col: 8
    width: 4
    height: 4
  - title: New Open Requests
    name: New Open Requests
    model: agreement_analytics
    explore: agmt_requests
    type: single_value
    fields: [agmt_requests.xnewcount]
    limit: 500
    custom_color_enabled: true
    show_single_value_title: false
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    series_types: {}
    defaults_version: 1
    note_state: collapsed
    note_display: above
    note_text: New Open Requests
    listen: {}
    row: 0
    col: 4
    width: 4
    height: 4
  - title: "# Of Open Requests"
    name: "# Of Open Requests"
    model: agreement_analytics
    explore: agmt_requests
    type: single_value
    fields: [agmt_requests.xopenreqcount]
    limit: 500
    custom_color_enabled: true
    show_single_value_title: false
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: ''
    limit_displayed_rows: false
    legend_position: center
    point_style: none
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    defaults_version: 1
    series_types: {}
    show_row_numbers: true
    transpose: false
    truncate_text: true
    hide_totals: false
    hide_row_totals: false
    size_to_fit: true
    table_theme: white
    header_text_alignment: left
    header_font_size: 12
    rows_font_size: 12
    note_state: collapsed
    note_display: above
    note_text: 'Total # Of Open Requests'
    listen: {}
    row: 0
    col: 0
    width: 4
    height: 4
  - title: LYTD Qty
    name: LYTD Qty
    model: agreement_analytics
    explore: agmt_exp
    type: single_value
    fields: [agmt_exp.xlytd_qty]
    limit: 500
    custom_color_enabled: true
    show_single_value_title: false
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    defaults_version: 1
    note_state: collapsed
    note_display: above
    note_text: LYTD Qty
    listen: {}
    row: 4
    col: 16
    width: 4
    height: 4
  - title: YTD Qty
    name: YTD Qty
    model: agreement_analytics
    explore: agmt_exp
    type: single_value
    fields: [agmt_exp.xytd_qty, agmt_exp.xlytd_qty]
    limit: 500
    dynamic_fields: [{table_calculation: calculation_1, label: Calculation 1, expression: "${agmt_exp.xytd_qty}\
          \ - ${agmt_exp.xlytd_qty} ", value_format: '0.00,,\M\', value_format_name: !!null '',
        _kind_hint: measure, _type_hint: number}]
    custom_color_enabled: true
    show_single_value_title: false
    show_comparison: true
    comparison_type: change
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: true
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    custom_color: "#000000"
    value_format: 0.00,,\M\
    comparison_label: Qty Change From LY
    conditional_formatting: [{type: greater than, value: 0, background_color: '',
        font_color: '', color_application: {collection_id: b43731d5-dc87-4a8e-b807-635bef3948e7,
          palette_id: 85de97da-2ded-4dec-9dbd-e6a7d36d5825}, bold: false, italic: false,
        strikethrough: false, fields: !!null ''}]
    defaults_version: 1
    series_types: {}
    hidden_fields: [agmt_exp.xlytd_qty]
    note_state: collapsed
    note_display: above
    note_text: YTD Qty
    listen: {}
    row: 4
    col: 12
    width: 4
    height: 4
  - title: Quantity Growth %
    name: Quantity Growth %
    model: agreement_analytics
    explore: agmt_exp
    type: single_value
    fields: [agmt_exp.xlytd_qty, agmt_exp.xytd_qty]
    limit: 500
    dynamic_fields: [{table_calculation: quantity_growth, label: Quantity Growth %,
        expression: 'if(((sum(${agmt_exp.xlytd_qty})>0) OR (sum(${agmt_exp.xlytd_qty})<0)),(sum(${agmt_exp.xytd_qty})-(sum(${agmt_exp.xlytd_qty})))*100/(sum(${agmt_exp.xlytd_qty})),0)',
        value_format: !!null '', value_format_name: !!null '', _kind_hint: measure,
        _type_hint: number}]
    custom_color_enabled: true
    show_single_value_title: false
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    custom_color: "#72D16D"
    hidden_fields: [agmt_exp.xlytd_qty, agmt_exp.xytd_qty]
    series_types: {}
    defaults_version: 1
    note_state: collapsed
    note_display: above
    note_text: Quantity Growth %
    listen: {}
    row: 4
    col: 20
    width: 4
    height: 4
  - title: Top 10 Open Requests
    name: Top 10 Open Requests
    model: agreement_analytics
    explore: agmt_requests
    type: looker_column
    fields: [agmt_requests.xcontreq, agmt_requests.xcommitamt]
    filters:
      agmt_requests.xcontreqstatus: OPEN
    sorts: [agmt_requests.xcommitamt desc]
    limit: 10
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: ''
    limit_displayed_rows: false
    legend_position: center
    point_style: none
    show_value_labels: true
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    y_axes: [{label: Committed Amount, orientation: left, series: [{axisId: agmt_requests.xcommitamt,
            id: agmt_requests.xcommitamt, name: Xcommitamt}], showLabels: true, showValues: true,
        valueFormat: '0.,\K', unpinAxis: false, tickDensity: default, tickDensityCustom: 5,
        type: linear}]
    x_axis_label: 'Request #'
    font_size: 9pt
    label_value_format: '#,"K"'
    series_colors:
      agmt_requests.xcommitqty: "#E57947"
    label_color: [black]
    x_axis_datetime_label: ''
    column_spacing_ratio: 0.1
    column_group_spacing_ratio: 0.1
    defaults_version: 1
    listen: {}
    row: 12
    col: 8
    width: 8
    height: 8
  - title: Prior Month
    name: Prior Month
    model: agreement_analytics
    explore: agmt_exp
    type: single_value
    fields: [agmt_exp.xlstmtactive]
    filters:
      agmt_exp.xcontstatus: ACTIVE
    limit: 500
    custom_color_enabled: true
    show_single_value_title: false
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    series_types: {}
    defaults_version: 1
    note_state: collapsed
    note_display: above
    note_text: Prior Month
    listen: {}
    row: 8
    col: 8
    width: 4
    height: 4
  - title: Delta
    name: Delta
    model: agreement_analytics
    explore: agmt_exp
    type: single_value
    fields: [agmt_exp.xaddthismnth]
    filters:
      agmt_exp.xcontstatus: ACTIVE
    custom_color_enabled: true
    show_single_value_title: false
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    series_types: {}
    defaults_version: 1
    note_state: collapsed
    note_display: above
    note_text: Delta
    listen: {}
    row: 8
    col: 16
    width: 4
    height: 4
