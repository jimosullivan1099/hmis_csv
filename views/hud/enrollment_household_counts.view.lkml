view: enrollment_household_counts {
  derived_table: {
    sql:
      SELECT HouseholdID,
        COUNT(PersonalID) AS count_clients,
        COUNT(Distinct PersonalID) AS count_distinct_clients,
        COUNT(CASE RelationshipToHoH WHEN '1' THEN 1 ELSE NULL END) AS count_hoh,
        COUNT(EnrollmentID) AS enrollment_count,
        (COUNT(Distinct EnrollmentID) / COUNT(Distinct PersonalID)) AS enrollments_per_client_ratio
      FROM enrollment
      GROUP BY HouseholdID
      ;;
    indexes: ["HouseholdID"]
  }

  measure: count {
    type: count
  }

  measure: count_distinct {
    type: count_distinct
    sql:  ${HouseholdID} ;;
  }

  dimension: HouseholdID {
    type: string
    primary_key: yes
    label: "HouseholdID"
    sql: ${TABLE}.HouseholdID ;;
  }

  dimension: count_clients {
    type: number
    sql: ${TABLE}.count_clients ;;
  }

  dimension: count_distinct_clients {
    type: number
    sql: ${TABLE}.count_distinct_clients ;;
  }

  dimension: count_hoh {
    type: number
    sql: ${TABLE}.count_hoh ;;
  }

  dimension: enrollment_count {
    type: number
    sql: ${TABLE}.enrollment_count ;;
  }

  dimension: enrollments_per_client_ratio {
    type: number
    sql: ${TABLE}.enrollments_per_client_ratio ;;
  }

  measure: multi_hoh_count {
    group_label: "Household Issues"
    view_label: "Major Issues"
    label: "Households with multiple HoHs"
    type: count_distinct

    filters: {
      field: count_hoh
      value: ">1"
    }
    filters: {
      field: HouseholdID
      value: "-NULL,-EMPTY"
    }

    drill_fields: [household_count_drill_fields*]
    sql: ${HouseholdID} ;;
  }

  measure: no_hoh_count {
    group_label: "Household Issues"
    view_label: "Major Issues"
    label: "Households with no HoH"
    type: count_distinct

    filters: {
      field: count_hoh
      value: "0"
    }
    filters: {
      field: HouseholdID
      value: "-NULL,-EMPTY"
    }

    drill_fields: [household_count_drill_fields*]
    sql: ${HouseholdID} ;;
  }

  measure: reused_hhid_count {
    group_label: "Household Issues"
    view_label: "Major Issues"
    label: "Duplicate HouseholdIDs"
    description: "HouseholdIDs should be unique for each individual or group enrollment. Usually, the number of enrollments that have the same HouseholdID is the same as the number of distinct clients for that enrollment. Blah blah blah"
    type: count_distinct


    filters: {
      field: enrollments_per_client_ratio
      value: "-1"
    }
    filters: {
      field: HouseholdID
      value: "-NULL,-EMPTY"
    }

    drill_fields: [household_count_drill_fields*]
    sql: ${HouseholdID} ;;
  }

  set: household_count_drill_fields {
    fields: [
      enrollment.EnrollmentID
      , enrollment.HouseholdID
      , enrollment.PersonalID
      , enrollment.RelationshipToHoH
    ]
  }
}
