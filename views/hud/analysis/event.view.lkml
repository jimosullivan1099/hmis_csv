include: "/views/hud/event.view"

view: +event {
  measure: event_count {
    group_label: "Counts"
    view_label: "Analysis - General"
    label: "Event count"
    type: count_distinct


    drill_fields: [event_queries_drill_fields*]
    sql: ${EventID} ;;
  }

  set: event_queries_drill_fields {
    fields: [
      event.EventID
    ]
  }
}
