view: enrollmentcoc {
  sql_table_name: enrollmentcoc ;;

  dimension: EnrollmentCoCID {
    type: string
    label: "EnrollmentCoCID"
    primary_key: yes
    sql: ${TABLE}.EnrollmentCoCID ;;
  }

  dimension: EnrollmentID {
    type: string
    label: "EnrollmentID"
    sql: ${TABLE}.EnrollmentID ;;
  }

  dimension: HouseholdID {
    type: string
    label: "HouseholdID"
    sql: ${TABLE}.HouseholdID ;;
  }

  dimension: ProjectID {
    type: string
    label: "ProjectID"
    sql: ${TABLE}.ProjectID ;;
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

  dimension: CoCCode {
    type: string
    label: "CoCCode"
    sql: ${TABLE}.CoCCode ;;
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

  dimension: Valid_CoCCode {
    type: yesno
    label: "Valid CoCCode Format"
    sql: ${TABLE}.CoCCode REGEXP '[A-Z]{2}-[0-9]{3}' ;;
  }

  measure: count {
    type: count
  }
}
