- dashboard: 2__pipeline
  title: 2. Pipeline
  layout: newspaper
  preferred_viewer: dashboards-next
  elements:
  - title: Value of Open Requests
    name: Value of Open Requests
    model: agreement_analytics
    explore: agmt_requests
    type: single_value
    fields: [agmt_requests.xcommitamt]
    filters:
      agmt_requests.xcontreqstatus: OPEN
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
    value_format: "$0.00,,\\M\\"
    defaults_version: 1
    note_state: collapsed
    note_display: above
    note_text: Value of Open Requests
    listen:
      Owner: agmt_requests.xowner
      Customer: agmt_requests.xcustname
      Agreement Request: agmt_requests.xreqdesc
      Code: agmt_requests.xrevcode
    row: 0
    col: 20
    width: 4
    height: 4
  - title: List of Open Requests
    name: List of Open Requests
    model: agreement_analytics
    explore: agmt_requests
    type: looker_grid
    fields: [agmt_requests.xcontreq, agmt_requests.xreqdesc, agmt_requests.xpartner,
      agmt_requests.xowner, agmt_requests.xparentcont, agmt_requests.xrevcode, agmt_requests.xcstatus,
      agmt_requests.xchangedon_date, agmt_requests.xcommitamt]
    filters:
      agmt_requests.xcontreqstatus: OPEN
    sorts: [agmt_requests.xcommitamt desc]
    limit: 500
    show_view_names: false
    show_row_numbers: true
    transpose: false
    truncate_text: true
    hide_totals: false
    hide_row_totals: false
    size_to_fit: true
    table_theme: white
    limit_displayed_rows: false
    enable_conditional_formatting: false
    header_text_alignment: left
    header_font_size: '12'
    rows_font_size: '12'
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    show_sql_query_menu_options: false
    show_totals: true
    show_row_totals: true
    series_labels:
      agmt_requests.xcontreq: Request
      agmt_requests.xreqdesc: Agreement Request
      agmt_requests.xpartner: Partner
      agmt_requests.xowner: Owner
      agmt_requests.xparentcont: Parent
      agmt_requests.xcstatus: Status
      agmt_requests.xchangedon_date: Changed On
      agmt_requests.xcommitamt: Committed Amount
      agmt_requests.xrevcode: Code
    series_cell_visualizations:
      agmt_requests.xcommitamt:
        is_active: false
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
    listen:
      Owner: agmt_requests.xowner
      Customer: agmt_requests.xcustname
      Agreement Request: agmt_requests.xreqdesc
      Code: agmt_requests.xrevcode
    row: 8
    col: 0
    width: 24
    height: 12
  - title: Total Open Request
    name: Total Open Request
    model: agreement_analytics
    explore: agmt_requests
    type: single_value
    fields: [agmt_requests.count]
    filters:
      agmt_requests.xcontreqstatus: OPEN
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
    note_text: Total Open Request
    listen:
      Owner: agmt_requests.xowner
      Customer: agmt_requests.xcustname
      Agreement Request: agmt_requests.xreqdesc
      Code: agmt_requests.xrevcode
    row: 0
    col: 16
    width: 4
    height: 4
  - title: Open Request's Committed Amount By Owner
    name: Open Request's Committed Amount By Owner
    model: agreement_analytics
    explore: agmt_requests
    type: looker_column
    fields: [agmt_requests.xowner, agmt_requests.xcommitamt]
    filters:
      agmt_requests.xcontreqstatus: OPEN
    sorts: [agmt_requests.xcommitamt desc]
    limit: 500
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
      palette_id: fb7bb53e-b77b-4ab6-8274-9d420d3d73f3
      options:
        steps: 5
    y_axes: [{label: Committed Amount, orientation: left, series: [{axisId: agmt_requests.xcommitamt,
            id: agmt_requests.xcommitamt, name: Xcommitamt}], showLabels: true, showValues: true,
        valueFormat: '0.,,\M\', unpinAxis: false, tickDensity: default, tickDensityCustom: 5,
        type: linear}]
    x_axis_label: Owner
    font_size: 8 pt
    label_value_format: 0.00,,\M\
    series_types: {}
    series_colors:
      agmt_requests.xcommitamt: "#72D16D"
    label_color: [black]
    x_axis_datetime_label: ''
    label_rotation: 0
    column_spacing_ratio: 0.2
    column_group_spacing_ratio: 0.2
    defaults_version: 1
    listen:
      Owner: agmt_requests.xowner
      Customer: agmt_requests.xcustname
      Agreement Request: agmt_requests.xreqdesc
      Code: agmt_requests.xrevcode
    row: 0
    col: 8
    width: 8
    height: 8
  - title: Open Request's Count By Owner
    name: Open Request's Count By Owner
    model: agreement_analytics
    explore: agmt_requests
    type: looker_bar
    fields: [agmt_requests.xowner, agmt_requests.xcounter]
    filters:
      agmt_requests.xcontreqstatus: OPEN
    sorts: [agmt_requests.xcounter desc]
    limit: 500
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
    show_null_labels: true
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    y_axes: [{label: Counter, orientation: bottom, series: [{axisId: agmt_requests.xcounter,
            id: agmt_requests.xcounter, name: Xcounter}], showLabels: true, showValues: true,
        unpinAxis: false, tickDensity: default, tickDensityCustom: 5, type: linear}]
    x_axis_label: Owner
    font_size: 9pt
    series_types: {}
    series_colors:
      agmt_requests.xcounter: "#3EB0D5"
    label_color: [black]
    column_spacing_ratio: 0.2
    column_group_spacing_ratio: 0.2
    defaults_version: 1
    listen:
      Owner: agmt_requests.xowner
      Customer: agmt_requests.xcustname
      Agreement Request: agmt_requests.xreqdesc
      Code: agmt_requests.xrevcode
    row: 0
    col: 0
    width: 8
    height: 8
  - title: New Requests
    name: New Requests
    model: agreement_analytics
    explore: agmt_requests
    type: single_value
    fields: [agmt_requests.xnewcount]
    filters:
      agmt_requests.xcontreqstatus: OPEN
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
    note_text: New Requests
    listen:
      Owner: agmt_requests.xowner
      Customer: agmt_requests.xcustname
      Agreement Request: agmt_requests.xreqdesc
      Code: agmt_requests.xrevcode
    row: 4
    col: 16
    width: 4
    height: 4
  - title: Renewal Requests
    name: Renewal Requests
    model: agreement_analytics
    explore: agmt_requests
    type: single_value
    fields: [agmt_requests.xrenewalcount]
    filters:
      agmt_requests.xcontreqstatus: OPEN
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
    note_text: Renewal Requests
    listen:
      Owner: agmt_requests.xowner
      Customer: agmt_requests.xcustname
      Agreement Request: agmt_requests.xreqdesc
      Code: agmt_requests.xrevcode
    row: 4
    col: 20
    width: 4
    height: 4
  filters:
  - name: Owner
    title: Owner
    type: string_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    ui_config:
      type: advanced
      display: popover
      options: []
  - name: Agreement Request
    title: Agreement Request
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    ui_config:
      type: tag_list
      display: popover
      options: []
    model: agreement_analytics
    explore: agmt_requests
    listens_to_filters: []
    field: agmt_requests.xreqdesc
  - name: Customer
    title: Customer
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    ui_config:
      type: tag_list
      display: popover
      options: []
    model: agreement_analytics
    explore: agmt_requests
    listens_to_filters: []
    field: agmt_requests.xcustname
  - name: Code
    title: Code
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    ui_config:
      type: button_group
      display: inline
      options: []
    model: agreement_analytics
    explore: agmt_requests
    listens_to_filters: []
    field: agmt_requests.xrevcode
