- dashboard: major_issues
  title: Major Issues
  layout: newspaper
  elements:
  - title: Client.csv
    name: Client.csv
    model: hmis_csv
    explore: client
    type: looker_grid
    fields: [client.NullNameDataQuality, client.NullDOBDataQuality, client.NullSSNDataQuality]
    limit: 500
    column_limit: 50
    query_timezone: America/Los_Angeles
    show_view_names: false
    show_row_numbers: false
    transpose: false
    truncate_text: true
    hide_totals: false
    hide_row_totals: false
    size_to_fit: true
    series_labels:
      client.NullNameDataQuality: NameDataQuality
      client.NullDOBDataQuality: DOBDataQuality
      client.NullSSNDataQuality: SSNDataQuality
    series_cell_visualizations:
      client.NullNameDataQuality:
        is_active: false
      client.non_hud_dischargestatus:
        is_active: false
    series_text_format:
      client.NullNameDataQuality:
        align: center
      client.NullDOBDataQuality:
        align: center
      client.NullSSNDataQuality:
        align: center
      client.non_hud_dischargestatus:
        align: center
      client.non_hud_militarybranch:
        align: center
      client.non_hud_veteranstatus:
        align: center
    table_theme: white
    limit_displayed_rows: false
    enable_conditional_formatting: true
    header_text_alignment: center
    header_font_size: '18'
    rows_font_size: '24'
    conditional_formatting: [{type: not equal to, value: 0, background_color: '',
        font_color: "#e31a1c", color_application: {collection_id: legacy, palette_id: legacy_diverging1,
          options: {constraints: {min: {type: minimum}, mid: {type: number, value: 0},
              max: {type: maximum}}, mirror: true, reverse: false, stepped: false}},
        bold: true, italic: false, strikethrough: false, fields: !!null ''}]
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    series_types: {}
    listen: {}
    row: 19
    col: 1
    width: 10
    height: 3
  - name: ''
    type: text
    title_text: ''
    subtitle_text: ''
    body_text: |-
      <div class="vis" align="center" width="100%">
      <div>
      <br><br>
      <font color="#A3071A" size="6">
      Major Issues
      </font>
      </div>
      <div class="subtitle-text">
      <font size="3">
      In this section, we present major issues that we found when reviewing the CSV data. These types of issues either prevent the ability to import the data altogether or can cause significant problems with data integrity that are extremely difficult and costly to try to adjust post-import.
      These issues need to be resolved before we attempt to import any data.
      </font>
      </div>
      </div>
    row: 8
    col: 2
    width: 20
    height: 4
  - name: Null Values for Required Fields
    type: text
    title_text: Null Values for Required Fields
    subtitle_text: The following counts show records that have required fields with
      null values.
    body_text: "---"
    row: 14
    col: 1
    width: 10
    height: 5
  - title: Household Issues
    name: Household Issues
    model: hmis_csv
    explore: client
    type: looker_grid
    fields: [enrollment_household_counts.reused_hhid_count, enrollment_household_counts.multi_hoh_count,
      enrollment_household_counts.no_hoh_count]
    limit: 500
    query_timezone: America/Los_Angeles
    show_view_names: false
    show_row_numbers: false
    transpose: false
    truncate_text: true
    hide_totals: false
    hide_row_totals: false
    size_to_fit: true
    series_labels:
      enrollment_household_counts.multi_hoh_count: Multiple HoHs
      enrollment_household_counts.no_hoh_count: No HoH
    series_cell_visualizations:
      enrollment_household_counts.reused_hhid_count:
        is_active: false
      enrollment_household_counts.no_hoh_count:
        is_active: false
    series_text_format:
      enrollment_household_counts.reused_hhid_count:
        align: center
      enrollment_household_counts.multi_hoh_count:
        align: center
      enrollment_household_counts.no_hoh_count:
        align: center
    table_theme: white
    limit_displayed_rows: false
    enable_conditional_formatting: true
    header_text_alignment: center
    header_font_size: '16'
    rows_font_size: '24'
    conditional_formatting: [{type: not equal to, value: 0, background_color: "#A3071A",
        font_color: "#e7e7e7", color_application: {collection_id: legacy, palette_id: legacy_diverging1,
          options: {constraints: {min: {type: minimum}, mid: {type: number, value: 0},
              max: {type: maximum}}, mirror: true, reverse: false, stepped: false}},
        bold: false, italic: false, strikethrough: false, fields: !!null ''}]
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    series_types: {}
    note_state: expanded
    note_display: above
    note_text: Household issues can cause major reporting issues if not fixed.  If
      Bitfocus migrates these households as-is it could potentially group enrollments
      into incorrect households resulting in numerous reporting problems, etc.
    listen: {}
    row: 27
    col: 0
    width: 12
    height: 4
  - name: ''
    type: text
    body_text: <div class="vis"><br><br><img src="https://drive.google.com/uc?id=1aQ0ElBPWjnachADMxzKCtPVCAqlFQDPO"
      width="100%"></div>
    row: 0
    col: 0
    width: 8
    height: 6
  - name: ''
    type: text
    title_text: ''
    subtitle_text: ''
    body_text: |-
      <div class="vis" align="center" width="100%">
      <br><br><br><br><br>
      <div>
      <font color="#23405E" size="8">
      Nebraska HMIS CSV V2020 Review
      </font>
      </div>
      <div class="subtitle-text">
      <font size="3">
      Bitfocus presents results of reviewing the Customer Name HMIS CSV data set received on 03/05/2020.
      </font>
      </div>
      </div>
    row: 0
    col: 8
    width: 16
    height: 6
  - title: Empty Line
    name: Empty Line
    model: hmis_csv
    explore: client
    type: single_value
    fields: [client.dark_blue_bar]
    sorts: [client.html_elem]
    limit: 1
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
    listen: {}
    row: 12
    col: 0
    width: 24
    height: 2
  - title: Empty Line (copy 2)
    name: Empty Line (copy 2)
    model: hmis_csv
    explore: client
    type: single_value
    fields: [client.dark_blue_bar]
    sorts: [client.html_elem]
    limit: 1
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
    listen: {}
    row: 6
    col: 0
    width: 24
    height: 2
  - name: ''
    type: text
    body_text: <div class="vis"></div>
    row: 8
    col: 0
    width: 2
    height: 4
  - name: ''
    type: text
    body_text: <div class="vis"></div>
    row: 8
    col: 22
    width: 2
    height: 4
  - name: Non HUD / Invalid Values
    type: text
    title_text: Non HUD / Invalid Values
    subtitle_text: These results show records that have values that are not included
      in the HMIS CSV specifications.
    body_text: |-
            In some cases these may need to be mapped to a different value based on predetermined logic, and in other cases the data may need to be fixed in the source system and included in a new data set.
    row: 14
    col: 12
    width: 11
    height: 5
  - title: Non HUD Values for Client.csv
    name: Non HUD Values for Client.csv
    model: hmis_csv
    explore: client
    type: looker_grid
    fields: [client.non_hud_dischargestatus, client.non_hud_militarybranch, client.non_hud_veteranstatus]
    limit: 500
    column_limit: 50
    query_timezone: America/Los_Angeles
    show_view_names: false
    show_row_numbers: false
    transpose: false
    truncate_text: true
    hide_totals: false
    hide_row_totals: false
    size_to_fit: true
    series_labels:
      client.NullNameDataQuality: NameDataQuality
      client.NullDOBDataQuality: DOBDataQuality
      client.NullSSNDataQuality: SSNDataQuality
      client.non_hud_dischargestatus: DischargeStatus
      client.non_hud_militarybranch: MilitaryBranch
      client.non_hud_veteranstatus: VeteranStatus
    series_cell_visualizations:
      client.NullNameDataQuality:
        is_active: false
      client.non_hud_dischargestatus:
        is_active: false
    series_text_format:
      client.NullNameDataQuality:
        align: center
      client.NullDOBDataQuality:
        align: center
      client.NullSSNDataQuality:
        align: center
      client.non_hud_dischargestatus:
        align: center
      client.non_hud_militarybranch:
        align: center
      client.non_hud_veteranstatus:
        align: center
    table_theme: white
    limit_displayed_rows: false
    enable_conditional_formatting: true
    header_text_alignment: center
    header_font_size: '18'
    rows_font_size: '24'
    conditional_formatting: [{type: not equal to, value: 0, background_color: '',
        font_color: "#e31a1c", color_application: {collection_id: legacy, palette_id: legacy_diverging1,
          options: {constraints: {min: {type: minimum}, mid: {type: number, value: 0},
              max: {type: maximum}}, mirror: true, reverse: false, stepped: false}},
        bold: true, italic: false, strikethrough: false, fields: !!null ''}]
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    series_types: {}
    listen: {}
    row: 19
    col: 12
    width: 11
    height: 3
  - title: Untitled
    name: Untitled
    model: hmis_csv
    explore: client
    type: single_value
    fields: [client.red_bar]
    sorts: [client.red_bar]
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
    listen: {}
    row: 25
    col: 0
    width: 24
    height: 2
  - title: Enrollment.csv
    name: Enrollment.csv
    model: hmis_csv
    explore: client
    type: looker_grid
    fields: [client.NullNameDataQuality, client.NullDOBDataQuality, client.NullSSNDataQuality]
    limit: 500
    column_limit: 50
    query_timezone: America/Los_Angeles
    show_view_names: false
    show_row_numbers: false
    transpose: false
    truncate_text: true
    hide_totals: false
    hide_row_totals: false
    size_to_fit: true
    series_labels:
      client.NullNameDataQuality: NameDataQuality
      client.NullDOBDataQuality: DOBDataQuality
      client.NullSSNDataQuality: SSNDataQuality
    series_cell_visualizations:
      client.NullNameDataQuality:
        is_active: false
      client.non_hud_dischargestatus:
        is_active: false
    series_text_format:
      client.NullNameDataQuality:
        align: center
      client.NullDOBDataQuality:
        align: center
      client.NullSSNDataQuality:
        align: center
      client.non_hud_dischargestatus:
        align: center
      client.non_hud_militarybranch:
        align: center
      client.non_hud_veteranstatus:
        align: center
    table_theme: white
    limit_displayed_rows: false
    enable_conditional_formatting: true
    header_text_alignment: center
    header_font_size: '18'
    rows_font_size: '24'
    conditional_formatting: [{type: not equal to, value: 0, background_color: '',
        font_color: "#e31a1c", color_application: {collection_id: legacy, palette_id: legacy_diverging1,
          options: {constraints: {min: {type: minimum}, mid: {type: number, value: 0},
              max: {type: maximum}}, mirror: true, reverse: false, stepped: false}},
        bold: true, italic: false, strikethrough: false, fields: !!null ''}]
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    series_types: {}
    note_state: collapsed
    note_display: hover
    note_text: ''
    listen: {}
    row: 22
    col: 1
    width: 10
    height: 3
  - title: Enrollment.csv
    name: Enrollment.csv
    model: hmis_csv
    explore: client
    type: looker_grid
    fields: [client.non_hud_dischargestatus, client.non_hud_militarybranch, client.non_hud_veteranstatus]
    limit: 500
    column_limit: 50
    query_timezone: America/Los_Angeles
    show_view_names: false
    show_row_numbers: false
    transpose: false
    truncate_text: true
    hide_totals: false
    hide_row_totals: false
    size_to_fit: true
    series_labels:
      client.NullNameDataQuality: NameDataQuality
      client.NullDOBDataQuality: DOBDataQuality
      client.NullSSNDataQuality: SSNDataQuality
      client.non_hud_dischargestatus: DischargeStatus
      client.non_hud_militarybranch: MilitaryBranch
      client.non_hud_veteranstatus: VeteranStatus
    series_cell_visualizations:
      client.NullNameDataQuality:
        is_active: false
      client.non_hud_dischargestatus:
        is_active: false
    series_text_format:
      client.NullNameDataQuality:
        align: center
      client.NullDOBDataQuality:
        align: center
      client.NullSSNDataQuality:
        align: center
      client.non_hud_dischargestatus:
        align: center
      client.non_hud_militarybranch:
        align: center
      client.non_hud_veteranstatus:
        align: center
    table_theme: white
    limit_displayed_rows: false
    enable_conditional_formatting: true
    header_text_alignment: center
    header_font_size: '18'
    rows_font_size: '24'
    conditional_formatting: [{type: not equal to, value: 0, background_color: '',
        font_color: "#e31a1c", color_application: {collection_id: legacy, palette_id: legacy_diverging1,
          options: {constraints: {min: {type: minimum}, mid: {type: number, value: 0},
              max: {type: maximum}}, mirror: true, reverse: false, stepped: false}},
        bold: true, italic: false, strikethrough: false, fields: !!null ''}]
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    series_types: {}
    listen: {}
    row: 22
    col: 12
    width: 11
    height: 3
