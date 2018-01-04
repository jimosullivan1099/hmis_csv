view: enrollment_household_counts{
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
}
