include: "/views/hud/organization.view"

view: +organization {
  measure: organization_count {
    group_label: "Counts"
    view_label: "Analysis - General"
    label: "Organization count"
    type: count_distinct


    drill_fields: [organization_queries_drill_fields*]
    sql: ${OrganizationID} ;;
  }

  set: organization_queries_drill_fields {
    fields: [
      organization.OrganizationID
    ]
  }
}
