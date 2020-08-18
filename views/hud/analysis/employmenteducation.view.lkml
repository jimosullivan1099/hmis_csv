include: "/views/hud/employmenteducation.view"

view: +employmenteducation {
  measure: employmenteducation_count {
    group_label: "Counts"
    view_label: "Analysis - General"
    label: "EmploymentEducation count"
    type: count_distinct


    drill_fields: [employmenteducation_queries_drill_fields*]
    sql: ${EmploymentEducationID} ;;
  }

  measure: non_hud_employed {
    group_label: "NonHUD"
    view_label: "Analysis - Minor"
    label: "Non HUD Employed"
    type: count_distinct

    filters: [
      employmenteducation.Employed: "-0,-1,-8,-9,-99,-NULL,-EMPTY"
    ]

    drill_fields: [employmenteducation_queries_drill_fields*]
    sql: ${EmploymentEducationID} ;;
  }

  measure: non_hud_employmenttype {
    group_label: "NonHUD"
    view_label: "Analysis - Minor"
    label: "Non HUD EmploymentType"
    type: count_distinct

    filters: [
      employmenteducation.EmploymentType: "-1,-2,-3,-99,-NULL,-EMPTY"
    ]

    drill_fields: [employmenteducation_queries_drill_fields*]
    sql: ${EmploymentEducationID} ;;
  }

  measure: non_hud_lastgradecompleted {
    group_label: "NonHUD"
    view_label: "Analysis - Minor"
    label: "Non HUD LastGradeCompleted"
    type: count_distinct

    filters: [
      employmenteducation.LastGradeCompleted: "-1,-2,-3,-4,-5,-6,-7,-8,-9,-10,-11,-12,-13,-14,-99,-NULL,-EMPTY"
    ]

    drill_fields: [employmenteducation_queries_drill_fields*]
    sql: ${EmploymentEducationID} ;;
  }

  measure: non_hud_notemployedreason {
    group_label: "NonHUD"
    view_label: "Analysis - Minor"
    label: "Non HUD NotEmployedReason"
    type: count_distinct

    filters: [
      employmenteducation.NotEmployedReason: "-1,-2,-3,-99,-NULL,-EMPTY"
    ]

    drill_fields: [employmenteducation_queries_drill_fields*]
    sql: ${EmploymentEducationID} ;;
  }

  measure: non_hud_schoolstatus {
    group_label: "NonHUD"
    view_label: "Analysis - Minor"
    label: "Non HUD SchoolStatus"
    type: count_distinct

    filters: [
      employmenteducation.SchoolStatus: "-1,-2,-3,-4,-5,-6,-7,-8,-9,-99,-NULL,-EMPTY"
    ]

    drill_fields: [employmenteducation_queries_drill_fields*]
    sql: ${EmploymentEducationID} ;;
  }

  measure: null_datacollectionstage {
    group_label: "Null"
    view_label: "Analysis - Major"
    label: "Null DataCollectionStage"
    type: count_distinct

    filters: [
      employmenteducation.DataCollectionStage: "NULL,EMPTY"
    ]

    drill_fields: [employmenteducation_queries_drill_fields*]
    sql: ${EmploymentEducationID} ;;
  }

  measure: null_datecreated {
    group_label: "Null"
    view_label: "Analysis - Major"
    label: "Null DateCreated"
    type: count_distinct

    filters: [
      employmenteducation.DateCreated: "NULL,EMPTY"
    ]

    drill_fields: [employmenteducation_queries_drill_fields*]
    sql: ${EmploymentEducationID} ;;
  }

  measure: null_dateupdated {
    group_label: "Null"
    view_label: "Analysis - Major"
    label: "Null DateUpdated"
    type: count_distinct

    filters: [
      employmenteducation.DateUpdated: "NULL,EMPTY"
    ]

    drill_fields: [employmenteducation_queries_drill_fields*]
    sql: ${EmploymentEducationID} ;;
  }

  measure: null_employmenteducationid {
    group_label: "Null"
    view_label: "Analysis - Major"
    label: "Null EmploymentEducationID"
    type: count_distinct

    filters: [
      employmenteducation.EmploymentEducationID: "NULL,EMPTY"
    ]

    drill_fields: [employmenteducation_queries_drill_fields*]
    sql: ${EmploymentEducationID} ;;
  }

  measure: null_enrollmentid {
    group_label: "Null"
    view_label: "Analysis - Major"
    label: "Null EnrollmentID"
    type: count_distinct

    filters: [
      employmenteducation.EnrollmentID: "NULL,EMPTY"
    ]

    drill_fields: [employmenteducation_queries_drill_fields*]
    sql: ${EmploymentEducationID} ;;
  }

  measure: null_exportid {
    group_label: "Null"
    view_label: "Analysis - Dq"
    label: "Null ExportID"
    type: count_distinct

    filters: [
      employmenteducation.ExportID: "NULL,EMPTY"
    ]

    drill_fields: [employmenteducation_queries_drill_fields*]
    sql: ${EmploymentEducationID} ;;
  }

  measure: null_informationdate {
    group_label: "Null"
    view_label: "Analysis - Major"
    label: "Null InformationDate"
    type: count_distinct

    filters: [
      employmenteducation.InformationDate: "NULL,EMPTY"
    ]

    drill_fields: [employmenteducation_queries_drill_fields*]
    sql: ${EmploymentEducationID} ;;
  }

  measure: null_personalid {
    group_label: "Null"
    view_label: "Analysis - Major"
    label: "Null PersonalID"
    type: count_distinct

    filters: [
      employmenteducation.PersonalID: "NULL,EMPTY"
    ]

    drill_fields: [employmenteducation_queries_drill_fields*]
    sql: ${EmploymentEducationID} ;;
  }

  measure: null_userid {
    group_label: "Null"
    view_label: "Analysis - Dq"
    label: "Null UserID"
    type: count_distinct

    filters: [
      employmenteducation.UserID: "NULL,EMPTY"
    ]

    drill_fields: [employmenteducation_queries_drill_fields*]
    sql: ${EmploymentEducationID} ;;
  }

  measure: employmenteducation_records_with_yes_for_employed_but_no_value_for_employmenttype {
    group_label: "dqEmploymentEducation"
    view_label: "Analysis - Dq"
    label: "EmploymentEducation records with Yes for Employed but no value for EmploymentType"
    type: count_distinct

    filters: [
      employmenteducation.Employed: "1",
      employmenteducation.EmploymentType: "NULL,EMPTY"
    ]

    drill_fields: [employmenteducation_queries_drill_fields*]
    sql: ${EmploymentEducationID} ;;
  }

  measure: employmenteducation_records_with_no_for_employed_but_no_value_for_notemployedreason {
    group_label: "dqEmploymentEducation"
    view_label: "Analysis - Dq"
    label: "EmploymentEducation records with No for Employed but no value for NotEmployedReason"
    type: count_distinct

    filters: [
      employmenteducation.Employed: "0",
      employmenteducation.NotEmployedReason: "NULL,EMPTY"
    ]

    drill_fields: [employmenteducation_queries_drill_fields*]
    sql: ${EmploymentEducationID} ;;
  }

  measure: invalid_date_formatting_for_informationdate_in_employmenteducation_csv {
    group_label: "DateFormatting"
    view_label: "Analysis - Major"
    label: "Invalid Date Formatting for InformationDate in EmploymentEducation.csv"
    type: count_distinct

    filters: [
      employmenteducation.InformationDate: "-____-__-__"
    ]

    drill_fields: [employmenteducation_queries_drill_fields*]
    sql: ${EmploymentEducationID} ;;
  }

  measure: invalid_date_formatting_for_datecreated_in_employmenteducation_csv {
    group_label: "DateFormatting"
    view_label: "Analysis - Major"
    label: "Invalid Date Formatting for DateCreated in EmploymentEducation.csv"
    type: count_distinct

    filters: [
      employmenteducation.DateCreated: "-____-__-__ __:__:__"
    ]

    drill_fields: [employmenteducation_queries_drill_fields*]
    sql: ${EmploymentEducationID} ;;
  }

  measure: invalid_date_formatting_for_dateupdated_in_employmenteducation_csv {
    group_label: "DateFormatting"
    view_label: "Analysis - Major"
    label: "Invalid Date Formatting for DateUpdated in EmploymentEducation.csv"
    type: count_distinct

    filters: [
      employmenteducation.DateUpdated: "-____-__-__ __:__:__"
    ]

    drill_fields: [employmenteducation_queries_drill_fields*]
    sql: ${EmploymentEducationID} ;;
  }

  set: employmenteducation_queries_drill_fields {
    fields: [
      employmenteducation.EmploymentEducationID
    ]
  }
}