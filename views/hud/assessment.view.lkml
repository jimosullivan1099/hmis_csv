view: assessment {
  sql_table_name: assessment ;;

  dimension: AssessmentID {
    primary_key: yes
    type: string
    sql: ${TABLE}.AssessmentID ;;
  }

  dimension: AssessmentDate {
    type: string
    sql: ${TABLE}.AssessmentDate ;;
  }

  dimension: AssessmentLevel {
    type: string
    sql: ${TABLE}.AssessmentLevel ;;
  }

  dimension: AssessmentLocation {
    type: string
    sql: ${TABLE}.AssessmentLocation ;;
  }

  dimension: AssessmentType {
    type: string
    sql: ${TABLE}.AssessmentType ;;
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

  dimension: PrioritizationStatus {
    type: string
    sql: ${TABLE}.PrioritizationStatus ;;
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
