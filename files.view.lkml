view: files {
  derived_table: {
    sql: SELECT * FROM files ;;
    indexes: ["id", "filename"]
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

  dimension: filename {
    type: string
    sql: ${TABLE}.filename ;;
  }

  dimension: category {
    type: string
    sql: ${TABLE}.category ;;
  }
}
