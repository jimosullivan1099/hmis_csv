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

  dimension: Geocode {
    type: string
    sql: ${TABLE}.Geocode ;;
  }

  dimension: Address1 {
    type: string
    sql: ${TABLE}.Address1 ;;
  }

  dimension: Address2 {
    type: string
    sql: ${TABLE}.Address2 ;;
  }

  dimension: City {
    type: string
    sql: ${TABLE}.City ;;
  }

  dimension: State {
    type: string
    sql: ${TABLE}.State ;;
  }

  dimension: ZIP {
    type: string
    sql: ${TABLE}.ZIP ;;
  }

  dimension: GeographyType {
    type: string
    sql: ${TABLE}.GeographyType ;;
  }

  measure: count {
    type: count
  }
}
