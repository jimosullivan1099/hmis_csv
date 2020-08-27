view: disability_types_counts {
  derived_table: {
    sql:
      SELECT EnrollmentID, DisabilityType, DataCollectionStage, COUNT(DisabilitiesID) AS count
      FROM disabilities
      GROUP BY EnrollmentID, DisabilityType, DataCollectionStage
       ;;
    indexes: ["EnrollmentID"]
    persist_for: "24 hours"
  }

  dimension: EnrollmentID {
    type: string
    sql: ${TABLE}.EnrollmentID ;;
  }

  dimension: DisabilityType {
    type: string
    sql: ${TABLE}.DisabilityType ;;
  }

  dimension: DataCollectionStage {
    type: string
    sql: ${TABLE}.DataCollectionStage ;;
  }

  dimension: disabilities_count {
    type: number
    sql: ${TABLE}.count ;;
  }

  measure: count {
    type: count
  }
}
