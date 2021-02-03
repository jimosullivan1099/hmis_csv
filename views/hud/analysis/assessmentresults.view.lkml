include: "/views/hud/assessmentresults.view"

view: +assessmentresults {
  measure: assessmentresults_count {
    group_label: "Counts"
    view_label: "Analysis - General"
    label: "AssessmentResults count"
    type: count_distinct


    drill_fields: [assessmentresults_queries_drill_fields*]
    sql: ${AssessmentResultID} ;;
  }

  set: assessmentresults_queries_drill_fields {
    fields: [
      assessmentresults.AssessmentResultID
    ]
  }
}
