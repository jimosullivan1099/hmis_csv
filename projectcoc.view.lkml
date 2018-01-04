view: projectcoc {
  sql_table_name: projectcoc ;;

  dimension: CoCCode {
    type: string
    sql: ${TABLE}.CoCCode ;;
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

  dimension: ProjectCoCID {
    primary_key: yes
    type: string
    sql: ${TABLE}.ProjectCoCID ;;
  }

  dimension: ProjectID {
    type: string
    # hidden: yes
    sql: ${TABLE}.ProjectID ;;
  }

  dimension: UserID {
    type: string
    sql: ${TABLE}.UserID ;;
  }

  measure: count {
    type: count
  }
}
