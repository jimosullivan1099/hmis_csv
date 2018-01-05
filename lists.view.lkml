view: lists {
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

  dimension: list_name {
    type: string
    sql: ${TABLE}.list_name ;;
  }

  dimension: note {
    type: string
    sql: ${TABLE}.note ;;
  }
}
