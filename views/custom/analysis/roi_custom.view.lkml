include: "/views/custom/roi_custom.view"

view: +roi_custom {

  measure: roi_count {
    group_label: "Counts"
    view_label: "Analysis - Custom"
    label: "ROI Count"
    type: count_distinct
    drill_fields: [roi_custom_drill_fields*]

    sql: ${ROIID} ;;
  }

  measure: permission_null_or_empty_value_count {
    group_label: "Counts"
    view_label: "Analysis - Custom"
    label: "Permission is Null or Empty Count"
    type: count_distinct
    filters: [
      Permission: "NULL,EMPTY"
    ]
    drill_fields: [roi_custom_drill_fields*]
    sql: ${ROIID} ;;
  }

  measure: permission_invalid_value_count {
    group_label: "Counts"
    view_label: "Analysis - Custom"
    label: "Permission not Allowed Count"
    type: count_distinct
    filters: [
      Permission: "-0,-1,-NULL,-EMPTY"
    ]
    drill_fields: [roi_custom_drill_fields*]
    sql: ${ROIID} ;;
  }

  measure: start_date_null_or_empty_value_count {
    group_label: "Counts"
    view_label: "Analysis - Custom"
    label: "Start Date is Null or Empty Count"
    type: count_distinct
    filters: [
      StartDate: "NULL,EMPTY"
    ]
    drill_fields: [roi_custom_drill_fields*]
    sql: ${ROIID} ;;
  }

  measure: start_date_wrong_format_count {
    group_label: "Counts"
    view_label: "Analysis - Custom"
    label: "Start Date in Invalid Format Count"
    type: count_distinct
    filters: [
      StartDate: "-____-__-__"
    ]
    drill_fields: [roi_custom_drill_fields*]
    sql: ${ROIID} ;;
  }

  measure: end_date_null_or_empty_value_count {
    group_label: "Counts"
    view_label: "Analysis - Custom"
    label: "End Date is Null or Empty Count"
    type: count_distinct
    filters: [
      EndDate: "NULL,EMPTY"
    ]
    drill_fields: [roi_custom_drill_fields*]
    sql: ${ROIID} ;;
  }

  measure: end_date_wrong_format_count {
    group_label: "Counts"
    view_label: "Analysis - Custom"
    label: "End Date in Invalid Format Count"
    type: count_distinct
    filters: [
      EndDate: "-____-__-__"
    ]
    drill_fields: [roi_custom_drill_fields*]
    sql: ${ROIID} ;;
  }

  measure: end_date_before_start_date_count {
    group_label: "Counts"
    view_label: "Analysis - Custom"
    label: "End Date that is before the Start Date Count"
    type: count_distinct

    drill_fields: [roi_custom_drill_fields*]
    sql: IF(${EndDate} < ${StartDate}, ${ROIID}, NULL) ;;
  }

  measure: documentation_null_or_empty_value_count {
    group_label: "Counts"
    view_label: "Analysis - Custom"
    label: "Documentation is Null or Empty Count"
    type: count_distinct
    filters: [
      Documentation: "NULL,EMPTY"
    ]
    drill_fields: [roi_custom_drill_fields*]
    sql: ${ROIID} ;;
  }

  measure: documentation_invalid_value_count {
    group_label: "Counts"
    view_label: "Analysis - Custom"
    label: "Documentation is Invalid Value Count"
    type: count_distinct
    filters: [
      Documentation: "-1,-2,-3,-4,-5,-6,-7,-8,-NULL,-EMPTY"
    ]
    drill_fields: [roi_custom_drill_fields*]
    sql: ${ROIID} ;;
  }

  measure: documentation_invalid_value_count {
    group_label: "Counts"
    view_label: "Analysis - Custom"
    label: "Records with a 3 or 5 for Documentation but no Location specified Count"
    type: count_distinct
    drill_fields: [roi_custom_drill_fields*]
    sql: IF(${Documentation} IN (3, 5)
            AND (${Location} = '' OR ${Location} IS NULL),
           ${ROIID}, NULL)
    ;;
  }

  set: roi_custom_drill_fields {
    fields: [
      ROIID,
      PersonalID
    ]
  }
}
