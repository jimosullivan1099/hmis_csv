view: employmenteducation {
  sql_table_name: employmenteducation ;;

  dimension: DataCollectionStage {
    type: string
    sql: ${TABLE}.DataCollectionStage ;;
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

  dimension: Employed {
    type: string
    sql: ${TABLE}.Employed ;;
  }

  dimension: EmploymentEducationID {
    type: string
    primary_key: yes
    sql: ${TABLE}.EmploymentEducationID ;;
  }

  dimension: EmploymentType {
    type: string
    sql: ${TABLE}.EmploymentType ;;
  }

  dimension: ExportID {
    type: string
    sql: ${TABLE}.ExportID ;;
  }

  dimension: InformationDate {
    type: string
    sql: ${TABLE}.InformationDate ;;
  }

  dimension: LastGradeCompleted {
    type: string
    sql: ${TABLE}.LastGradeCompleted ;;
  }

  dimension: NotEmployedReason {
    type: string
    sql: ${TABLE}.NotEmployedReason ;;
  }

  dimension: PersonalID {
    type: string
    sql: ${TABLE}.PersonalID ;;
  }

  dimension: EnrollmentID {
    type: string
    sql: ${TABLE}.EnrollmentID ;;
  }

  dimension: SchoolStatus {
    type: string
    sql: ${TABLE}.SchoolStatus ;;
  }

  dimension: UserID {
    type: string
    sql: ${TABLE}.UserID ;;
  }

  measure: count {
    type: count
  }
}
