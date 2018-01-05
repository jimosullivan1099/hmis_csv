view: list_values {
  measure: count {
    type: count
  }

  dimension: id {
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension: list_code {
    type: string
    sql: ${TABLE}.list_code ;;
  }

  dimension: value {
    type: string
    sql: ${TABLE}.value ;;
  }

  dimension: text {
    type: string
    sql: ${TABLE}.text ;;
  }

  dimension: note {
    type: string
    sql: ${TABLE}.note ;;
  }
}
