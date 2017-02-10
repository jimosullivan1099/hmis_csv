view: funder {
  sql_table_name: funder ;;

  dimension: funder_id {
    primary_key: yes
    type: string
    sql: ${TABLE}.FunderID ;;
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

  dimension: end_date {
    type: string
    sql: ${TABLE}.EndDate ;;
  }

  dimension: export_id {
    type: string
    # hidden: yes
    sql: ${TABLE}.ExportID ;;
  }

  dimension: funder {
    type: string
    sql: ${TABLE}.Funder ;;
  }

  dimension: grant_id {
    type: string
    sql: ${TABLE}.GrantID ;;
  }

  dimension: project_id {
    type: string
    # hidden: yes
    sql: ${TABLE}.ProjectID ;;
  }

  dimension: start_date {
    type: string
    sql: ${TABLE}.StartDate ;;
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
      funder_id,
      project.project_id,
      project.project_common_name,
      project.project_name,
      export.export_id,
      export.source_name,
      export.software_name
    ]
  }
}