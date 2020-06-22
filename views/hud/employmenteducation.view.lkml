view: employmenteducation {
  sql_table_name: employmenteducation ;;

  dimension: EmploymentEducationID {
    type: string
    label: "EmploymentEducationID"
    primary_key: yes
    sql: ${TABLE}.EmploymentEducationID ;;
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

  dimension: LastGradeCompleted {
    type: string
    label: "LastGradeCompleted"
    sql: ${TABLE}.LastGradeCompleted ;;
  }

  dimension: SchoolStatus {
    type: string
    label: "SchoolStatus"
    sql: ${TABLE}.SchoolStatus ;;
  }

  dimension: Employed {
    type: string
    label: "Employed"
    sql: ${TABLE}.Employed ;;
  }

  dimension: EmploymentType {
    type: string
    label: "EmploymentType"
    sql: ${TABLE}.EmploymentType ;;
  }

  dimension: NotEmployedReason {
    type: string
    label: "NotEmployedReason"
    sql: ${TABLE}.NotEmployedReason ;;
  }

  dimension: DataCollectionStage {
    type: string
    label: "DataCollectionStage"
    sql: ${TABLE}.DataCollectionStage ;;
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
