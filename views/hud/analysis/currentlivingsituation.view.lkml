include: "/views/hud/currentlivingsituation.view"

view: +currentlivingsituation {
  measure: currentlivingsituation_count {
    group_label: "Counts"
    view_label: "Analysis - General"
    label: "CurrentLivingSituation count"
    type: count_distinct


    drill_fields: [currentlivingsituation_queries_drill_fields*]
    sql: ${CurrentLivingSitID} ;;
  }

  measure: invalid_date_formatting_for_informationdate_in_currentlivingsituation_csv {
    group_label: "DateFormatting"
    view_label: "Analysis - Major"
    label: "Invalid Date Formatting for InformationDate in CurrentLivingSituation.csv"
    type: count_distinct

    filters: [
      currentlivingsituation.InformationDate: "-____-__-__"
    ]

    drill_fields: [currentlivingsituation_queries_drill_fields*]
    sql: ${CurrentLivingSitID} ;;
  }

  measure: invalid_date_formatting_for_datecreated_in_currentlivingsituation_csv {
    group_label: "DateFormatting"
    view_label: "Analysis - Major"
    label: "Invalid Date Formatting for DateCreated in CurrentLivingSituation.csv"
    type: count_distinct

    filters: [
      currentlivingsituation.DateCreated: "-____-__-__ __:__:__"
    ]

    drill_fields: [currentlivingsituation_queries_drill_fields*]
    sql: ${CurrentLivingSitID} ;;
  }

  measure: invalid_date_formatting_for_dateupdated_in_currentlivingsituation_csv {
    group_label: "DateFormatting"
    view_label: "Analysis - Major"
    label: "Invalid Date Formatting for DateUpdated in CurrentLivingSituation.csv"
    type: count_distinct

    filters: [
      currentlivingsituation.DateUpdated: "-____-__-__ __:__:__"
    ]

    drill_fields: [currentlivingsituation_queries_drill_fields*]
    sql: ${CurrentLivingSitID} ;;
  }

  measure: non_hud_currentlivingsituation {
    group_label: "NonHUD"
    view_label: "Analysis - Major"
    label: "Non HUD CurrentLivingSituation"
    type: count_distinct

    filters: [
      currentlivingsituation.CurrentLivingSituation: "-16,-1,-18,-15,-6,-7,-25,-4,-5,-29,-14,-2,-32,-36,-35,-28,-19,-3,-31,-33,-34,-10,-20,-21,-11,-17,-37,-8,-9,-99,-NULL,-EMPTY"
    ]

    drill_fields: [currentlivingsituation_queries_drill_fields*]
    sql: ${CurrentLivingSitID} ;;
  }

  measure: null_currentlivingsitid {
    group_label: "Null"
    view_label: "Analysis - Major"
    label: "Null CurrentLivingSitID"
    type: count_distinct

    filters: [
      currentlivingsituation.CurrentLivingSitID: "NULL,EMPTY"
    ]

    drill_fields: [currentlivingsituation_queries_drill_fields*]
    sql: ${CurrentLivingSitID} ;;
  }

  measure: null_enrollmentid {
    group_label: "Null"
    view_label: "Analysis - Major"
    label: "Null EnrollmentID"
    type: count_distinct

    filters: [
      currentlivingsituation.EnrollmentID: "NULL,EMPTY"
    ]

    drill_fields: [currentlivingsituation_queries_drill_fields*]
    sql: ${CurrentLivingSitID} ;;
  }

  measure: null_personalid {
    group_label: "Null"
    view_label: "Analysis - Major"
    label: "Null PersonalID"
    type: count_distinct

    filters: [
      currentlivingsituation.PersonalID: "NULL,EMPTY"
    ]

    drill_fields: [currentlivingsituation_queries_drill_fields*]
    sql: ${CurrentLivingSitID} ;;
  }

  measure: null_currentlivingsituation {
    group_label: "Null"
    view_label: "Analysis - Major"
    label: "Null CurrentLivingSituation"
    type: count_distinct

    filters: [
      currentlivingsituation.CurrentLivingSituation: "NULL,EMPTY"
    ]

    drill_fields: [currentlivingsituation_queries_drill_fields*]
    sql: ${CurrentLivingSitID} ;;
  }

  measure: currentlivingsituations_where_projecttype_is_not_14_but_verifiedby_is_not_null {
    group_label: "dqCurrentLivingSituation"
    view_label: "Analysis - Dq"
    label: "CurrentLivingSituations where ProjectType is not 14 but VerifiedBy is not null"
    type: count_distinct

    filters: [
      project.ProjectType: "-14",
      currentlivingsituation.VerifiedBy: "-NULL,-EMPTY"
    ]

    drill_fields: [currentlivingsituation_queries_drill_fields*]
    sql: ${CurrentLivingSitID} ;;
  }

  measure: non_hud_leavesituation14days {
    group_label: "NonHUD"
    view_label: "Analysis - Minor"
    label: "Non HUD LeaveSituation14Days"
    type: count_distinct

    filters: [
      currentlivingsituation.LeaveSituation14Days: "-0,-1,-8,-9,-99,-NULL,-EMPTY"
    ]

    drill_fields: [currentlivingsituation_queries_drill_fields*]
    sql: ${CurrentLivingSitID} ;;
  }

  measure: non_hud_subsequentresidence {
    group_label: "NonHUD"
    view_label: "Analysis - Minor"
    label: "Non HUD SubsequentResidence"
    type: count_distinct

    filters: [
      currentlivingsituation.SubsequentResidence: "-0,-1,-8,-9,-99,-NULL,-EMPTY"
    ]

    drill_fields: [currentlivingsituation_queries_drill_fields*]
    sql: ${CurrentLivingSitID} ;;
  }

  measure: non_hud_resourcestoobtain {
    group_label: "NonHUD"
    view_label: "Analysis - Minor"
    label: "Non HUD ResourcesToObtain"
    type: count_distinct

    filters: [
      currentlivingsituation.ResourcesToObtain: "-0,-1,-8,-9,-99,-NULL,-EMPTY"
    ]

    drill_fields: [currentlivingsituation_queries_drill_fields*]
    sql: ${CurrentLivingSitID} ;;
  }

  measure: non_hud_leaseown60day {
    group_label: "NonHUD"
    view_label: "Analysis - Minor"
    label: "Non HUD LeaseOwn60Day"
    type: count_distinct

    filters: [
      currentlivingsituation.LeaseOwn60Day: "-0,-1,-8,-9,-99,-NULL,-EMPTY"
    ]

    drill_fields: [currentlivingsituation_queries_drill_fields*]
    sql: ${CurrentLivingSitID} ;;
  }

  measure: non_hud_movedtwoormore {
    group_label: "NonHUD"
    view_label: "Analysis - Minor"
    label: "Non HUD MovedTwoOrMore"
    type: count_distinct

    filters: [
      currentlivingsituation.MovedTwoOrMore: "-0,-1,-8,-9,-99,-NULL,-EMPTY"
    ]

    drill_fields: [currentlivingsituation_queries_drill_fields*]
    sql: ${CurrentLivingSitID} ;;
  }

  measure: currentlivingsituations_where_leavesituation14days_is_not_null_while_currentlivingsituation_is_not_one_of_the_conditional_values_for_leavesituation14days {
    group_label: "dqCurrentLivingSituation"
    view_label: "Analysis - Dq"
    label: "CurrentLivingSituations where LeaveSituation14Days is not null while CurrentLivingSituation is not one of the conditional values for LeaveSituation14Days"
    type: count_distinct

    filters: [
      currentlivingsituation.CurrentLivingSituation: "-15,-6,-7,-25,-4,-5,-29,-14,-2,-31,-32,-33,-34,-36,-35,-28,-19,-3,-10,-20,-21,-11",
      currentlivingsituation.LeaveSituation14Days: "-NULL,-EMPTY"
    ]

    drill_fields: [currentlivingsituation_queries_drill_fields*]
    sql: ${CurrentLivingSitID} ;;
  }

  measure: currentlivingsituations_where_leavesituation14days_is_not_yes_but_subsequentresidence_is_not_null {
    group_label: "dqCurrentLivingSituation"
    view_label: "Analysis - Dq"
    label: "CurrentLivingSituations where LeaveSituation14Days is not Yes but SubsequentResidence is not null"
    type: count_distinct

    filters: [
      currentlivingsituation.LeaveSituation14Days: "-1",
      currentlivingsituation.SubsequentResidence: "-NULL,-EMPTY"
    ]

    drill_fields: [currentlivingsituation_queries_drill_fields*]
    sql: ${CurrentLivingSitID} ;;
  }

  measure: currentlivingsituations_where_leavesituation14days_is_not_yes_but_resourcestoobtain_is_not_null {
    group_label: "dqCurrentLivingSituation"
    view_label: "Analysis - Dq"
    label: "CurrentLivingSituations where LeaveSituation14Days is not Yes but ResourcesToObtain is not null"
    type: count_distinct

    filters: [
      currentlivingsituation.LeaveSituation14Days: "-1",
      currentlivingsituation.ResourcesToObtain: "-NULL,-EMPTY"
    ]

    drill_fields: [currentlivingsituation_queries_drill_fields*]
    sql: ${CurrentLivingSitID} ;;
  }

  measure: currentlivingsituations_where_leavesituation14days_is_not_yes_but_leaseown60day_is_not_null {
    group_label: "dqCurrentLivingSituation"
    view_label: "Analysis - Dq"
    label: "CurrentLivingSituations where LeaveSituation14Days is not Yes but LeaseOwn60Day is not null"
    type: count_distinct

    filters: [
      currentlivingsituation.LeaveSituation14Days: "-1",
      currentlivingsituation.LeaseOwn60Day: "-NULL,-EMPTY"
    ]

    drill_fields: [currentlivingsituation_queries_drill_fields*]
    sql: ${CurrentLivingSitID} ;;
  }

  measure: currentlivingsituations_where_leavesituation14days_is_not_yes_but_movedtwoormore_is_not_null {
    group_label: "dqCurrentLivingSituation"
    view_label: "Analysis - Dq"
    label: "CurrentLivingSituations where LeaveSituation14Days is not Yes but MovedTwoOrMore is not null"
    type: count_distinct

    filters: [
      currentlivingsituation.LeaveSituation14Days: "-1",
      currentlivingsituation.MovedTwoOrMore: "-NULL,-EMPTY"
    ]

    drill_fields: [currentlivingsituation_queries_drill_fields*]
    sql: ${CurrentLivingSitID} ;;
  }

  set: currentlivingsituation_queries_drill_fields {
    fields: [
      currentlivingsituation.CurrentLivingSitID
    ]
  }
}