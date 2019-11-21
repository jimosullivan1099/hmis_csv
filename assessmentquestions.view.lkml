view: assessmentquestions {
  derived_table: {
    sql: SELECT * FROM assessmentquestions ;;
    indexes: ["AssessmentQuestionID", "AssessmentID", "EnrollmentID", "PersonalID"]
    datagroup_trigger: client_data
  }

  dimension: AssessmentAnswer {
    type: string
    sql: ${TABLE}.AssessmentAnswer ;;
  }

  dimension: AssessmentID {
    type: string
    # hidden: yes
    sql: ${TABLE}.AssessmentID ;;
  }

  dimension: AssessmentQuestion {
    type: string
    sql: ${TABLE}.AssessmentQuestion ;;
  }

  dimension: AssessmentQuestionGroup {
    type: string
    sql: ${TABLE}.AssessmentQuestionGroup ;;
  }

  dimension: AssessmentQuestionID {
    primary_key: yes
    type: string
    sql: ${TABLE}.AssessmentQuestionID ;;
  }

  dimension: AssessmentQuestionOrder {
    type: string
    sql: ${TABLE}.AssessmentQuestionOrder ;;
  }

  dimension: DateCreated {
    type: string
    sql: ${TABLE}.DateCreated ;;
  }

  dimension: DateDeleted {
    type: string
    sql: ${TABLE}.DateDeleted ;;
  }

  dimension: DateUpdated {
    type: string
    sql: ${TABLE}.DateUpdated ;;
  }

  dimension: EnrollmentID {
    type: string
    sql: ${TABLE}.EnrollmentID ;;
  }

  dimension: ExportID {
    type: string
    sql: ${TABLE}.ExportID ;;
  }

  dimension: PersonalID {
    type: string
    sql: ${TABLE}.PersonalID ;;
  }

  dimension: UserID {
    type: string
    # hidden: yes
    sql: ${TABLE}.UserID ;;
  }

  measure: count {
    type: count
  }
}
