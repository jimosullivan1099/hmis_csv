include: "/views/hud/affiliation.view"

view: +affiliation {
  measure: affiliation_count {
    group_label: "Counts"
    view_label: "Analysis - General"
    label: "Affiliation count"
    type: count_distinct


    drill_fields: [affiliation_queries_drill_fields*]
    sql: ${AffiliationID} ;;
  }

  set: affiliation_queries_drill_fields {
    fields: [
      affiliation.AffiliationID
    ]
  }
}
