include: "/views/hud/funder.view"

view: +funder {
  measure: funder_count {
    group_label: "Counts"
    view_label: "Analysis - General"
    label: "Funder count"
    type: count_distinct


    drill_fields: [funder_queries_drill_fields*]
    sql: ${FunderID} ;;
  }

  set: funder_queries_drill_fields {
    fields: [
      funder.FunderID
    ]
  }
}
