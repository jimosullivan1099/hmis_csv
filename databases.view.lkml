view: databases {
  derived_table: {
    sql: show databases;
      ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  dimension: database {
    type: string
    sql: ${TABLE}.`Database` ;;
  }

  set: detail {
    fields: [database]
  }
}
