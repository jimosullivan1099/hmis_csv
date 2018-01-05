connection: "hmis_csv_standards_dbz"

include: "*.view.lkml"         # include all views in this project
include: "*.dashboard.lookml"  # include all dashboards in this project

explore: base {
  view_name: files
  join: file_fields {
    relationship: one_to_many
    sql_on: ${files.filename} = ${file_fields.filename} ;;
  }

  join: lists {
    type: left_outer
    relationship: one_to_one
    sql_on: ${file_fields.list} = ${lists.list_code} ;;
  }

  join: list_values {
    relationship: one_to_many
    sql_on: ${lists.list_code} = ${list_values.list_code} ;;
  }
}
