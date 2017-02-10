view: export {
  sql_table_name: export ;;

  dimension: export_id {
    primary_key: yes
    type: string
    sql: ${TABLE}.ExportID ;;
  }

  dimension: export_date {
    type: string
    sql: ${TABLE}.ExportDate ;;
  }

  dimension: export_end_date {
    type: string
    sql: ${TABLE}.ExportEndDate ;;
  }

  dimension: export_start_date {
    type: string
    sql: ${TABLE}.ExportStartDate ;;
  }

  dimension: software_name {
    type: string
    sql: ${TABLE}.SoftwareName ;;
  }

  dimension: software_version {
    type: string
    sql: ${TABLE}.SoftwareVersion ;;
  }

  dimension: source_contact_email {
    type: string
    sql: ${TABLE}.SourceContactEmail ;;
  }

  dimension: source_contact_first {
    type: string
    sql: ${TABLE}.SourceContactFirst ;;
  }

  dimension: source_contact_last {
    type: string
    sql: ${TABLE}.SourceContactLast ;;
  }

  dimension: source_contact_phone {
    type: string
    sql: ${TABLE}.SourceContactPhone ;;
  }

  dimension: source_contract_extension {
    type: string
    sql: ${TABLE}.SourceContractExtension ;;
  }

  dimension: source_id {
    type: string
    sql: ${TABLE}.SourceID ;;
  }

  dimension: source_name {
    type: string
    sql: ${TABLE}.SourceName ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  # ----- Sets of fields for drilling ------
  set: detail {
    fields: [
      export_id,
      source_name,
      software_name,
      affiliation.count,
      client.count,
      disabilities.count,
      employmenteducation.count,
      enrollment.count,
      enrollmentcoc.count,
      exit.count,
      funder.count,
      healthanddv.count,
      incomebenefits.count,
      inventory.count,
      organization.count,
      project.count,
      projectcoc.count,
      servicemappings.count,
      servicemappings_copy.count,
      servicemappings_dm154.count,
      services.count,
      site.count
    ]
  }
}