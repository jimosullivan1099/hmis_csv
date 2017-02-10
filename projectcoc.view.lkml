view: projectcoc {
  sql_table_name: projectcoc ;;

  dimension: co_ccode {
    type: string
    sql: ${TABLE}.CoCCode ;;
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

  dimension: export_id {
    type: string
    # hidden: yes
    sql: ${TABLE}.ExportID ;;
  }

  dimension: project_co_cid {
    type: string
    sql: ${TABLE}.ProjectCoCID ;;
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