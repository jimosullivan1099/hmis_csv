view: disabilities_counts{
  derived_table: {
    sql: SELECT PersonalID, EnrollmentID, DataCollectionStage, COUNT(Distinct DisabilitiesID)
      FROM disabilities
      GROUP BY EnrollmentID, DataCollectionStage
       ;;
    indexes: ["EnrollmentID"]
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  dimension: personal_id {
    type: string
    sql: ${TABLE}.PersonalID ;;
  }

  dimension: enrollment_id {
    type: string
    sql: ${TABLE}.EnrollmentID ;;
  }

  dimension: data_collection_stage {
    type: string
    sql: ${TABLE}.DataCollectionStage ;;
  }

  dimension: disability_count_by_enrollment_and_dcs {
    type: string
    sql: ${TABLE}.`COUNT(Distinct DisabilitiesID)` ;;
  }

  set: detail {
    fields: [personal_id, enrollment_id, data_collection_stage, disability_count_by_enrollment_and_dcs]
  }
}
