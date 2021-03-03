include: "/views/custom/client_files.view"

view: +client_files {

  measure: roi_count {
    group_label: "Counts"
    view_label: "Analysis - Custom"
    label: "Client File Count"
    type: count_distinct
    drill_fields: [client_files_drill_fields*]

    sql: ${FileID} ;;
  }

  measure: category_null_or_empty_value_count {
    group_label: "Counts"
    view_label: "Analysis - Custom"
    label: "Category is Null or Empty Count"
    type: count_distinct
    filters: [
      Category: "NULL,EMPTY"
    ]
    drill_fields: [client_files_drill_fields*]
    sql: ${FileID} ;;
  }

  measure: custom_services_without_key_in_services_count {
    group_label: "Counts"
    view_label: "Analysis - Custom"
    label: "Count of Custom Categories without Key in ClientFileCategories Count"
    type: number
    sql:
        COUNT(DISTINCT CASE WHEN ${Category} NOT IN (SELECT id FROM client_file_categories)
                   THEN ${FileID}
                   ELSE NULL
              END)
    ;;
  }

  measure: file_name_null_or_empty_value_count {
    group_label: "Counts"
    view_label: "Analysis - Custom"
    label: "Address1 is Null or Empty Count"
    type: count_distinct
    filters: [
      FileName: "NULL,EMPTY"
    ]
    drill_fields: [client_files_drill_fields*]
    sql: ${FileID} ;;
  }

  set: client_files_drill_fields {
    fields: [
      FileID,
      PersonalID
    ]
  }
}
