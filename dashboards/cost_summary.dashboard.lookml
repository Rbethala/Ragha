- dashboard: cost_summary
  title: Cost Summary
  layout: newspaper
  preferred_viewer: dashboards-next
  elements:
  - title: YTD Costs
    name: YTD Costs
    model: gcp_billing_block
    explore: gcp_billing_export
    type: single_value
    fields: [gcp_billing_export.total_cost, gcp_billing_export.period_selected]
    filters:
      gcp_billing_export.period: Year
      gcp_billing_export.period_selected: "-NULL"
    sorts: [gcp_billing_export.total_cost desc]
    limit: 500
    column_limit: 50
    dynamic_fields: [{table_calculation: change, label: Change, expression: "(${gcp_billing_export.total_cost}-offset(${gcp_billing_export.total_cost},1))\n\
          /if(${gcp_billing_export.total_cost}=0,null,${gcp_billing_export.total_cost})",
        value_format: !!null '', value_format_name: percent_2, _kind_hint: measure,
        _type_hint: number}]
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: true
    comparison_type: change
    comparison_reverse_colors: true
    show_comparison_label: false
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
    show_null_points: true
    interpolation: linear
    hidden_fields: [gcp_billing_export.period_selected]
    note_state: collapsed
    note_display: hover
    note_text: All costs for this year up until today's date compared with last year's
      costs, from the beginning of last year until the same day last year
    listen:
      Project ID: gcp_billing_export.project__id
      Service Type: gcp_billing_export.service__description
    row: 2
    col: 0
    width: 8
    height: 3
  - title: QTD Costs
    name: QTD Costs
    model: gcp_billing_block
    explore: gcp_billing_export
    type: single_value
    fields: [gcp_billing_export.total_cost, gcp_billing_export.period_selected]
    filters:
      gcp_billing_export.period: Quarter
      gcp_billing_export.period_selected: "-NULL"
    sorts: [gcp_billing_export.total_cost desc]
    limit: 500
    column_limit: 50
    dynamic_fields: [{table_calculation: change, label: Change, expression: "(${gcp_billing_export.total_cost}-offset(${gcp_billing_export.total_cost},1))\n\
          /if(${gcp_billing_export.total_cost}=0,null,${gcp_billing_export.total_cost})",
        value_format: !!null '', value_format_name: percent_2, _kind_hint: measure,
        _type_hint: number}]
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: true
    comparison_type: change
    comparison_reverse_colors: true
    show_comparison_label: false
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
    show_null_points: true
    interpolation: linear
    hidden_fields: [gcp_billing_export.period_selected]
    note_state: collapsed
    note_display: hover
    note_text: All costs for this quarter up until today's date compared with last
      quarter's costs, from the beginning of last quarter until the same day last
      quarter
    listen:
      Project ID: gcp_billing_export.project__id
      Service Type: gcp_billing_export.service__description
    row: 2
    col: 8
    width: 8
    height: 3
  - title: MTD Costs
    name: MTD Costs
    model: gcp_billing_block
    explore: gcp_billing_export
    type: single_value
    fields: [gcp_billing_export.total_cost, gcp_billing_export.period_selected]
    filters:
      gcp_billing_export.period: Month
      gcp_billing_export.period_selected: "-NULL"
    sorts: [gcp_billing_export.total_cost desc]
    limit: 500
    column_limit: 50
    dynamic_fields: [{table_calculation: change, label: Change, expression: "(${gcp_billing_export.total_cost}-offset(${gcp_billing_export.total_cost},1))\n\
          /if(${gcp_billing_export.total_cost}=0,null,${gcp_billing_export.total_cost})",
        value_format: !!null '', value_format_name: percent_2, _kind_hint: measure,
        _type_hint: number}]
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: true
    comparison_type: change
    comparison_reverse_colors: true
    show_comparison_label: false
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
    show_null_points: true
    interpolation: linear
    hidden_fields: [gcp_billing_export.period_selected]
    note_state: collapsed
    note_display: hover
    note_text: All costs for this month up until today's date compared with last month's
      costs, from the beginning of last month until the same day month year
    listen:
      Project ID: gcp_billing_export.project__id
      Service Type: gcp_billing_export.service__description
    row: 2
    col: 16
    width: 8
    height: 3
  - title: YTD Cost Trends
    name: YTD Cost Trends
    model: gcp_billing_block
    explore: gcp_billing_export
    type: looker_line
    fields: [gcp_billing_export.total_cost, gcp_billing_export.usage_start_month_name,
      gcp_billing_export.usage_start_year, gcp_billing_export.currency]
    pivots: [gcp_billing_export.usage_start_year]
    fill_fields: [gcp_billing_export.usage_start_year]
    filters:
      gcp_billing_export.usage_start_year: 3 years
    sorts: [gcp_billing_export.usage_start_year 0, gcp_billing_export.usage_start_month_name]
    limit: 500
    dynamic_fields: [{table_calculation: mom_change, label: MoM Change $, expression: "${gcp_billing_export.total_cost}-offset(${gcp_billing_export.total_cost},-1)",
        value_format: !!null '', value_format_name: usd, _kind_hint: measure, _type_hint: number}]
    x_axis_gridlines: false
    y_axis_gridlines: false
    show_view_names: false
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: false
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
    show_null_points: false
    interpolation: linear
    y_axes: [{label: '', orientation: left, series: [{axisId: mom_change, id: 2020
              - mom_change, name: 2020 - MoM Change $}, {axisId: mom_change, id: 2021
              - mom_change, name: 2021 - MoM Change $}, {axisId: gcp_billing_export.total_cost,
            id: 2020 - gcp_billing_export.total_cost, name: 2020 - Gcp Billing Export
              Total Cost}, {axisId: gcp_billing_export.total_cost, id: 2021 - gcp_billing_export.total_cost,
            name: 2021 - Gcp Billing Export Total Cost}], showLabels: false, showValues: true,
        unpinAxis: false, tickDensity: default, tickDensityCustom: 5, type: linear}]
    hidden_series: [2019 - mom_change]
    series_types:
      2019 - gcp_billing_export.total_cost: column
      2020 - gcp_billing_export.total_cost: column
      2021 - gcp_billing_export.total_cost: column
    series_colors:
      2021 - mom_change: "#EA4335"
      2019 - gcp_billing_export.total_cost: "#E57947"
      2019 - mom_change: "#BDC1C6"
      2021 - gcp_billing_export.total_cost: "#4285F4"
    series_labels: {}
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    defaults_version: 1
    hidden_fields: [gcp_billing_export.currency]
    listen:
      Project ID: gcp_billing_export.project__id
      Service Type: gcp_billing_export.service__description
    row: 5
    col: 8
    width: 16
    height: 9
  - title: YTD Cost by Top Services
    name: YTD Cost by Top Services
    model: gcp_billing_block
    explore: gcp_billing_export
    type: looker_bar
    fields: [gcp_billing_export.total_cost, gcp_billing_export.service__description]
    filters:
      gcp_billing_export.period: Year
      gcp_billing_export.period_selected: This Year to Date
    sorts: [gcp_billing_export.total_cost desc]
    limit: 15
    column_limit: 50
    dynamic_fields: [{table_calculation: change, label: Change, expression: "(${gcp_billing_export.total_cost}-offset(${gcp_billing_export.total_cost},1))\n\
          /if(${gcp_billing_export.total_cost}=0,null,${gcp_billing_export.total_cost})",
        value_format: !!null '', value_format_name: percent_2, _kind_hint: measure,
        _type_hint: number, is_disabled: true}]
    x_axis_gridlines: false
    y_axis_gridlines: false
    show_view_names: false
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: false
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
    y_axes: [{label: '', orientation: bottom, series: [{axisId: gcp_billing_export.total_cost,
            id: gcp_billing_export.total_cost, name: Total Cost}], showLabels: false,
        showValues: false, unpinAxis: false, tickDensity: default, tickDensityCustom: 5,
        type: linear}]
    label_value_format: ''
    series_types: {}
    value_labels: legend
    label_type: labPer
    inner_radius: 40
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: true
    comparison_type: change
    comparison_reverse_colors: true
    show_comparison_label: false
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    defaults_version: 1
    show_null_points: true
    interpolation: linear
    hidden_fields: []
    listen:
      Project ID: gcp_billing_export.project__id
      Service Type: gcp_billing_export.service__description
    row: 5
    col: 0
    width: 8
    height: 9
  - title: YTD Cost by Top Project
    name: YTD Cost by Top Project
    model: gcp_billing_block
    explore: gcp_billing_export
    type: looker_grid
    fields: [gcp_billing_export.total_cost, gcp_billing_export.project__name]
    filters:
      gcp_billing_export.period: Year
      gcp_billing_export.period_selected: This Year to Date
    sorts: [gcp_billing_export.total_cost desc]
    limit: 20
    column_limit: 50
    dynamic_fields: [{table_calculation: change, label: Change, expression: "(${gcp_billing_export.total_cost}-offset(${gcp_billing_export.total_cost},1))\n\
          /if(${gcp_billing_export.total_cost}=0,null,${gcp_billing_export.total_cost})",
        value_format: !!null '', value_format_name: percent_2, _kind_hint: measure,
        _type_hint: number, is_disabled: true}]
    show_view_names: false
    show_row_numbers: false
    transpose: false
    truncate_text: true
    hide_totals: false
    hide_row_totals: false
    size_to_fit: true
    table_theme: unstyled
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
    series_cell_visualizations:
      gcp_billing_export.total_cost:
        is_active: true
        palette:
          palette_id: b5ac8c75-94c6-2c87-eca2-6b9b2050d0b0
          collection_id: google
          custom_colors:
          - "#ffffff"
          - "#4285F4"
    series_text_format:
      gcp_billing_export.project__name:
        bold: true
    value_labels: legend
    label_type: labPer
    inner_radius: 40
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: true
    comparison_type: change
    comparison_reverse_colors: true
    show_comparison_label: false
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
    show_null_points: true
    interpolation: linear
    hidden_fields: []
    listen:
      Project ID: gcp_billing_export.project__id
      Service Type: gcp_billing_export.service__description
    row: 14
    col: 0
    width: 8
    height: 12
  - title: Monthly Cost by Service
    name: Monthly Cost by Service
    model: gcp_billing_block
    explore: gcp_billing_export
    type: looker_line
    fields: [gcp_billing_export.usage_start_month, gcp_billing_export.total_cost,
      gcp_billing_export.service__description]
    pivots: [gcp_billing_export.service__description]
    fill_fields: [gcp_billing_export.usage_start_month]
    filters:
      gcp_billing_export.usage_start_year: 12 months
    sorts: [gcp_billing_export.usage_start_month desc, gcp_billing_export.service__description]
    limit: 500
    dynamic_fields: [{table_calculation: mom_change, label: MoM Change $, expression: "${gcp_billing_export.total_cost}-offset(${gcp_billing_export.total_cost},1)",
        value_format: !!null '', value_format_name: usd, _kind_hint: measure, _type_hint: number,
        is_disabled: true}]
    x_axis_gridlines: false
    y_axis_gridlines: false
    show_view_names: false
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: false
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
    show_null_points: false
    interpolation: monotone
    y_axes: [{label: '', orientation: left, series: [{axisId: gcp_billing_export.total_cost,
            id: BigQuery - gcp_billing_export.total_cost, name: BigQuery}, {axisId: gcp_billing_export.total_cost,
            id: Cloud Build - gcp_billing_export.total_cost, name: Cloud Build}, {
            axisId: gcp_billing_export.total_cost, id: Cloud Functions - gcp_billing_export.total_cost,
            name: Cloud Functions}, {axisId: gcp_billing_export.total_cost, id: Cloud
              Pub/Sub - gcp_billing_export.total_cost, name: Cloud Pub/Sub}, {axisId: gcp_billing_export.total_cost,
            id: Cloud Scheduler - gcp_billing_export.total_cost, name: Cloud Scheduler},
          {axisId: gcp_billing_export.total_cost, id: Cloud Storage - gcp_billing_export.total_cost,
            name: Cloud Storage}, {axisId: gcp_billing_export.total_cost, id: Compute
              Engine - gcp_billing_export.total_cost, name: Compute Engine}, {axisId: gcp_billing_export.total_cost,
            id: Stackdriver Logging - gcp_billing_export.total_cost, name: Stackdriver
              Logging}], showLabels: false, showValues: true, unpinAxis: false, tickDensity: default,
        type: linear}]
    hidden_series: []
    series_types: {}
    series_colors:
      2021 - mom_change: "#34A853"
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    defaults_version: 1
    listen:
      Project ID: gcp_billing_export.project__id
      Service Type: gcp_billing_export.service__description
    row: 14
    col: 8
    width: 16
    height: 6
  - name: ''
    type: text
    title_text: ''
    subtitle_text: ''
    body_text: "<img src='https://cloud.google.com/images/social-icon-google-cloud-1200-630.png'\
      \ width = '100%' >"
    row: 0
    col: 0
    width: 3
    height: 2
  - name: <strong><font color="#000000 " size="6" weight="bold">GCP Cost Summary</font><strong>
    type: text
    title_text: <strong><font color="#000000 " size="6" weight="bold">GCP Cost Summary</font><strong>
    subtitle_text: "<i>Overview of Costs by Billing & Services </i>"
    body_text: ''
    row: 0
    col: 3
    width: 18
    height: 2
  - title: Monthly Cost by Project
    name: Monthly Cost by Project
    model: gcp_billing_block
    explore: gcp_billing_export
    type: looker_column
    fields: [gcp_billing_export.usage_start_month, gcp_billing_export.total_cost,
      gcp_billing_export.project__name]
    pivots: [gcp_billing_export.project__name]
    fill_fields: [gcp_billing_export.usage_start_month]
    filters:
      gcp_billing_export.usage_start_year: 12 months
    sorts: [gcp_billing_export.usage_start_month desc, gcp_billing_export.project__name]
    limit: 500
    dynamic_fields: [{table_calculation: mom_change, label: MoM Change $, expression: "${gcp_billing_export.total_cost}-offset(${gcp_billing_export.total_cost},1)",
        value_format: !!null '', value_format_name: usd, _kind_hint: measure, _type_hint: number,
        is_disabled: true}]
    x_axis_gridlines: false
    y_axis_gridlines: false
    show_view_names: false
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: false
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: normal
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
    y_axes: [{label: '', orientation: left, series: [{axisId: gcp_billing_export.total_cost,
            id: BigQuery - gcp_billing_export.total_cost, name: BigQuery}, {axisId: gcp_billing_export.total_cost,
            id: Cloud Build - gcp_billing_export.total_cost, name: Cloud Build}, {
            axisId: gcp_billing_export.total_cost, id: Cloud Functions - gcp_billing_export.total_cost,
            name: Cloud Functions}, {axisId: gcp_billing_export.total_cost, id: Cloud
              Pub/Sub - gcp_billing_export.total_cost, name: Cloud Pub/Sub}, {axisId: gcp_billing_export.total_cost,
            id: Cloud Scheduler - gcp_billing_export.total_cost, name: Cloud Scheduler},
          {axisId: gcp_billing_export.total_cost, id: Cloud Storage - gcp_billing_export.total_cost,
            name: Cloud Storage}, {axisId: gcp_billing_export.total_cost, id: Compute
              Engine - gcp_billing_export.total_cost, name: Compute Engine}, {axisId: gcp_billing_export.total_cost,
            id: Stackdriver Logging - gcp_billing_export.total_cost, name: Stackdriver
              Logging}], showLabels: false, showValues: true, unpinAxis: false, tickDensity: default,
        type: linear}]
    hidden_series: []
    series_types: {}
    series_colors:
      2021 - mom_change: "#34A853"
    show_null_points: false
    interpolation: monotone
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    defaults_version: 1
    listen:
      Project ID: gcp_billing_export.project__id
      Service Type: gcp_billing_export.service__description
    row: 20
    col: 8
    width: 16
    height: 6
  filters:
  - name: Project ID
    title: Project ID
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    ui_config:
      type: tag_list
      display: popover
      options: []
    model: gcp_billing_block
    explore: gcp_billing_export
    listens_to_filters: []
    field: gcp_billing_export.project__id
  - name: Service Type
    title: Service Type
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    ui_config:
      type: tag_list
      display: popover
      options: []
    model: gcp_billing_block
    explore: gcp_billing_export
    listens_to_filters: []
    field: gcp_billing_export.service__description
