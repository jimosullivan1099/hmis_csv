include: "/views/hud/assessmentquestions.view"

view: +assessmentquestions {
  measure: assessmentquestions_count {
    group_label: "Counts"
    view_label: "Analysis - General"
    label: "AssessmentQuestions count"
    type: count_distinct


    drill_fields: [assessmentquestions_queries_drill_fields*]
    sql: ${AssessmentQuestionID} ;;
  }

  measure: invalid_date_formatting_for_datecreated_in_assessmentquestions_csv {
    group_label: "DateFormatting"
    view_label: "Analysis - Major"
    label: "Invalid Date Formatting for DateCreated in AssessmentQuestions.csv"
    type: count_distinct

    filters: [
      assessmentquestions.DateCreated: "-____-__-__ __:__:__"
    ]

    drill_fields: [assessmentquestions_queries_drill_fields*]
    sql: ${AssessmentQuestionID} ;;
  }

  measure: invalid_date_formatting_for_dateupdated_in_assessmentquestions_csv {
    group_label: "DateFormatting"
    view_label: "Analysis - Major"
    label: "Invalid Date Formatting for DateUpdated in AssessmentQuestions.csv"
    type: count_distinct

    filters: [
      assessmentquestions.DateUpdated: "-____-__-__ __:__:__"
    ]

    drill_fields: [assessmentquestions_queries_drill_fields*]
    sql: ${AssessmentQuestionID} ;;
  }

  measure: total_date_formatting_values {
    group_label: "DateFormatting"
    view_label: "Analysis - Major"
    label: "Total DateFormatting Values"
    type: number

    drill_fields: [
      invalid_date_formatting_for_datecreated_in_assessmentquestions_csv,
      invalid_date_formatting_for_dateupdated_in_assessmentquestions_csv
    ]
    sql:  ${invalid_date_formatting_for_datecreated_in_assessmentquestions_csv}
          + ${invalid_date_formatting_for_dateupdated_in_assessmentquestions_csv}
      ;;
  }

  set: assessmentquestions_queries_drill_fields {
    fields: [
      assessmentquestions.AssessmentQuestionID
    ]
  }
}
