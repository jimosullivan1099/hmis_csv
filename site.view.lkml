view: site {
  sql_table_name: site ;;

  dimension: site_id {
    primary_key: yes
    type: string
    sql: ${TABLE}.SiteID ;;
  }

  dimension: address {
    type: string
    sql: ${TABLE}.Address ;;
  }

  dimension: city {
    type: string
    sql: ${TABLE}.City ;;
  }

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

  dimension: geo_code {
    type: string
    sql: ${TABLE}.GeoCode ;;
  }

  dimension: principal_site {
    type: string
    sql: ${TABLE}.PrincipalSite ;;
  }

  dimension: project_id {
    type: string
    # hidden: yes
    sql: ${TABLE}.ProjectID ;;
  }

  dimension: state {
    type: string
    sql: ${TABLE}.State ;;
  }

  dimension: user_id {
    type: string
    sql: ${TABLE}.UserID ;;
  }

  dimension: zip {
    type: string
    sql: ${TABLE}.Zip ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  # ----- Sets of fields for drilling ------
  set: detail {
    fields: [
      site_id,
      project.project_id,
      project.project_common_name,
      project.project_name,
      export.export_id,
      export.source_name,
      export.software_name
    ]
  }
}