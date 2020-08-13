include: "/views/hud/user.view"

view: +user {
  measure: user_count {
    group_label: "Counts"
    view_label: "Analysis - General"
    label: "User count"
    type: count_distinct


    drill_fields: [user_queries_drill_fields*]
    sql: ${UserID} ;;
  }

  set: user_queries_drill_fields {
    fields: [
      user.UserID
    ]
  }
}
