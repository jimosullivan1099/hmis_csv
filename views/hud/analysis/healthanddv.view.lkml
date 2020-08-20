include: "/views/hud/healthanddv.view"

view: +healthanddv {
  measure: healthanddv_count {
    group_label: "Counts"
    view_label: "Analysis - General"
    label: "HealthAndDV count"
    type: count_distinct


    drill_fields: [healthanddv_queries_drill_fields*]
    sql: ${HealthAndDVID} ;;
  }

  measure: non_hud_currentlyfleeing {
    group_label: "NonHUD"
    view_label: "Analysis - Minor"
    label: "Non HUD CurrentlyFleeing"
    type: count_distinct

    filters: [
      healthanddv.CurrentlyFleeing: "-0,-1,-8,-9,-99,-NULL,-EMPTY"
    ]

    drill_fields: [healthanddv_queries_drill_fields*]
    sql: ${HealthAndDVID} ;;
  }

  measure: non_hud_dentalhealthstatus {
    group_label: "NonHUD"
    view_label: "Analysis - Minor"
    label: "Non HUD DentalHealthStatus"
    type: count_distinct

    filters: [
      healthanddv.DentalHealthStatus: "-1,-2,-3,-4,-5,-8,-9,-99,-NULL,-EMPTY"
    ]

    drill_fields: [healthanddv_queries_drill_fields*]
    sql: ${HealthAndDVID} ;;
  }

  measure: non_hud_domesticviolencevictim {
    group_label: "NonHUD"
    view_label: "Analysis - Minor"
    label: "Non HUD DomesticViolenceVictim"
    type: count_distinct

    filters: [
      healthanddv.DomesticViolenceVictim: "-0,-1,-8,-9,-99,-NULL,-EMPTY"
    ]

    drill_fields: [healthanddv_queries_drill_fields*]
    sql: ${HealthAndDVID} ;;
  }

  measure: non_hud_generalhealthstatus {
    group_label: "NonHUD"
    view_label: "Analysis - Minor"
    label: "Non HUD GeneralHealthStatus"
    type: count_distinct

    filters: [
      healthanddv.GeneralHealthStatus: "-1,-2,-3,-4,-5,-8,-9,-99,-NULL,-EMPTY"
    ]

    drill_fields: [healthanddv_queries_drill_fields*]
    sql: ${HealthAndDVID} ;;
  }

  measure: non_hud_mentalhealthstatus {
    group_label: "NonHUD"
    view_label: "Analysis - Minor"
    label: "Non HUD MentalHealthStatus"
    type: count_distinct

    filters: [
      healthanddv.MentalHealthStatus: "-1,-2,-3,-4,-5,-8,-9,-99,-NULL,-EMPTY"
    ]

    drill_fields: [healthanddv_queries_drill_fields*]
    sql: ${HealthAndDVID} ;;
  }

  measure: non_hud_pregnancystatus {
    group_label: "NonHUD"
    view_label: "Analysis - Minor"
    label: "Non HUD PregnancyStatus"
    type: count_distinct

    filters: [
      healthanddv.PregnancyStatus: "-0,-1,-8,-9,-99,-NULL,-EMPTY"
    ]

    drill_fields: [healthanddv_queries_drill_fields*]
    sql: ${HealthAndDVID} ;;
  }

  measure: non_hud_whenoccurred {
    group_label: "NonHUD"
    view_label: "Analysis - Minor"
    label: "Non HUD WhenOccurred"
    type: count_distinct

    filters: [
      healthanddv.WhenOccurred: "-1,-2,-3,-4,-8,-9,-99,-NULL,-EMPTY"
    ]

    drill_fields: [healthanddv_queries_drill_fields*]
    sql: ${HealthAndDVID} ;;
  }

  measure: null_datacollectionstage {
    group_label: "Null"
    view_label: "Analysis - Major"
    label: "Null DataCollectionStage"
    type: count_distinct

    filters: [
      healthanddv.DataCollectionStage: "NULL,EMPTY"
    ]

    drill_fields: [healthanddv_queries_drill_fields*]
    sql: ${HealthAndDVID} ;;
  }

  measure: null_datecreated {
    group_label: "Null"
    view_label: "Analysis - Major"
    label: "Null DateCreated"
    type: count_distinct

    filters: [
      healthanddv.DateCreated: "NULL,EMPTY"
    ]

    drill_fields: [healthanddv_queries_drill_fields*]
    sql: ${HealthAndDVID} ;;
  }

  measure: null_dateupdated {
    group_label: "Null"
    view_label: "Analysis - Major"
    label: "Null DateUpdated"
    type: count_distinct

    filters: [
      healthanddv.DateUpdated: "NULL,EMPTY"
    ]

    drill_fields: [healthanddv_queries_drill_fields*]
    sql: ${HealthAndDVID} ;;
  }

  measure: null_enrollmentid {
    group_label: "Null"
    view_label: "Analysis - Major"
    label: "Null EnrollmentID"
    type: count_distinct

    filters: [
      healthanddv.EnrollmentID: "NULL,EMPTY"
    ]

    drill_fields: [healthanddv_queries_drill_fields*]
    sql: ${HealthAndDVID} ;;
  }

  measure: null_exportid {
    group_label: "Null"
    view_label: "Analysis - Dq"
    label: "Null ExportID"
    type: count_distinct

    filters: [
      healthanddv.ExportID: "NULL,EMPTY"
    ]

    drill_fields: [healthanddv_queries_drill_fields*]
    sql: ${HealthAndDVID} ;;
  }

  measure: null_healthanddvid {
    group_label: "Null"
    view_label: "Analysis - Major"
    label: "Null HealthAndDVID"
    type: count_distinct

    filters: [
      healthanddv.HealthAndDVID: "NULL,EMPTY"
    ]

    drill_fields: [healthanddv_queries_drill_fields*]
    sql: ${HealthAndDVID} ;;
  }

  measure: null_informationdate {
    group_label: "Null"
    view_label: "Analysis - Major"
    label: "Null InformationDate"
    type: count_distinct

    filters: [
      healthanddv.InformationDate: "NULL,EMPTY"
    ]

    drill_fields: [healthanddv_queries_drill_fields*]
    sql: ${HealthAndDVID} ;;
  }

  measure: null_personalid {
    group_label: "Null"
    view_label: "Analysis - Major"
    label: "Null PersonalID"
    type: count_distinct

    filters: [
      healthanddv.PersonalID: "NULL,EMPTY"
    ]

    drill_fields: [healthanddv_queries_drill_fields*]
    sql: ${HealthAndDVID} ;;
  }

  measure: null_userid {
    group_label: "Null"
    view_label: "Analysis - Dq"
    label: "Null UserID"
    type: count_distinct

    filters: [
      healthanddv.UserID: "NULL,EMPTY"
    ]

    drill_fields: [healthanddv_queries_drill_fields*]
    sql: ${HealthAndDVID} ;;
  }

  measure: healthanddv_records_where_domesticviolencevictim_is_yes_but_there_is_no_value_for_currentlyfleeing {
    group_label: "dqHealthAndDV"
    view_label: "Analysis - Dq"
    label: "HealthAndDV records where DomesticViolenceVictim is Yes but there is no value for CurrentlyFleeing"
    type: count_distinct

    filters: [
      healthanddv.DomesticViolenceVictim: "1",
      healthanddv.CurrentlyFleeing: "NULL,EMPTY"
    ]

    drill_fields: [healthanddv_queries_drill_fields*]
    sql: ${HealthAndDVID} ;;
  }

  measure: healthanddv_records_where_pregnancystatus_is_yes_but_there_is_no_value_for_duedate {
    group_label: "dqHealthAndDV"
    view_label: "Analysis - Dq"
    label: "HealthAndDV records where PregnancyStatus is Yes but there is no value for DueDate"
    type: count_distinct

    filters: [
      healthanddv.PregnancyStatus: "1",
      healthanddv.DueDate: "NULL,EMPTY"
    ]

    drill_fields: [healthanddv_queries_drill_fields*]
    sql: ${HealthAndDVID} ;;
  }

  measure: invalid_date_formatting_for_informationdate_in_healthanddv_csv {
    group_label: "DateFormatting"
    view_label: "Analysis - Major"
    label: "Invalid Date Formatting for InformationDate in HealthAndDV.csv"
    type: count_distinct

    filters: [
      healthanddv.InformationDate: "-____-__-__"
    ]

    drill_fields: [healthanddv_queries_drill_fields*]
    sql: ${HealthAndDVID} ;;
  }

  measure: invalid_date_formatting_for_datecreated_in_healthanddv_csv {
    group_label: "DateFormatting"
    view_label: "Analysis - Major"
    label: "Invalid Date Formatting for DateCreated in HealthAndDV.csv"
    type: count_distinct

    filters: [
      healthanddv.DateCreated: "-____-__-__ __:__:__"
    ]

    drill_fields: [healthanddv_queries_drill_fields*]
    sql: ${HealthAndDVID} ;;
  }

  measure: invalid_date_formatting_for_dateupdated_in_healthanddv_csv {
    group_label: "DateFormatting"
    view_label: "Analysis - Major"
    label: "Invalid Date Formatting for DateUpdated in HealthAndDV.csv"
    type: count_distinct

    filters: [
      healthanddv.DateUpdated: "-____-__-__ __:__:__"
    ]

    drill_fields: [healthanddv_queries_drill_fields*]
    sql: ${HealthAndDVID} ;;
  }

  measure: total_major_null_values {
    group_label: "Null"
    view_label: "Analysis - Major"
    label: "Total Major Null Values"
    type: number

    drill_fields: [
      null_datacollectionstage,
      null_datecreated,
      null_dateupdated,
      null_enrollmentid,
      null_healthanddvid,
      null_informationdate,
      null_personalid
    ]
    sql:  ${null_datacollectionstage}
          + ${null_datecreated}
          + ${null_dateupdated}
          + ${null_enrollmentid}
          + ${null_healthanddvid}
          + ${null_informationdate}
          + ${null_personalid}
      ;;
  }

  measure: total_date_formatting_values {
    group_label: "DateFormatting"
    view_label: "Analysis - Major"
    label: "Total DateFormatting Values"
    type: number

    drill_fields: [
      invalid_date_formatting_for_informationdate_in_healthanddv_csv,
      invalid_date_formatting_for_datecreated_in_healthanddv_csv,
      invalid_date_formatting_for_dateupdated_in_healthanddv_csv
    ]
    sql:  ${invalid_date_formatting_for_informationdate_in_healthanddv_csv}
          + ${invalid_date_formatting_for_datecreated_in_healthanddv_csv}
          + ${invalid_date_formatting_for_dateupdated_in_healthanddv_csv}
      ;;
  }

  set: healthanddv_queries_drill_fields {
    fields: [
      healthanddv.HealthAndDVID
    ]
  }
}
