view: export {
  sql_table_name: export ;;

  dimension: ExportID {
    primary_key: yes
    type: string
    sql: ${TABLE}.ExportID ;;
  }

  dimension: ExportDate {
    type: string
    sql: ${TABLE}.ExportDate ;;
  }

  dimension: ExportEndDate {
    type: string
    sql: ${TABLE}.ExportEndDate ;;
  }

  dimension: ExportStartDate {
    type: string
    sql: ${TABLE}.ExportStartDate ;;
  }

  dimension: SoftwareName {
    type: string
    sql: ${TABLE}.SoftwareName ;;
  }

  dimension: SoftwareVersion {
    type: string
    sql: ${TABLE}.SoftwareVersion ;;
  }

  dimension: SourceContactEmail {
    type: string
    sql: ${TABLE}.SourceContactEmail ;;
  }

  dimension: SourceContactFirst {
    type: string
    sql: ${TABLE}.SourceContactFirst ;;
  }

  dimension: SourceContactLast {
    type: string
    sql: ${TABLE}.SourceContactLast ;;
  }

  dimension: SourceContactPhone {
    type: string
    sql: ${TABLE}.SourceContactPhone ;;
  }

  dimension: SourceContractExtension {
    type: string
    sql: ${TABLE}.SourceContractExtension ;;
  }

  dimension: SourceID {
    type: string
    sql: ${TABLE}.SourceID ;;
  }

  dimension: SourceName {
    type: string
    sql: ${TABLE}.SourceName ;;
  }

  measure: count {
    type: count
  }
}
