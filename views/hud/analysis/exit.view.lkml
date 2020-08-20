include: "/views/hud/exit.view"

view: +exit {
  measure: exit_count {
    group_label: "Counts"
    view_label: "Analysis - General"
    label: "Exit count"
    type: count_distinct


    drill_fields: [exit_queries_drill_fields*]
    sql: ${ExitID} ;;
  }

  measure: non_hud_aftercareprovided {
    group_label: "NonHUD"
    view_label: "Analysis - Minor"
    label: "Non HUD AftercareProvided"
    type: count_distinct

    filters: [
      exit.AftercareProvided: "-0,-1,-9,-NULL,-EMPTY"
    ]

    drill_fields: [exit_queries_drill_fields*]
    sql: ${ExitID} ;;
  }

  measure: non_hud_askedorforcedtoexchangeforsex {
    group_label: "NonHUD"
    view_label: "Analysis - Minor"
    label: "Non HUD AskedOrForcedToExchangeForSex"
    type: count_distinct

    filters: [
      exit.AskedOrForcedToExchangeForSex: "-0,-1,-8,-9,-99,-NULL,-EMPTY"
    ]

    drill_fields: [exit_queries_drill_fields*]
    sql: ${ExitID} ;;
  }

  measure: non_hud_askedorforcedtoexchangeforsexpastthreemonths {
    group_label: "NonHUD"
    view_label: "Analysis - Minor"
    label: "Non HUD AskedOrForcedToExchangeForSexPastThreeMonths"
    type: count_distinct

    filters: [
      exit.AskedOrForcedToExchangeForSexPastThreeMonths: "-0,-1,-8,-9,-99,-NULL,-EMPTY"
    ]

    drill_fields: [exit_queries_drill_fields*]
    sql: ${ExitID} ;;
  }

  measure: non_hud_cmexitreason {
    group_label: "NonHUD"
    view_label: "Analysis - Minor"
    label: "Non HUD CMExitReason"
    type: count_distinct

    filters: [
      exit.CMExitReason: "-1,-2,-3,-4,-5,-6,-7,-8,-9,-10,-11,-12,-13,-NULL,-EMPTY"
    ]

    drill_fields: [exit_queries_drill_fields*]
    sql: ${ExitID} ;;
  }

  measure: non_hud_coercedtocontinuework {
    group_label: "NonHUD"
    view_label: "Analysis - Minor"
    label: "Non HUD CoercedToContinueWork"
    type: count_distinct

    filters: [
      exit.CoercedToContinueWork: "-0,-1,-8,-9,-99,-NULL,-EMPTY"
    ]

    drill_fields: [exit_queries_drill_fields*]
    sql: ${ExitID} ;;
  }

  measure: non_hud_counselingreceived {
    group_label: "NonHUD"
    view_label: "Analysis - Minor"
    label: "Non HUD CounselingReceived"
    type: count_distinct

    filters: [
      exit.CounselingReceived: "-0,-1,-99,-NULL,-EMPTY"
    ]

    drill_fields: [exit_queries_drill_fields*]
    sql: ${ExitID} ;;
  }

  measure: non_hud_countofexchangeforsex {
    group_label: "NonHUD"
    view_label: "Analysis - Minor"
    label: "Non HUD CountOfExchangeForSex"
    type: count_distinct

    filters: [
      exit.CountOfExchangeForSex: "-1,-2,-3,-4,-8,-9,-99,-NULL,-EMPTY"
    ]

    drill_fields: [exit_queries_drill_fields*]
    sql: ${ExitID} ;;
  }

  measure: non_hud_destination {
    group_label: "NonHUD"
    view_label: "Analysis - Minor"
    label: "Non HUD Destination"
    type: count_distinct

    filters: [
      exit.Destination: "-16,-1,-18,-15,-6,-7,-25,-4,-5,-29,-14,-2,-32,-13,-12,-22,-23,-26,-27,-28,-19,-3,-31,-33,-34,-10,-20,-21,-11,-30,-17,-24,-8,-9,-99,-NULL,-EMPTY"
    ]

    drill_fields: [exit_queries_drill_fields*]
    sql: ${ExitID} ;;
  }

  measure: non_hud_destinationsafeclient {
    group_label: "NonHUD"
    view_label: "Analysis - Minor"
    label: "Non HUD DestinationSafeClient"
    type: count_distinct

    filters: [
      exit.DestinationSafeClient: "-0,-1,-8,-9,-99,-NULL,-EMPTY"
    ]

    drill_fields: [exit_queries_drill_fields*]
    sql: ${ExitID} ;;
  }

  measure: non_hud_destinationsafeworker {
    group_label: "NonHUD"
    view_label: "Analysis - Minor"
    label: "Non HUD DestinationSafeWorker"
    type: count_distinct

    filters: [
      exit.DestinationSafeWorker: "-0,-1,-2,-99,-NULL,-EMPTY"
    ]

    drill_fields: [exit_queries_drill_fields*]
    sql: ${ExitID} ;;
  }

  measure: non_hud_earlyexitreason {
    group_label: "NonHUD"
    view_label: "Analysis - Minor"
    label: "Non HUD EarlyExitReason"
    type: count_distinct

    filters: [
      exit.EarlyExitReason: "-1,-2,-3,-4,-5,-6,-NULL,-EMPTY"
    ]

    drill_fields: [exit_queries_drill_fields*]
    sql: ${ExitID} ;;
  }

  measure: non_hud_emailsocialmedia {
    group_label: "NonHUD"
    view_label: "Analysis - Minor"
    label: "Non HUD EmailSocialMedia"
    type: count_distinct

    filters: [
      exit.EmailSocialMedia: "-0,-1,-99,-NULL,-EMPTY"
    ]

    drill_fields: [exit_queries_drill_fields*]
    sql: ${ExitID} ;;
  }

  measure: non_hud_exchangeforsex {
    group_label: "NonHUD"
    view_label: "Analysis - Minor"
    label: "Non HUD ExchangeForSex"
    type: count_distinct

    filters: [
      exit.ExchangeForSex: "-0,-1,-8,-9,-99,-NULL,-EMPTY"
    ]

    drill_fields: [exit_queries_drill_fields*]
    sql: ${ExitID} ;;
  }

  measure: non_hud_exchangeforsexpastthreemonths {
    group_label: "NonHUD"
    view_label: "Analysis - Minor"
    label: "Non HUD ExchangeForSexPastThreeMonths"
    type: count_distinct

    filters: [
      exit.ExchangeForSexPastThreeMonths: "-0,-1,-8,-9,-99,-NULL,-EMPTY"
    ]

    drill_fields: [exit_queries_drill_fields*]
    sql: ${ExitID} ;;
  }

  measure: non_hud_familycounseling {
    group_label: "NonHUD"
    view_label: "Analysis - Minor"
    label: "Non HUD FamilyCounseling"
    type: count_distinct

    filters: [
      exit.FamilyCounseling: "-0,-1,-99,-NULL,-EMPTY"
    ]

    drill_fields: [exit_queries_drill_fields*]
    sql: ${ExitID} ;;
  }

  measure: non_hud_groupcounseling {
    group_label: "NonHUD"
    view_label: "Analysis - Minor"
    label: "Non HUD GroupCounseling"
    type: count_distinct

    filters: [
      exit.GroupCounseling: "-0,-1,-99,-NULL,-EMPTY"
    ]

    drill_fields: [exit_queries_drill_fields*]
    sql: ${ExitID} ;;
  }

  measure: non_hud_housingassessment {
    group_label: "NonHUD"
    view_label: "Analysis - Minor"
    label: "Non HUD HousingAssessment"
    type: count_distinct

    filters: [
      exit.HousingAssessment: "-1,-2,-3,-4,-5,-6,-7,-8,-9,-10,-99,-NULL,-EMPTY"
    ]

    drill_fields: [exit_queries_drill_fields*]
    sql: ${ExitID} ;;
  }

  measure: non_hud_individualcounseling {
    group_label: "NonHUD"
    view_label: "Analysis - Minor"
    label: "Non HUD IndividualCounseling"
    type: count_distinct

    filters: [
      exit.IndividualCounseling: "-0,-1,-99,-NULL,-EMPTY"
    ]

    drill_fields: [exit_queries_drill_fields*]
    sql: ${ExitID} ;;
  }

  measure: non_hud_inpersongroup {
    group_label: "NonHUD"
    view_label: "Analysis - Minor"
    label: "Non HUD InPersonGroup"
    type: count_distinct

    filters: [
      exit.InPersonGroup: "-0,-1,-99,-NULL,-EMPTY"
    ]

    drill_fields: [exit_queries_drill_fields*]
    sql: ${ExitID} ;;
  }

  measure: non_hud_inpersonindividual {
    group_label: "NonHUD"
    view_label: "Analysis - Minor"
    label: "Non HUD InPersonIndividual"
    type: count_distinct

    filters: [
      exit.InPersonIndividual: "-0,-1,-99,-NULL,-EMPTY"
    ]

    drill_fields: [exit_queries_drill_fields*]
    sql: ${ExitID} ;;
  }

  measure: non_hud_laborexploitpastthreemonths {
    group_label: "NonHUD"
    view_label: "Analysis - Minor"
    label: "Non HUD LaborExploitPastThreeMonths"
    type: count_distinct

    filters: [
      exit.LaborExploitPastThreeMonths: "-0,-1,-8,-9,-99,-NULL,-EMPTY"
    ]

    drill_fields: [exit_queries_drill_fields*]
    sql: ${ExitID} ;;
  }

  measure: non_hud_posadultconnections {
    group_label: "NonHUD"
    view_label: "Analysis - Minor"
    label: "Non HUD PosAdultConnections"
    type: count_distinct

    filters: [
      exit.PosAdultConnections: "-0,-1,-2,-NULL,-EMPTY"
    ]

    drill_fields: [exit_queries_drill_fields*]
    sql: ${ExitID} ;;
  }

  measure: non_hud_poscommunityconnections {
    group_label: "NonHUD"
    view_label: "Analysis - Minor"
    label: "Non HUD PosCommunityConnections"
    type: count_distinct

    filters: [
      exit.PosCommunityConnections: "-0,-1,-2,-NULL,-EMPTY"
    ]

    drill_fields: [exit_queries_drill_fields*]
    sql: ${ExitID} ;;
  }

  measure: non_hud_pospeerconnections {
    group_label: "NonHUD"
    view_label: "Analysis - Minor"
    label: "Non HUD PosPeerConnections"
    type: count_distinct

    filters: [
      exit.PosPeerConnections: "-0,-1,-2,-NULL,-EMPTY"
    ]

    drill_fields: [exit_queries_drill_fields*]
    sql: ${ExitID} ;;
  }

  measure: non_hud_postexitcounselingplan {
    group_label: "NonHUD"
    view_label: "Analysis - Minor"
    label: "Non HUD PostExitCounselingPlan"
    type: count_distinct

    filters: [
      exit.PostExitCounselingPlan: "-0,-1,-99,-NULL,-EMPTY"
    ]

    drill_fields: [exit_queries_drill_fields*]
    sql: ${ExitID} ;;
  }

  measure: non_hud_projectcompletionstatus {
    group_label: "NonHUD"
    view_label: "Analysis - Minor"
    label: "Non HUD ProjectCompletionStatus"
    type: count_distinct

    filters: [
      exit.ProjectCompletionStatus: "-1,-2,-3,-NULL,-EMPTY"
    ]

    drill_fields: [exit_queries_drill_fields*]
    sql: ${ExitID} ;;
  }

  measure: non_hud_subsidyinformation {
    group_label: "NonHUD"
    view_label: "Analysis - Minor"
    label: "Non HUD SubsidyInformation"
    type: count_distinct

    filters: [
      exit.SubsidyInformation: "-1,-2,-3,-4,-11,-12,-NULL,-EMPTY"
    ]

    drill_fields: [exit_queries_drill_fields*]
    sql: ${ExitID} ;;
  }

  measure: non_hud_telephone {
    group_label: "NonHUD"
    view_label: "Analysis - Minor"
    label: "Non HUD Telephone"
    type: count_distinct

    filters: [
      exit.Telephone: "-0,-1,-99,-NULL,-EMPTY"
    ]

    drill_fields: [exit_queries_drill_fields*]
    sql: ${ExitID} ;;
  }

  measure: non_hud_workplacepromisedifference {
    group_label: "NonHUD"
    view_label: "Analysis - Minor"
    label: "Non HUD WorkplacePromiseDifference"
    type: count_distinct

    filters: [
      exit.WorkplacePromiseDifference: "-0,-1,-8,-9,-99,-NULL,-EMPTY"
    ]

    drill_fields: [exit_queries_drill_fields*]
    sql: ${ExitID} ;;
  }

  measure: non_hud_workplaceviolencethreats {
    group_label: "NonHUD"
    view_label: "Analysis - Minor"
    label: "Non HUD WorkPlaceViolenceThreats"
    type: count_distinct

    filters: [
      exit.WorkplaceViolenceThreats: "-0,-1,-8,-9,-99,-NULL,-EMPTY"
    ]

    drill_fields: [exit_queries_drill_fields*]
    sql: ${ExitID} ;;
  }

  measure: null_datecreated {
    group_label: "Null"
    view_label: "Analysis - Major"
    label: "Null DateCreated"
    type: count_distinct

    filters: [
      exit.DateCreated: "NULL,EMPTY"
    ]

    drill_fields: [exit_queries_drill_fields*]
    sql: ${ExitID} ;;
  }

  measure: null_dateupdated {
    group_label: "Null"
    view_label: "Analysis - Major"
    label: "Null DateUpdated"
    type: count_distinct

    filters: [
      exit.DateUpdated: "NULL,EMPTY"
    ]

    drill_fields: [exit_queries_drill_fields*]
    sql: ${ExitID} ;;
  }

  measure: null_destination {
    group_label: "Null"
    view_label: "Analysis - Major"
    label: "Null Destination"
    type: count_distinct

    filters: [
      exit.Destination: "NULL,EMPTY"
    ]

    drill_fields: [exit_queries_drill_fields*]
    sql: ${ExitID} ;;
  }

  measure: null_enrollmentid {
    group_label: "Null"
    view_label: "Analysis - Major"
    label: "Null EnrollmentID"
    type: count_distinct

    filters: [
      exit.EnrollmentID: "NULL,EMPTY"
    ]

    drill_fields: [exit_queries_drill_fields*]
    sql: ${ExitID} ;;
  }

  measure: null_exitdate {
    group_label: "Null"
    view_label: "Analysis - Major"
    label: "Null ExitDate"
    type: count_distinct

    filters: [
      exit.ExitDate: "NULL,EMPTY"
    ]

    drill_fields: [exit_queries_drill_fields*]
    sql: ${ExitID} ;;
  }

  measure: null_exitid {
    group_label: "Null"
    view_label: "Analysis - Major"
    label: "Null ExitID"
    type: count_distinct

    filters: [
      exit.ExitID: "NULL,EMPTY"
    ]

    drill_fields: [exit_queries_drill_fields*]
    sql: ${ExitID} ;;
  }

  measure: null_exportid {
    group_label: "Null"
    view_label: "Analysis - Dq"
    label: "Null ExportID"
    type: count_distinct

    filters: [
      exit.ExportID: "NULL,EMPTY"
    ]

    drill_fields: [exit_queries_drill_fields*]
    sql: ${ExitID} ;;
  }

  measure: null_personalid {
    group_label: "Null"
    view_label: "Analysis - Major"
    label: "Null PersonalID"
    type: count_distinct

    filters: [
      exit.PersonalID: "NULL,EMPTY"
    ]

    drill_fields: [exit_queries_drill_fields*]
    sql: ${ExitID} ;;
  }

  measure: null_userid {
    group_label: "Null"
    view_label: "Analysis - Dq"
    label: "Null UserID"
    type: count_distinct

    filters: [
      exit.UserID: "NULL,EMPTY"
    ]

    drill_fields: [exit_queries_drill_fields*]
    sql: ${ExitID} ;;
  }

  measure: exits_where_destination_is_not_other_and_otherdestination_is_not_null {
    group_label: "dqExit"
    view_label: "Analysis - Dq"
    label: "Exits where Destination is not Other and OtherDestination is not null"
    type: count_distinct

    filters: [
      exit.Destination: "-17",
      exit.OtherDestination: "-NULL,-EMPTY"
    ]

    drill_fields: [exit_queries_drill_fields*]
    sql: ${ExitID} ;;
  }

  measure: exits_where_projectcompletionstatus_is_not_3_and_earlyexitreason_not_null {
    group_label: "dqExit"
    view_label: "Analysis - Dq"
    label: "Exits where ProjectCompletionStatus is not 3 and EarlyExitReason not null"
    type: count_distinct

    filters: [
      exit.ProjectCompletionStatus: "-3",
      exit.EarlyExitReason: "-NULL,-EMPTY"
    ]

    drill_fields: [exit_queries_drill_fields*]
    sql: ${ExitID} ;;
  }

  measure: exits_where_exchangeforsex_is_not_yes_but_exchangeforsexpastthreemonths_is_not_null {
    group_label: "dqExit"
    view_label: "Analysis - Dq"
    label: "Exits where ExchangeForSex is not Yes but ExchangeForSexPastThreeMonths is not null"
    type: count_distinct

    filters: [
      exit.ExchangeForSex: "-1",
      exit.ExchangeForSexPastThreeMonths: "-NULL,-EMPTY"
    ]

    drill_fields: [exit_queries_drill_fields*]
    sql: ${ExitID} ;;
  }

  measure: exits_where_exchangeforsex_is_not_yes_but_countofexhangeforsex_is_not_null {
    group_label: "dqExit"
    view_label: "Analysis - Dq"
    label: "Exits where ExchangeForSex is not Yes but CountOfExhangeForSex is not null"
    type: count_distinct

    filters: [
      exit.ExchangeForSex: "-1",
      exit.CountOfExchangeForSex: "-NULL,-EMPTY"
    ]

    drill_fields: [exit_queries_drill_fields*]
    sql: ${ExitID} ;;
  }

  measure: exits_where_exchangeforsex_is_not_yes_but_askedorforcedtoexchangeforsex_is_not_null {
    group_label: "dqExit"
    view_label: "Analysis - Dq"
    label: "Exits where ExchangeForSex is not Yes but AskedOrForcedToExchangeForSex is not null"
    type: count_distinct

    filters: [
      exit.ExchangeForSex: "-1",
      exit.AskedOrForcedToExchangeForSex: "-NULL,-EMPTY"
    ]

    drill_fields: [exit_queries_drill_fields*]
    sql: ${ExitID} ;;
  }

  measure: exits_where_askedorforcedtoexchangeforsex_is_not_yes_but_askedorforcedtoexchangeforsexpastthreemonths_is_not_null {
    group_label: "dqExit"
    view_label: "Analysis - Dq"
    label: "Exits where AskedOrForcedToExchangeForSex is not Yes but AskedOrForcedToExchangeForSexPastThreeMonths is not null"
    type: count_distinct

    filters: [
      exit.AskedOrForcedToExchangeForSex: "-1",
      exit.AskedOrForcedToExchangeForSexPastThreeMonths: "-NULL,-EMPTY"
    ]

    drill_fields: [exit_queries_drill_fields*]
    sql: ${ExitID} ;;
  }

  measure: exits_where_workplacepromisedifference_and_workplaceviolencethreats_are_both_not_yes_but_coercedtocontinuework_is_not_null {
    group_label: "dqExit"
    view_label: "Analysis - Dq"
    label: "Exits where WorkplacePromiseDifference and WorkplaceViolenceThreats are both not Yes but CoercedToContinueWork is not null"
    type: count_distinct

    filters: [
      exit.WorkplacePromiseDifference: "-1",
      exit.WorkplaceViolenceThreats: "-1",
      exit.CoercedToContinueWork: "-NULL,-EMPTY"
    ]

    drill_fields: [exit_queries_drill_fields*]
    sql: ${ExitID} ;;
  }

  measure: exits_where_workplacepromisedifference_and_workplaceviolencethreats_are_both_not_yes_but_laborexploitpastthreemonths_is_not_null {
    group_label: "dqExit"
    view_label: "Analysis - Dq"
    label: "Exits where WorkplacePromiseDifference and WorkplaceViolenceThreats are both not Yes but LaborExploitPastThreeMonths is not null"
    type: count_distinct

    filters: [
      exit.WorkplacePromiseDifference: "-1",
      exit.WorkplaceViolenceThreats: "-1",
      exit.LaborExploitPastThreeMonths: "-NULL,-EMPTY"
    ]

    drill_fields: [exit_queries_drill_fields*]
    sql: ${ExitID} ;;
  }

  measure: exits_where_counselingreceived_is_not_yes_but_individualcounseling_is_not_null {
    group_label: "dqExit"
    view_label: "Analysis - Dq"
    label: "Exits where CounselingReceived is not Yes but IndividualCounseling is not null"
    type: count_distinct

    filters: [
      exit.CounselingReceived: "-1",
      exit.IndividualCounseling: "-NULL,-EMPTY"
    ]

    drill_fields: [exit_queries_drill_fields*]
    sql: ${ExitID} ;;
  }

  measure: exits_where_counselingreceived_is_not_yes_but_familycounseling_is_not_null {
    group_label: "dqExit"
    view_label: "Analysis - Dq"
    label: "Exits where CounselingReceived is not Yes but FamilyCounseling is not null"
    type: count_distinct

    filters: [
      exit.CounselingReceived: "-1",
      exit.FamilyCounseling: "-NULL,-EMPTY"
    ]

    drill_fields: [exit_queries_drill_fields*]
    sql: ${ExitID} ;;
  }

  measure: exits_where_counselingreceived_is_not_yes_but_groupcounseling_is_not_null {
    group_label: "dqExit"
    view_label: "Analysis - Dq"
    label: "Exits where CounselingReceived is not Yes but GroupCounseling is not null"
    type: count_distinct

    filters: [
      exit.CounselingReceived: "-1",
      exit.GroupCounseling: "-NULL,-EMPTY"
    ]

    drill_fields: [exit_queries_drill_fields*]
    sql: ${ExitID} ;;
  }

  measure: exits_where_counselingreceived_is_not_yes_but_sessioncountatexit_is_not_null {
    group_label: "dqExit"
    view_label: "Analysis - Dq"
    label: "Exits where CounselingReceived is not Yes but SessionCountAtExit is not null"
    type: count_distinct

    filters: [
      exit.CounselingReceived: "-1",
      exit.SessionCountAtExit: "-NULL,-EMPTY"
    ]

    drill_fields: [exit_queries_drill_fields*]
    sql: ${ExitID} ;;
  }

  measure: exits_where_postexitcounselingplan_is_not_yes_but_sessionsinplan_is_not_null {
    group_label: "dqExit"
    view_label: "Analysis - Dq"
    label: "Exits where PostExitCounselingPlan is not Yes but SessionsInPlan is not null"
    type: count_distinct

    filters: [
      exit.PostExitCounselingPlan: "-1",
      exit.SessionsInPlan: "-NULL,-EMPTY"
    ]

    drill_fields: [exit_queries_drill_fields*]
    sql: ${ExitID} ;;
  }

  measure: exits_where_aftercareprovided_is_not_yes_but_emailsocialmedia_is_not_null {
    group_label: "dqExit"
    view_label: "Analysis - Dq"
    label: "Exits where AftercareProvided is not Yes but EmailSocialMedia is not null"
    type: count_distinct

    filters: [
      exit.AftercareProvided: "-1",
      exit.EmailSocialMedia: "-NULL,-EMPTY"
    ]

    drill_fields: [exit_queries_drill_fields*]
    sql: ${ExitID} ;;
  }

  measure: exits_where_aftercareprovided_is_not_yes_but_telephone_is_not_null {
    group_label: "dqExit"
    view_label: "Analysis - Dq"
    label: "Exits where AftercareProvided is not Yes but Telephone is not null"
    type: count_distinct

    filters: [
      exit.AftercareProvided: "-1",
      exit.Telephone: "-NULL,-EMPTY"
    ]

    drill_fields: [exit_queries_drill_fields*]
    sql: ${ExitID} ;;
  }

  measure: exits_where_aftercareprovided_is_not_yes_but_inpersonindividual_is_not_null {
    group_label: "dqExit"
    view_label: "Analysis - Dq"
    label: "Exits where AftercareProvided is not Yes but InPersonIndividual is not null"
    type: count_distinct

    filters: [
      exit.AftercareProvided: "-1",
      exit.InPersonIndividual: "-NULL,-EMPTY"
    ]

    drill_fields: [exit_queries_drill_fields*]
    sql: ${ExitID} ;;
  }

  measure: exits_where_aftercareprovided_is_not_yes_but_inpersongroup_is_not_null {
    group_label: "dqExit"
    view_label: "Analysis - Dq"
    label: "Exits where AftercareProvided is not Yes but InPersonGroup is not null"
    type: count_distinct

    filters: [
      exit.AftercareProvided: "-1",
      exit.InPersonGroup: "-NULL,-EMPTY"
    ]

    drill_fields: [exit_queries_drill_fields*]
    sql: ${ExitID} ;;
  }

  measure: invalid_date_formatting_for_exitdate_in_exit_csv {
    group_label: "DateFormatting"
    view_label: "Analysis - Major"
    label: "Invalid Date Formatting for ExitDate in Exit.csv"
    type: count_distinct

    filters: [
      exit.ExitDate: "-____-__-__"
    ]

    drill_fields: [exit_queries_drill_fields*]
    sql: ${ExitID} ;;
  }

  measure: invalid_date_formatting_for_datecreated_in_exit_csv {
    group_label: "DateFormatting"
    view_label: "Analysis - Major"
    label: "Invalid Date Formatting for DateCreated in Exit.csv"
    type: count_distinct

    filters: [
      exit.DateCreated: "-____-__-__ __:__:__"
    ]

    drill_fields: [exit_queries_drill_fields*]
    sql: ${ExitID} ;;
  }

  measure: invalid_date_formatting_for_dateupdated_in_exit_csv {
    group_label: "DateFormatting"
    view_label: "Analysis - Major"
    label: "Invalid Date Formatting for DateUpdated in Exit.csv"
    type: count_distinct

    filters: [
      exit.DateUpdated: "-____-__-__ __:__:__"
    ]

    drill_fields: [exit_queries_drill_fields*]
    sql: ${ExitID} ;;
  }

  measure: total_major_null_values {
    group_label: "Null"
    view_label: "Analysis - Major"
    label: "Total Major Null Values"
    type: number

    drill_fields: [
      null_datecreated,
      null_dateupdated,
      null_destination,
      null_enrollmentid,
      null_exitdate,
      null_exitid
    ]
    sql:  ${null_datecreated}
          + ${null_dateupdated}
          + ${null_destination}
          + ${null_enrollmentid}
          + ${null_exitdate}
          + ${null_exitid}
          + ${null_personalid}
      ;;
  }

  measure: total_date_formatting_values {
    group_label: "DateFormatting"
    view_label: "Analysis - Major"
    label: "Total DateFormatting Values"
    type: number

    drill_fields: [
      invalid_date_formatting_for_exitdate_in_exit_csv,
      invalid_date_formatting_for_datecreated_in_exit_csv,
      invalid_date_formatting_for_dateupdated_in_exit_csv
    ]
    sql:  ${invalid_date_formatting_for_exitdate_in_exit_csv}
          + ${invalid_date_formatting_for_datecreated_in_exit_csv}
          + ${invalid_date_formatting_for_dateupdated_in_exit_csv}
      ;;
  }

  set: exit_queries_drill_fields {
    fields: [
      exit.ExitID
    ]
  }
}
