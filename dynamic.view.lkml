view: dynamic {
  derived_table: {
    sql:
      SELECT
        {% parameter table_field_parameter_1 %} AS table_field_1,
        {% parameter table_field_parameter_2 %} AS table_field_2
      FROM `{% parameter table_1_name %}`
      LEFT OUTER JOIN `{% parameter table_2_name %}` ON `{% parameter table_1_name %}`.`{% parameter join_field %}` = `{% parameter table_2_name %}`.`{% parameter join_field %}`
    ;;
    indexes: ["table_field_1", "table_field_2"]
  }

  parameter: table_1_name {
    type: unquoted
  }

  parameter: table_2_name {
    type: unquoted
  }

  parameter: join_field {
    type: unquoted
  }

  # This parameter and the following, accompanying dimension form a pair for a dynamic field. Use this to set what the field
  # name is, then use the dimension to add to the Explore to get results for that field
  parameter: table_field_parameter_1 {
    type: unquoted
  }

  dimension: table_field_1 {
    sql: ${TABLE}.table_field_1 ;;
    # label: "{% parameter table_field_parameter_1 %}"
  }

  parameter: table_field_parameter_2 {
    type: unquoted
  }

  dimension: table_field_2 {
    sql: ${TABLE}.table_field_2 ;;
  }

  measure: count {
    type: count
  }

}
