view: organization {
  sql_table_name: organization ;;

  dimension: OrganizationID {
    primary_key: yes
    type: string
    sql: ${TABLE}.OrganizationID ;;
  }

  dimension: DateCreated {
    type: string
    sql: ${TABLE}.DateCreated ;;
  }

  dimension: DateDeleted {
    type: string
    sql: ${TABLE}.DateDeleted ;;
  }

  dimension: DateUpdated {
    type: string
    sql: ${TABLE}.DateUpdated ;;
  }

  dimension: ExportID {
    type: string
    sql: ${TABLE}.ExportID ;;
  }

  dimension: OrganizationCommonName {
    type: string
    sql: ${TABLE}.OrganizationCommonName ;;
  }

  dimension: OrganizationName {
    type: string
    sql: ${TABLE}.OrganizationName ;;
  }

  dimension: VictimServicesProvider {
    type: string
    sql: ${TABLE}.VictimServicesProvider ;;
  }

  dimension: UserID {
    type: string
    sql: ${TABLE}.UserID ;;
  }

  measure: count {
    type: count
  }
}
