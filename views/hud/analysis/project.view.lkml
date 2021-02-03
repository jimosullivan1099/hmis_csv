include: "/views/hud/project.view"

view: +project {
  measure: project_count {
    group_label: "Counts"
    view_label: "Analysis - General"
    label: "Project count"
    type: count_distinct


    drill_fields: [project_queries_drill_fields*]
    sql: ${ProjectID} ;;
  }

  set: project_queries_drill_fields {
    fields: [
      project.ProjectID
    ]
  }
}
