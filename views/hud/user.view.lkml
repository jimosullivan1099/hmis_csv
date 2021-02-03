view: user {
  sql_table_name: user ;;

  dimension: UserID {
    primary_key: yes
    type: string
    sql: ${TABLE}.UserID ;;
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

  dimension: UserEmail {
    type: string
    sql: ${TABLE}.UserEmail ;;
  }

  dimension: UserExtension {
    type: string
    sql: ${TABLE}.UserExtension ;;
  }

  dimension: UserFirstName {
    type: string
    sql: ${TABLE}.UserFirstName ;;
  }

  dimension: UserLastName {
    type: string
    sql: ${TABLE}.UserLastName ;;
  }

  dimension: UserPhone {
    type: string
    sql: ${TABLE}.UserPhone ;;
  }

  measure: count {
    type: count
  }
}
