view: enrollmentcoc {
  sql_table_name: enrollmentcoc ;;

  dimension: coccode {
    type: string
    sql: ${TABLE}.COCCode ;;
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

  dimension: enrollment_cocid {
    type: string
    sql: ${TABLE}.EnrollmentCOCID ;;
  }

  dimension: export_id {
    type: string
    # hidden: yes
    sql: ${TABLE}.ExportID ;;
  }

  dimension: informationdate {
    type: string
    sql: ${TABLE}.Informationdate ;;
  }

  dimension: personal_id {
    type: string
    sql: ${TABLE}.PersonalID ;;
  }

  dimension: project_entry_id {
    type: string
    sql: ${TABLE}.ProjectEntryID ;;
  }

  dimension: project_id {
    type: string
    # hidden: yes
    sql: ${TABLE}.ProjectID ;;
  }

  dimension: user_id {
    type: string
    sql: ${TABLE}.UserID ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  # ----- Sets of fields for drilling ------
  set: detail {
    fields: [
      export.export_id,
      export.source_name,
      export.software_name,
      project.project_id,
      project.project_common_name,
      project.project_name
    ]
  }
}