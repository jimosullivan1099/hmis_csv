view: assessment_custom {
  sql_table_name: {% parameter table_name %} ;;

  parameter: table_name {
    type: unquoted
    default_value: "_c_assessment"
  }

  dimension: AssessmentCustomID {
    primary_key: yes
    type: string
    label: "AssessmentCustomID"
    sql: ${TABLE}.AssessmentCustomID ;;
  }

  dimension: AssessmentID {
    type: string
    label: "AssessmentID"
    sql: ${TABLE}.AssessmentID ;;
  }

  dimension: AssessmentName {
    type: string
    label: "AssessmentName"
    sql: ${TABLE}.AssessmentName ;;
  }

  dimension: PersonalID {
    type: string
    label: "PersonalID"
    sql: ${TABLE}.PersonalID ;;
  }

  dimension: AgencyID {
    type: string
    label: "AgencyID"
    sql: ${TABLE}.AgencyID ;;
  }

  dimension: EnrollmentID {
    type: string
    label: "EnrollmentID"
    sql: ${TABLE}.EnrollmentID ;;
  }

  dimension: InformationDate {
    type: string
    label: "InformationDate"
    sql: ${TABLE}.InformationDate ;;
  }

  dimension: DateCreated {
    type: string
    label: "DateCreated"
    sql: ${TABLE}.DateCreated ;;
  }

  dimension: DateUpdated {
    type: string
    label: "DateUpdated"
    sql: ${TABLE}.DateUpdated ;;
  }

  dimension: UserID {
    type: string
    label: "UserID"
    sql: ${TABLE}.UserID ;;
  }

  dimension: DateDeleted {
    type: string
    label: "DateDeleted"
    sql: ${TABLE}.DateDeleted ;;
  }

  dimension: ExportID {
    type: string
    label: "ExportID"
    sql: ${TABLE}.ExportID ;;
  }

  measure: count {
    type: count
  }
}
