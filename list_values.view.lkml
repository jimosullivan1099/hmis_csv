view: list_values {
  derived_table: {
    sql: SELECT * FROM list_values ;;
    indexes: ["id", "list_code", "value", "text"]
    sql_trigger_value: SELECT 1 ;;
  }

  measure: count {
    type: count
  }

  dimension: id {
    type: number
    primary_key: yes
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
