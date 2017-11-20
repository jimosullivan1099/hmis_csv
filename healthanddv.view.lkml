view: healthanddv {
  sql_table_name: healthanddv ;;

  dimension: currently_fleeing {
    type: string
    sql: ${TABLE}.CurrentlyFleeing ;;
  }

  dimension: data_collection_stage {
    type: string
    sql: ${TABLE}.DataCollectionStage ;;
  }

  dimension: date_created {
    type: string
    sql: ${TABLE}.DateCreated ;;
  }

  dimension: date_deleted {
    type: string
    sql: ${TABLE}.DateDeleted ;;
  }

  dimension: date_updated {
    type: string
    sql: ${TABLE}.DateUpdated ;;
  }

  dimension: dental_health_status {
    type: string
    sql: ${TABLE}.DentalHealthStatus ;;
  }

  dimension: domestic_violence_victim {
    type: string
    sql: ${TABLE}.DomesticViolenceVictim ;;
  }

  dimension: due_date {
    type: string
    sql: ${TABLE}.DueDate ;;
  }

  dimension: export_id {
    type: string
    # hidden: yes
    sql: ${TABLE}.ExportID ;;
  }

  dimension: general_health_status {
    type: string
    sql: ${TABLE}.GeneralHealthStatus ;;
  }

  dimension: health_and_dvid {
    type: string
    sql: ${TABLE}.HealthAndDVID ;;
  }

  dimension: information_date {
    type: string
    sql: ${TABLE}.InformationDate ;;
  }

  dimension: mental_health_status {
    type: string
    sql: ${TABLE}.MentalHealthStatus ;;
  }

  dimension: personal_id {
    type: string
    sql: ${TABLE}.PersonalID ;;
  }

  dimension: pregnancy_status {
    type: string
    sql: ${TABLE}.PregnancyStatus ;;
  }

  dimension: enrollment_id {
    type: string
    sql: ${TABLE}.EnrollmentID ;;
  }

  dimension: user_id {
    type: string
    sql: ${TABLE}.UserID ;;
  }

  dimension: when_occurred {
    type: string
    sql: ${TABLE}.WhenOccurred ;;
  }

  measure: count {
    type: count
    drill_fields: [export.export_id, export.source_name, export.software_name]
  }
}
