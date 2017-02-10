view: organization {
  sql_table_name: organization ;;

  dimension: organization_id {
    primary_key: yes
    type: string
    sql: ${TABLE}.OrganizationID ;;
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

  dimension: organization_common_name {
    type: string
    sql: ${TABLE}.OrganizationCommonName ;;
  }

  dimension: organization_name {
    type: string
    sql: ${TABLE}.OrganizationName ;;
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
      organization_id,
      organization_name,
      organization_common_name,
      export.export_id,
      export.source_name,
      export.software_name,
      project.count,
      servicemappings.count,
      servicemappings_copy.count,
      servicemappings_dm154.count
    ]
  }
}