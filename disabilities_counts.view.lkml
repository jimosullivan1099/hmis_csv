view: disabilities_counts{
  derived_table: {
    sql: SELECT PersonalID, ProjectEntryID, DataCollectionStage, COUNT(Distinct DisabilitiesID)
      FROM disabilities
      GROUP BY ProjectEntryID, DataCollectionStage
       ;;
    indexes: ["ProjectEntryId"]
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  dimension: personal_id {
    type: string
    sql: ${TABLE}.PersonalID ;;
  }

  dimension: project_entry_id {
    type: string
    sql: ${TABLE}.ProjectEntryID ;;
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
    fields: [personal_id, project_entry_id, data_collection_stage, disability_count_by_enrollment_and_dcs]
  }
}
