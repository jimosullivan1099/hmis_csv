include: "/views/custom/services_custom.view"

view: +services_custom {

  measure: services_count {
    group_label: "Counts"
    view_label: "Analysis - Custom"
    label: "Services Count"
    type: count_distinct
    drill_fields: [servicess_custom_drill_fields*]

    sql: ${ServicesID} ;;
  }

  measure: service_item_id_null_or_empty_value_count {
    group_label: "Counts"
    view_label: "Analysis - Custom"
    label: "ServiceItemID is Null or Empty Count"
    type: count_distinct
    filters: [
      ServiceItemID: "NULL,EMPTY"
    ]
    drill_fields: [servicess_custom_drill_fields*]
    sql: ${ServiceItemID} ;;
  }

  measure: custom_services_without_key_in_services_count {
    group_label: "Counts"
    view_label: "Analysis - Custom"
    label: "Count of Custom ServicesID without Key in Services Count"
    type: number
    sql:
        COUNT(DISTINCT CASE WHEN ${ServicesID} NOT IN (SELECT ServicesID FROM services)
                   THEN ${ServicesID}
                   ELSE NULL
              END)
    ;;
  }

  measure: date_provided_null_or_empty_value_count {
    group_label: "Counts"
    view_label: "Analysis - Custom"
    label: "DateProvided is Null or Empty Count"
    type: count_distinct
    filters: [
      DateProvided: "NULL,EMPTY"
    ]
    drill_fields: [servicess_custom_drill_fields*]
    sql: ${ServicesID} ;;
  }

  measure: date_provided_wrong_format_count {
    group_label: "Counts"
    view_label: "Analysis - Custom"
    label: "DateProvided in Invalid Format Count"
    type: count_distinct
    filters: [
      DateProvided: "-____-__-__"
    ]
    drill_fields: [servicess_custom_drill_fields*]
    sql: ${ServicesID} ;;
  }

  set: servicess_custom_drill_fields {
    fields: [
      ServicesID,
      PersonalID
    ]
  }
}
