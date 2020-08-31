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

  measure: employmenteducations_that_reference_an_invalid_enrollment {
    group_label: "Invalid Reference"
    view_label: "Analysis - Major"
    label: "EmploymentEducations that reference an invalid enrollment"
    type: count_distinct

    filters: [
      enrollment.EnrollmentID: "NULL,EMPTY"
    ]

    drill_fields: [employmenteducation_queries_drill_fields*]
    sql: ${EnrollmentID} ;;
  }

  measure: employmenteducations_that_reference_an_invalid_exit {
    group_label: "Invalid Reference"
    view_label: "Analysis - Major"
    label: "EmploymentEducations that reference an invalid exit"
    type: count_distinct

    filters: [
      exit.EnrollmentID: "NULL,EMPTY"
    ]

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

  measure: total_major_null_values {
    group_label: "Null"
    view_label: "Analysis - Major"
    label: "Total Major Null Values"
    type: number

    drill_fields: [
      null_datacollectionstage,
      null_datecreated,
      null_dateupdated,
      null_employmenteducationid,
      null_enrollmentid,
      null_informationdate,
      null_personalid
    ]
    sql:  ${null_datacollectionstage}
          + ${null_datecreated}
          + ${null_dateupdated}
          + ${null_employmenteducationid}
          + ${null_enrollmentid}
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
      invalid_date_formatting_for_informationdate_in_employmenteducation_csv,
      invalid_date_formatting_for_datecreated_in_employmenteducation_csv,
      invalid_date_formatting_for_dateupdated_in_employmenteducation_csv
    ]
    sql:  ${invalid_date_formatting_for_informationdate_in_employmenteducation_csv}
          + ${invalid_date_formatting_for_datecreated_in_employmenteducation_csv}
          + ${invalid_date_formatting_for_dateupdated_in_employmenteducation_csv}
      ;;
  }

  measure: total_minor_nonhud_values {
    group_label: "NonHUD"
    view_label: "Analysis - Minor"
    label: "Total Minor NonHUD Values for EmploymentEducation.csv"
    type: number

    drill_fields: [
      non_hud_employed,
      non_hud_employmenttype,
      non_hud_lastgradecompleted,
      non_hud_notemployedreason,
      non_hud_schoolstatus
    ]
    sql:  ${non_hud_employed}
          + ${non_hud_employmenttype}
          + ${non_hud_lastgradecompleted}
          + ${non_hud_notemployedreason}
          + ${non_hud_schoolstatus}
      ;;
  }

  measure: total_dq_issues {
    group_label: "dqEmploymentEducation"
    view_label: "Analysis - Dq"
    label: "Total DQ Issues"
    type: number

    drill_fields: [
      employmenteducation_records_with_yes_for_employed_but_no_value_for_employmenttype,
      employmenteducation_records_with_no_for_employed_but_no_value_for_notemployedreason
    ]
    sql:  ${employmenteducation_records_with_yes_for_employed_but_no_value_for_employmenttype}
          + ${employmenteducation_records_with_no_for_employed_but_no_value_for_notemployedreason}
      ;;
  }

  set: employmenteducation_queries_drill_fields {
    fields: [
      employmenteducation.EmploymentEducationID
    ]
  }
}
