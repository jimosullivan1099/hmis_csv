include: "../enrollmentcoc.view.lkml"

view: +enrollmentcoc {
  measure: enrollmentcoc_count {
    group_label: "Counts"
    view_label: "Analysis - General"
    label: "EnrollmentCoC count"
    type: count_distinct


    drill_fields: [enrollmentcoc_queries_drill_fields*]
    sql: ${EnrollmentCoCID} ;;
  }

  measure: null_coccode {
    group_label: "Null"
    view_label: "Analysis - Major"
    label: "Null CoCCode"
    type: count_distinct

    filters: [
      enrollmentcoc.CoCCode: "NULL,EMPTY"
    ]

    drill_fields: [enrollmentcoc_queries_drill_fields*]
    sql: ${EnrollmentCoCID} ;;
  }

  measure: null_datacollectionstage {
    group_label: "Null"
    view_label: "Analysis - Major"
    label: "Null DataCollectionStage"
    type: count_distinct

    filters: [
      enrollmentcoc.DataCollectionStage: "NULL,EMPTY"
    ]

    drill_fields: [enrollmentcoc_queries_drill_fields*]
    sql: ${EnrollmentCoCID} ;;
  }

  measure: null_datecreated {
    group_label: "Null"
    view_label: "Analysis - Major"
    label: "Null DateCreated"
    type: count_distinct

    filters: [
      enrollmentcoc.DateCreated: "NULL,EMPTY"
    ]

    drill_fields: [enrollmentcoc_queries_drill_fields*]
    sql: ${EnrollmentCoCID} ;;
  }

  measure: null_dateupdated {
    group_label: "Null"
    view_label: "Analysis - Major"
    label: "Null DateUpdated"
    type: count_distinct

    filters: [
      enrollmentcoc.DateUpdated: "NULL,EMPTY"
    ]

    drill_fields: [enrollmentcoc_queries_drill_fields*]
    sql: ${EnrollmentCoCID} ;;
  }

  measure: null_enrollmentcocid {
    group_label: "Null"
    view_label: "Analysis - Major"
    label: "Null EnrollmentCoCID"
    type: count_distinct

    filters: [
      enrollmentcoc.EnrollmentCoCID: "NULL,EMPTY"
    ]

    drill_fields: [enrollmentcoc_queries_drill_fields*]
    sql: ${EnrollmentCoCID} ;;
  }

  measure: null_enrollmentid {
    group_label: "Null"
    view_label: "Analysis - Major"
    label: "Null EnrollmentID"
    type: count_distinct

    filters: [
      enrollmentcoc.EnrollmentID: "NULL,EMPTY"
    ]

    drill_fields: [enrollmentcoc_queries_drill_fields*]
    sql: ${EnrollmentCoCID} ;;
  }

  measure: null_exportid {
    group_label: "Null"
    view_label: "Analysis - Dq"
    label: "Null ExportID"
    type: count_distinct

    filters: [
      enrollmentcoc.ExportID: "NULL,EMPTY"
    ]

    drill_fields: [enrollmentcoc_queries_drill_fields*]
    sql: ${EnrollmentCoCID} ;;
  }

  measure: null_householdid {
    group_label: "Null"
    view_label: "Analysis - Major"
    label: "Null HouseholdID"
    type: count_distinct

    filters: [
      enrollmentcoc.HouseholdID: "NULL,EMPTY"
    ]

    drill_fields: [enrollmentcoc_queries_drill_fields*]
    sql: ${EnrollmentCoCID} ;;
  }

  measure: null_informationdate {
    group_label: "Null"
    view_label: "Analysis - Major"
    label: "Null InformationDate"
    type: count_distinct

    filters: [
      enrollmentcoc.InformationDate: "NULL,EMPTY"
    ]

    drill_fields: [enrollmentcoc_queries_drill_fields*]
    sql: ${EnrollmentCoCID} ;;
  }

  measure: null_personalid {
    group_label: "Null"
    view_label: "Analysis - Major"
    label: "Null PersonalID"
    type: count_distinct

    filters: [
      enrollmentcoc.PersonalID: "NULL,EMPTY"
    ]

    drill_fields: [enrollmentcoc_queries_drill_fields*]
    sql: ${EnrollmentCoCID} ;;
  }

  measure: null_projectid {
    group_label: "Null"
    view_label: "Analysis - Major"
    label: "Null ProjectID"
    type: count_distinct

    filters: [
      enrollmentcoc.ProjectID: "NULL,EMPTY"
    ]

    drill_fields: [enrollmentcoc_queries_drill_fields*]
    sql: ${EnrollmentCoCID} ;;
  }

  measure: null_userid {
    group_label: "Null"
    view_label: "Analysis - Dq"
    label: "Null UserID"
    type: count_distinct

    filters: [
      enrollmentcoc.UserID: "NULL,EMPTY"
    ]

    drill_fields: [enrollmentcoc_queries_drill_fields*]
    sql: ${EnrollmentCoCID} ;;
  }

  measure: invalid_date_formatting_for_informationdate_in_enrollmentcoc_csv {
    group_label: "DateFormatting"
    view_label: "Analysis - Major"
    label: "Invalid Date Formatting for InformationDate in EnrollmentCoC.csv"
    type: count_distinct

    filters: [
      enrollmentcoc.InformationDate: "-____-__-__"
    ]

    drill_fields: [enrollmentcoc_queries_drill_fields*]
    sql: ${EnrollmentCoCID} ;;
  }

  measure: invalid_date_formatting_for_datecreated_in_enrollmentcoc_csv {
    group_label: "DateFormatting"
    view_label: "Analysis - Major"
    label: "Invalid Date Formatting for DateCreated in EnrollmentCoC.csv"
    type: count_distinct

    filters: [
      enrollmentcoc.DateCreated: "-____-__-__ __:__:__"
    ]

    drill_fields: [enrollmentcoc_queries_drill_fields*]
    sql: ${EnrollmentCoCID} ;;
  }

  measure: invalid_date_formatting_for_dateupdated_in_enrollmentcoc_csv {
    group_label: "DateFormatting"
    view_label: "Analysis - Major"
    label: "Invalid Date Formatting for DateUpdated in EnrollmentCoC.csv"
    type: count_distinct

    filters: [
      enrollmentcoc.DateUpdated: "-____-__-__ __:__:__"
    ]

    drill_fields: [enrollmentcoc_queries_drill_fields*]
    sql: ${EnrollmentCoCID} ;;
  }

  measure: invalid_coccode_format_in_enrollmentcoc_csv {
    group_label: "DateFormatting"
    view_label: "Analysis - Major"
    label: "Invalid CoCCode format (required format is two letters, a dash, and three numbers)"
    type: count_distinct

    filters: [
      enrollmentcoc.Valid_CoCCode: "No"
    ]

    drill_fields: [enrollmentcoc_queries_drill_fields*]
    sql: ${EnrollmentCoCID} ;;
  }

  set: enrollmentcoc_queries_drill_fields {
    fields: [
      enrollmentcoc.EnrollmentCoCID
    ]
  }
}