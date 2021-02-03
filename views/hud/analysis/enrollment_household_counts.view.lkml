include: "/views/hud/enrollment_household_counts.view"

view: +enrollment_household_counts {
  dimension: bool_reused_household_id {
    hidden: yes
    type: yesno
    sql: CASE
            WHEN (
              ${enrollment_household_counts.count_distinct_clients} != ${enrollment_household_counts.enrollment_count}
              AND ${enrollment_household_counts.HouseholdID} IS NOT NULL
              AND ${enrollment_household_counts.HouseholdID} != ""
            ) THEN true
            ELSE false
          END ;;
  }

  measure: distinct_client_count_in_a_household_not_equal_to_enrollment_count_in_that_household {
    group_label: "Household"
    view_label: "Analysis - Major"
    label: "Distinct client count in a household not equal to enrollment count in that household"
    type: count_distinct

    filters: [
      enrollment_household_counts.bool_reused_household_id: "yes",
    ]

    drill_fields: [enrollment_household_counts_queries_drill_fields*]
    sql: ${HouseholdID} ;;
  }

  measure: household_count_of_records_where_there_is_more_than_one_hoh_relationshiptohoh_equals_1 {
    group_label: "Household"
    view_label: "Analysis - Major"
    label: "Household: count of records where there is more than one HoH (RelationshipToHoH = 1)"
    type: count_distinct

    filters: [
      enrollment_household_counts.count_hoh: ">1",
      enrollment_household_counts.HouseholdID: "-NULL,-EMPTY"
    ]

    drill_fields: [enrollment_household_counts_queries_drill_fields*]
    sql: ${HouseholdID} ;;
  }

  measure: household_count_of_records_where_there_is_no_hoh_relationshiptohoh_equals_1 {
    group_label: "Household"
    view_label: "Analysis - Major"
    label: "Household: count of records where there is no HoH (RelationshipToHoH = 1)"
    type: count_distinct

    filters: [
      enrollment_household_counts.count_hoh: "0",
      enrollment_household_counts.HouseholdID: "-NULL,-EMPTY"
    ]

    drill_fields: [enrollment_household_counts_queries_drill_fields*]
    sql: ${HouseholdID} ;;
  }

  measure: count_hoh_without_enrollment_coc_at_entry {
    group_label: "EnrollmentCoC"
    view_label: "Analysis - Major"
    label: "Household: count of records where the HoH does not have an EnrollmentCoC record at entry"
    type: count_distinct

    filters: [
      enrollment.RelationshipToHoH: "1",
      enrollmentcoc_at_entry.EnrollmentCoCID: "NULL,EMPTY",
      enrollment.HouseholdID: "-NULL,-EMPTY"
    ]

    drill_fields: [enrollment_household_counts_queries_drill_fields*]
    sql: ${HouseholdID} ;;
  }

  set: enrollment_household_counts_queries_drill_fields {
    fields: [
      HouseholdID,
      enrollment.ProjectID,
      project.ProjectName
    ]
  }
}
