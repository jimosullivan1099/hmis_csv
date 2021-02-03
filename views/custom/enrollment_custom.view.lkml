view: enrollment_custom {
  sql_table_name: {% parameter table_name %} ;;

  parameter: table_name {
    type: unquoted
    default_value: "_c_enrollment"
  }

  dimension: EnrollmentCustomID {
    primary_key: yes
    type: string
    label: "EnrollmentCustomID"
    sql: ${TABLE}.EnrollmentCustomID ;;
  }

  dimension: EnrollmentID {
    type: string
    label: "EnrollmentID"
    sql: ${TABLE}.EnrollmentID ;;
  }

  dimension: PersonalID {
    type: string
    label: "PersonalID"
    sql: ${TABLE}.PersonalID ;;
  }

  dimension: InformationDate {
    type: string
    label: "InformationDate"
    sql: ${TABLE}.InformationDate ;;
  }

  dimension: DataCollectionStage {
    type: string
    label: "DataCollectionStage"
    sql: ${TABLE}.DataCollectionStage ;;
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
