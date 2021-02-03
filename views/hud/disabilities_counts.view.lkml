view: disabilities_counts{
  derived_table: {
    sql: SELECT PersonalID, EnrollmentID, DataCollectionStage, COUNT(Distinct DisabilitiesID)
      FROM disabilities
      GROUP BY EnrollmentID, DataCollectionStage
       ;;
    indexes: ["PersonalID", "EnrollmentID"]
    persist_for: "24 hours"
  }

  measure: count {
    type: count
  }

  dimension: PersonalID {
    type: string
    sql: ${TABLE}.PersonalID ;;
  }

  dimension: EnrollmentID {
    type: string
    sql: ${TABLE}.EnrollmentID ;;
  }

  dimension: DataCollectionStage {
    type: string
    sql: ${TABLE}.DataCollectionStage ;;
  }

  dimension: disability_count_by_enrollment_and_dcs {
    type: string
    sql: ${TABLE}.`COUNT(Distinct DisabilitiesID)` ;;
  }

  dimension: count_mod_6 {
    type: number
    sql: ${disability_count_by_enrollment_and_dcs} % 6 ;;
  }
}
