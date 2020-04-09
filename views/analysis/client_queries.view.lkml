include: "../hud/client.view.lkml"

view: client_queries {
  extends: [client]

  measure: non_hud_dischargestatus {
    group_label: "Non HUD Client.csv Values"
    view_label: "Major Issues"
    label: "Non HUD DischargeStatus"
    type: count_distinct

    filters: {
      field: client.DischargeStatus
      value: "-1,-2,-4,-5,-6,-7,-8,-9,-99,-NULL,-EMPTY"
    }

    drill_fields: [client_queries_drill_fields*, DischargeStatus]
    sql: ${PersonalID} ;;
  }

  measure: non_hud_militarybranch {
    group_label: "Non HUD Client.csv Values"
    view_label: "Major Issues"
    label: "Non HUD MilitaryBranch"
    type: count_distinct

    filters: {
      field: client.MilitaryBranch
      value: "-1,-2,-3,-4,-6,-8,-9,-99,-NULL,-EMPTY"
    }

    drill_fields: [client_queries_drill_fields*, MilitaryBranch]
    sql: ${PersonalID} ;;
  }

  measure: non_hud_veteranstatus {
    group_label: "Non HUD Client.csv Values"
    view_label: "Major Issues"
    label: "Non HUD VeteranStatus"
    type: count_distinct

    filters: {
      field: client.VeteranStatus
      value: "-0,-1,-8,-9,-99,-NULL,-EMPTY"
    }

    drill_fields: [client_queries_drill_fields*, VeteranStatus]
    sql: ${PersonalID} ;;
  }

  measure: NullNameDataQuality {
    group_label: "Null Client.csv Values"
    view_label: "Major Issues"
    label: "Null NameDataQuality"
    type: count_distinct

    filters: {
      field: NameDataQuality
      value: "NULL,EMPTY"
    }

    drill_fields: [client_queries_drill_fields*]
    sql: ${PersonalID} ;;
  }

  measure: NullSSNDataQuality {
    group_label: "Null Client.csv Values"
    view_label: "Major Issues"
    label: "Null SSNDataQuality"
    type: count_distinct

    filters: {
      field: SSNDataQuality
      value: "NULL,EMPTY"
    }

    drill_fields: [client_queries_drill_fields*]
    sql: ${PersonalID} ;;
  }

  measure: NullDOBDataQuality {
    group_label: "Null Client.csv Values"
    view_label: "Major Issues"
    label: "Null DOBDataQuality"
    type: count_distinct

    filters: {
      field: DOBDataQuality
      value: "NULL,EMPTY"
    }

    drill_fields: [client_queries_drill_fields*]
    sql: ${PersonalID} ;;
  }

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

  dimension: blue_bar {
    sql: 1 ;;
    html: <div style="width: 100%; height: 72px; background: #405B7D; position: absolute;"></div> ;;
  }

  dimension: dark_blue_bar {
    sql: 1 ;;
    html: <div style="width: 100%; height: 72px; background: #23405E; position: absolute;"></div> ;;
  }

  dimension: red_bar {
    sql: 1 ;;
    html: <div style="width: 100%; height: 72px; background: #A3071A; position: absolute;"></div> ;;
  }

  set: client_queries_drill_fields {
    fields: [
      PersonalID
    ]
  }
}
