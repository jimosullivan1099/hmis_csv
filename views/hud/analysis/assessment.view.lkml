include: "/views/hud/assessment.view"

view: +assessment {
  measure: assessment_count {
    group_label: "Counts"
    view_label: "Analysis - General"
    label: "Assessment count"
    type: count_distinct


    drill_fields: [assessment_queries_drill_fields*]
    sql: ${AssessmentID} ;;
  }

  measure: invalid_date_formatting_for_assessmentdate_in_assessment_csv {
    group_label: "DateFormatting"
    view_label: "Analysis - Major"
    label: "Invalid Date Formatting for AssessmentDate in Assessment.csv"
    type: count_distinct

    filters: [
      assessment.AssessmentDate: "-____-__-__"
    ]

    drill_fields: [assessment_queries_drill_fields*]
    sql: ${AssessmentID} ;;
  }

  measure: invalid_date_formatting_for_datecreated_in_assessment_csv {
    group_label: "DateFormatting"
    view_label: "Analysis - Major"
    label: "Invalid Date Formatting for DateCreated in Assessment.csv"
    type: count_distinct

    filters: [
      assessment.DateCreated: "-____-__-__ __:__:__"
    ]

    drill_fields: [assessment_queries_drill_fields*]
    sql: ${AssessmentID} ;;
  }

  measure: invalid_date_formatting_for_dateupdated_in_assessment_csv {
    group_label: "DateFormatting"
    view_label: "Analysis - Major"
    label: "Invalid Date Formatting for DateUpdated in Assessment.csv"
    type: count_distinct

    filters: [
      assessment.DateUpdated: "-____-__-__ __:__:__"
    ]

    drill_fields: [assessment_queries_drill_fields*]
    sql: ${AssessmentID} ;;
  }

  measure: null_assessmentid {
    group_label: "Null"
    view_label: "Analysis - Major"
    label: "Null AssessmentID"
    type: count_distinct

    filters: [
      assessment.AssessmentID: "NULL,EMPTY"
    ]

    drill_fields: [assessment_queries_drill_fields*]
    sql: ${AssessmentID} ;;
  }

  measure: null_enrollmentid {
    group_label: "Null"
    view_label: "Analysis - Major"
    label: "Null EnrollmentID"
    type: count_distinct

    filters: [
      assessment.EnrollmentID: "NULL,EMPTY"
    ]

    drill_fields: [assessment_queries_drill_fields*]
    sql: ${AssessmentID} ;;
  }

  measure: null_personalid {
    group_label: "Null"
    view_label: "Analysis - Major"
    label: "Null PersonalID"
    type: count_distinct

    filters: [
      assessment.PersonalID: "NULL,EMPTY"
    ]

    drill_fields: [assessment_queries_drill_fields*]
    sql: ${AssessmentID} ;;
  }

  measure: non_hud_assessmenttype {
    group_label: "NonHUD"
    view_label: "Analysis - Minor"
    label: "Non HUD AssessmentType"
    type: count_distinct

    filters: [
      assessment.AssessmentType: "-1,-2,-3,-NULL,-EMPTY"
    ]

    drill_fields: [assessment_queries_drill_fields*]
    sql: ${AssessmentID} ;;
  }

  measure: non_hud_assessmentlevel {
    group_label: "NonHUD"
    view_label: "Analysis - Minor"
    label: "Non HUD AssessmentLevel"
    type: count_distinct

    filters: [
      assessment.AssessmentLevel: "-1,-2,-NULL,-EMPTY"
    ]

    drill_fields: [assessment_queries_drill_fields*]
    sql: ${AssessmentID} ;;
  }

  measure: non_hud_prioritizationstatus {
    group_label: "NonHUD"
    view_label: "Analysis - Minor"
    label: "Non HUD PrioritizationStatus"
    type: count_distinct

    filters: [
      assessment.PrioritizationStatus: "-1,-2,-NULL,-EMPTY"
    ]

    drill_fields: [assessment_queries_drill_fields*]
    sql: ${AssessmentID} ;;
  }

  measure: null_assessmentlocation {
    group_label: "Null"
    view_label: "Analysis - Minor"
    label: "Null AssessmentLocation"
    type: count_distinct

    filters: [
      assessment.AssessmentLocation: "NULL,EMPTY"
    ]

    drill_fields: [assessment_queries_drill_fields*]
    sql: ${AssessmentID} ;;
  }

  measure: null_assessmenttype {
    group_label: "Null"
    view_label: "Analysis - Minor"
    label: "Null AssessmentType"
    type: count_distinct

    filters: [
      assessment.AssessmentType: "NULL,EMPTY"
    ]

    drill_fields: [assessment_queries_drill_fields*]
    sql: ${AssessmentID} ;;
  }

  measure: null_assessmentlevel {
    group_label: "Null"
    view_label: "Analysis - Minor"
    label: "Null AssessmentLevel"
    type: count_distinct

    filters: [
      assessment.AssessmentLevel: "NULL,EMPTY"
    ]

    drill_fields: [assessment_queries_drill_fields*]
    sql: ${AssessmentID} ;;
  }

  measure: null_prioritizationstatus {
    group_label: "Null"
    view_label: "Analysis - Minor"
    label: "Null PrioritizationStatus"
    type: count_distinct

    filters: [
      assessment.PrioritizationStatus: "NULL,EMPTY"
    ]

    drill_fields: [assessment_queries_drill_fields*]
    sql: ${AssessmentID} ;;
  }

  measure: total_major_null_values {
    group_label: "Null"
    view_label: "Analysis - Major"
    label: "Total Major Null Values"
    type: number

    drill_fields: [
      null_assessmentid,
      null_enrollmentid,
      null_personalid
    ]
    sql:  ${null_assessmentid}
          + ${null_enrollmentid}
          + ${null_personalid}
      ;;
  }

  measure: total_date_formatting_values {
    group_label: "DateFormatting"
    view_label: "Analysis - Major"
    label: "Total DateFormatting Values"
    type: number

    drill_fields: [
      invalid_date_formatting_for_assessmentdate_in_assessment_csv,
      invalid_date_formatting_for_datecreated_in_assessment_csv,
      invalid_date_formatting_for_dateupdated_in_assessment_csv
    ]
    sql:  ${invalid_date_formatting_for_assessmentdate_in_assessment_csv}
          + ${invalid_date_formatting_for_datecreated_in_assessment_csv}
          + ${invalid_date_formatting_for_dateupdated_in_assessment_csv}
      ;;
  }

  set: assessment_queries_drill_fields {
    fields: [
      assessment.AssessmentID
    ]
  }
}
