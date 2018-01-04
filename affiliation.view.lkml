view: affiliation {
  sql_table_name: affiliation ;;

  dimension: AffliationID {
    type: string
    sql: ${TABLE}.AffliationID ;;
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
    # hidden: yes
    sql: ${TABLE}.ExportID ;;
  }

  dimension: ProjectID {
    type: string
    # hidden: yes
    sql: ${TABLE}.ProjectID ;;
  }

  dimension: ResProjectID {
    type: string
    sql: ${TABLE}.ResProjectID ;;
  }

  dimension: UserID {
    type: string
    sql: ${TABLE}.UserID ;;
  }

  measure: count {
    type: count
  }
}
