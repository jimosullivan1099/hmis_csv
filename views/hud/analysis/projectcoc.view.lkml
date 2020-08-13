include: "/views/hud/projectcoc.view"

view: +projectcoc {
  measure: projectcoc_count {
    group_label: "Counts"
    view_label: "Analysis - General"
    label: "ProjectCoC count"
    type: count_distinct


    drill_fields: [projectcoc_queries_drill_fields*]
    sql: ${ProjectCoCID} ;;
  }

  set: projectcoc_queries_drill_fields {
    fields: [
      projectcoc.ProjectCoCID
    ]
  }
}
