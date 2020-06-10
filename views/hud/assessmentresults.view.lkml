view: assessmentresults {
  sql_table_name: assessmentresults ;;

  dimension: AssessmentID {
    type: string
    # hidden: yes
    sql: ${TABLE}.AssessmentID ;;
  }

  dimension: AssessmentResult {
    type: string
    sql: ${TABLE}.AssessmentResult ;;
  }

  dimension: AssessmentResultID {
    primary_key: yes
    type: string
    sql: ${TABLE}.AssessmentResultID ;;
  }

  dimension: AssessmentResultType {
    type: string
    sql: ${TABLE}.AssessmentResultType ;;
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
