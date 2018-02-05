view: lookup_values {
  derived_table: {
    sql:
      SELECT GROUP_CONCAT(ff.name, '_' , CONCAT(lv.value, ':', lv.text ) SEPARATOR '; ') AS lookup_string
      FROM ${list_values.SQL_TABLE_NAME} lv INNER JOIN ${file_fields.SQL_TABLE_NAME} ff ON ff.list = lv.list_code ;;
    indexes: ["PersonalID"]
    sql_trigger_value: SELECT COUNT(*) FROM client ;;
  }

  dimension: lookup_string {
    type: string
    sql: ${TABLE}.lookup_string ;;
  }
}
