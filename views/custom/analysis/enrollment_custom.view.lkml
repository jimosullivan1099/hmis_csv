include: "/views/custom/enrollment_custom.view"

view: +enrollment_custom {

  measure: enrollment_count {
    group_label: "Counts"
    view_label: "Analysis - Custom"
    label: "Enrollment Count"
    type: count_distinct
    drill_fields: [enrollments_custom_drill_fields*]

    sql: ${EnrollmentCustomID} ;;
  }

  measure: data_collection_stage_null_or_empty_value_count {
    group_label: "Counts"
    view_label: "Analysis - Custom"
    label: "Data Collection Stage is Null or Empty Count"
    type: count_distinct
    filters: [
      DataCollectionStage: "NULL,EMPTY"
    ]
    drill_fields: [enrollments_custom_drill_fields*]
    sql: ${EnrollmentCustomID} ;;
  }

  measure: permission_invalid_value_count {
    group_label: "Counts"
    view_label: "Analysis - Custom"
    label: "Data Collection Stage not Allowed Count"
    type: count_distinct
    filters: [
      DataCollectionStage: "-1,-2,-3,-5,-6,-NULL,-EMPTY"
    ]
    drill_fields: [enrollments_custom_drill_fields*]
    sql: ${EnrollmentCustomID} ;;
  }

  set: enrollments_custom_drill_fields {
    fields: [
      EnrollmentCustomID,
      PersonalID
    ]
  }
}
