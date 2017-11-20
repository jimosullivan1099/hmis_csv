view: employmenteducation {
  sql_table_name: employmenteducation ;;

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

  dimension: employed {
    type: string
    sql: ${TABLE}.Employed ;;
  }

  dimension: employment_education_id {
    type: string
    sql: ${TABLE}.EmploymentEducationID ;;
  }

  dimension: employment_type {
    type: string
    sql: ${TABLE}.EmploymentType ;;
  }

  dimension: export_id {
    type: string
    # hidden: yes
    sql: ${TABLE}.ExportID ;;
  }

  dimension: information_date {
    type: string
    sql: ${TABLE}.InformationDate ;;
  }

  dimension: last_grade_completed {
    type: string
    sql: ${TABLE}.LastGradeCompleted ;;
  }

  dimension: not_employed_reason {
    type: string
    sql: ${TABLE}.NotEmployedReason ;;
  }

  dimension: personal_id {
    type: string
    sql: ${TABLE}.PersonalID ;;
  }

  dimension: enrollment_id {
    type: string
    sql: ${TABLE}.EnrollmentID ;;
  }

  dimension: school_status {
    type: string
    sql: ${TABLE}.SchoolStatus ;;
  }

  dimension: user_id {
    type: string
    sql: ${TABLE}.UserID ;;
  }

  measure: count {
    type: count
    drill_fields: [export.export_id, export.source_name, export.software_name]
  }
}
