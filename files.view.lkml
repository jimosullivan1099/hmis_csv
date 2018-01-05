view: files {
  measure: count {
    type: count
  }

  dimension: id {
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension: filename {
    type: string
    sql: ${TABLE}.filename ;;
  }

  dimension: category {
    type: string
    sql: ${TABLE}.category ;;
  }
}
