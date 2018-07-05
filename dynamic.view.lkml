view: dynamic {
  derived_table: {
    sql:
      SELECT
        a.{% parameter table_field_parameter_1 %} AS table_field_1,
        b.{% parameter table_field_parameter_2 %} AS table_field_2
      FROM `{% parameter schema_1_name %}`.`{% parameter table_1_name %}` a
      {% parameter join_type %} JOIN `{% parameter schema_2_name %}`.`{% parameter table_2_name %}` b ON a.`{% parameter join_field %}` = b.`{% parameter join_field %}`

    ;;
    indexes: ["table_field_1", "table_field_2"]
  }

  parameter: schema_1_name {
    type: unquoted
  }

  parameter: schema_2_name {
    type: unquoted
  }

  parameter: table_1_name {
    type: unquoted
  }

  parameter: table_2_name {
    type: unquoted
  }

  parameter: join_type {
    type: unquoted
    default_value: "LEFT"
    allowed_value: {
      value: "LEFT"
    }
    allowed_value: {
      value: "RIGHT"
    }
    allowed_value: {
      value: "INNER"
    }
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
