view: healthanddv {
  sql_table_name: healthanddv ;;

  dimension: CurrentlyFleeing {
    type: string
    sql: ${TABLE}.CurrentlyFleeing ;;
  }

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

  dimension: DentalHealthStatus {
    type: string
    sql: ${TABLE}.DentalHealthStatus ;;
  }

  dimension: DomesticViolenceVictim {
    type: string
    sql: ${TABLE}.DomesticViolenceVictim ;;
  }

  dimension: DueDate {
    type: string
    sql: ${TABLE}.DueDate ;;
  }

  dimension: ExportID {
    type: string
    # hidden: yes
    sql: ${TABLE}.ExportID ;;
  }

  dimension: GeneralHealthStatus {
    type: string
    sql: ${TABLE}.GeneralHealthStatus ;;
  }

  dimension: HealthAndDVID {
    type: string
    primary_key: yes
    sql: ${TABLE}.HealthAndDVID ;;
  }

  dimension: InformationDate {
    type: string
    sql: ${TABLE}.InformationDate ;;
  }

  dimension: MentalHealthStatus {
    type: string
    sql: ${TABLE}.MentalHealthStatus ;;
  }

  dimension: PersonalID {
    type: string
    sql: ${TABLE}.PersonalID ;;
  }

  dimension: PregnancyStatus {
    type: string
    sql: ${TABLE}.PregnancyStatus ;;
  }

  dimension: EnrollmentID {
    type: string
    sql: ${TABLE}.EnrollmentID ;;
  }

  dimension: UserID {
    type: string
    sql: ${TABLE}.UserID ;;
  }

  dimension: WhenOccurred {
    type: string
    sql: ${TABLE}.WhenOccurred ;;
  }

  measure: count {
    type: count
  }
}
