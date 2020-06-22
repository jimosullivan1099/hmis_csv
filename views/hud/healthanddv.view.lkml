view: healthanddv {
  sql_table_name: healthanddv ;;

  dimension: HealthAndDVID {
    type: string
    label: "HealthAndDVID"
    primary_key: yes
    sql: ${TABLE}.HealthAndDVID ;;
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

  dimension: DomesticViolenceVictim {
    type: string
    label: "DomesticViolenceVictim"
    sql: ${TABLE}.DomesticViolenceVictim ;;
  }

  dimension: WhenOccurred {
    type: string
    label: "WhenOccurred"
    sql: ${TABLE}.WhenOccurred ;;
  }

  dimension: CurrentlyFleeing {
    type: string
    label: "CurrentlyFleeing"
    sql: ${TABLE}.CurrentlyFleeing ;;
  }

  dimension: GeneralHealthStatus {
    type: string
    label: "GeneralHealthStatus"
    sql: ${TABLE}.GeneralHealthStatus ;;
  }

  dimension: DentalHealthStatus {
    type: string
    label: "DentalHealthStatus"
    sql: ${TABLE}.DentalHealthStatus ;;
  }

  dimension: MentalHealthStatus {
    type: string
    label: "MentalHealthStatus"
    sql: ${TABLE}.MentalHealthStatus ;;
  }

  dimension: PregnancyStatus {
    type: string
    label: "PregnancyStatus"
    sql: ${TABLE}.PregnancyStatus ;;
  }

  dimension: DueDate {
    type: string
    label: "DueDate"
    sql: ${TABLE}.DueDate ;;
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
