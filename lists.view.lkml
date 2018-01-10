view: lists {
  derived_table: {
    sql: SELECT * FROM lists ;;
    indexes: ["id", "list_code"]
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

  dimension: list_name {
    type: string
    sql: ${TABLE}.list_name ;;
  }

  dimension: note {
    type: string
    sql: ${TABLE}.note ;;
  }
}
