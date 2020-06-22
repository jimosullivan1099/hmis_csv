view: data_types {
  derived_table: {
    sql: SELECT * FROM hmis_csv_6_11_standards.data_types
      ;;
  }

  measure: count {
    type: count
  }

  dimension: id {
    type: string
    sql: ${TABLE}.id ;;
  }

  dimension: type {
    type: string
    sql: ${TABLE}.type ;;
  }

  dimension: definition {
    type: string
    sql: ${TABLE}.definition ;;
  }
}
