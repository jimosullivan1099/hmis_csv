include: "/views/hud/export.view"

view: +export {
  measure: export_count {
    group_label: "Counts"
    view_label: "Analysis - General"
    label: "Export count"
    type: count_distinct


    drill_fields: [export_queries_drill_fields*]
    sql: ${ExportID} ;;
  }

  set: export_queries_drill_fields {
    fields: [
      export.ExportID
    ]
  }
}
