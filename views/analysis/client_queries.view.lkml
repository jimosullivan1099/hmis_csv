include: "../hud/client.view.lkml"

view: client_queries {
  extends: [client]

  measure: client_dq_1 {
    group_label: "Client DQ Errors"
    type: count_distinct

    filters: {
      field: RaceNone
      value: "-8,-9,-99"
    }
    filters: {
      field: AmIndAKNative
      value: "0,99"
    }
    filters: {
      field: Asian
      value: "0,99"
    }
    filters: {
      field: BlackAfAmerican
      value: "0,99"
    }
    filters: {
      field: NativeHIOtherPacific
      value: "0,99"
    }
    filters: {
      field: White
      value: "0,99"
    }

    drill_fields: [client_queries_drill_fields*]
    sql: ${PersonalID} ;;
  }

  set: client_queries_drill_fields {
    fields: [
      PersonalID
    ]
  }
}
