view: healthanddv {
  derived_table: {
    sql:
      SELECT
        t.*,
        (
          SELECT GROUP_CONCAT(ff.name, '_' , CONCAT(lv.value, ':', lv.text ) SEPARATOR '; ')
          FROM ${list_values.SQL_TABLE_NAME} lv INNER JOIN ${file_fields.SQL_TABLE_NAME} ff ON ff.list = lv.list_code
          WHERE ff.filename = 'HealthAndDV.csv'
        ) AS lookup
      FROM healthanddv t ;;
    indexes: ["HealthAndDVID", "EnrollmentID", "PersonalID"]
    datagroup_trigger: client_data
  }

  dimension: lookup {
    type: string
    hidden: yes
    sql: ${TABLE}.lookup ;;
  }

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

  dimension: DomesticViolenceVictimText {
    type: string
    label: "DomesticViolenceVictimText"
    sql: CASE WHEN ${TABLE}.DomesticViolenceVictim IS NOT NULL AND ${TABLE}.DomesticViolenceVictim <> '' THEN SUBSTRING_INDEX(SUBSTRING_INDEX(${TABLE}.lookup, CONCAT('DomesticViolenceVictim_', ${TABLE}.DomesticViolenceVictim, ':'), -1), ';', 1) END ;;
  }

  dimension: WhenOccurred {
    type: string
    label: "WhenOccurred"
    sql: ${TABLE}.WhenOccurred ;;
  }

  dimension: WhenOccurredText {
    type: string
    label: "WhenOccurredText"
    sql: CASE WHEN ${TABLE}.WhenOccurred IS NOT NULL AND ${TABLE}.WhenOccurred <> '' THEN SUBSTRING_INDEX(SUBSTRING_INDEX(${TABLE}.lookup, CONCAT('WhenOccurred_', ${TABLE}.WhenOccurred, ':'), -1), ';', 1) END ;;
  }

  dimension: CurrentlyFleeing {
    type: string
    label: "CurrentlyFleeing"
    sql: ${TABLE}.CurrentlyFleeing ;;
  }

  dimension: CurrentlyFleeingText {
    type: string
    label: "CurrentlyFleeingText"
    sql: CASE WHEN ${TABLE}.CurrentlyFleeing IS NOT NULL AND ${TABLE}.CurrentlyFleeing <> '' THEN SUBSTRING_INDEX(SUBSTRING_INDEX(${TABLE}.lookup, CONCAT('CurrentlyFleeing_', ${TABLE}.CurrentlyFleeing, ':'), -1), ';', 1) END ;;
  }

  dimension: GeneralHealthStatus {
    type: string
    label: "GeneralHealthStatus"
    sql: ${TABLE}.GeneralHealthStatus ;;
  }

  dimension: GeneralHealthStatusText {
    type: string
    label: "GeneralHealthStatusText"
    sql: CASE WHEN ${TABLE}.GeneralHealthStatus IS NOT NULL AND ${TABLE}.GeneralHealthStatus <> '' THEN SUBSTRING_INDEX(SUBSTRING_INDEX(${TABLE}.lookup, CONCAT('GeneralHealthStatus_', ${TABLE}.GeneralHealthStatus, ':'), -1), ';', 1) END ;;
  }

  dimension: DentalHealthStatus {
    type: string
    label: "DentalHealthStatus"
    sql: ${TABLE}.DentalHealthStatus ;;
  }

  dimension: DentalHealthStatusText {
    type: string
    label: "DentalHealthStatusText"
    sql: CASE WHEN ${TABLE}.DentalHealthStatus IS NOT NULL AND ${TABLE}.DentalHealthStatus <> '' THEN SUBSTRING_INDEX(SUBSTRING_INDEX(${TABLE}.lookup, CONCAT('DentalHealthStatus_', ${TABLE}.DentalHealthStatus, ':'), -1), ';', 1) END ;;
  }

  dimension: MentalHealthStatus {
    type: string
    label: "MentalHealthStatus"
    sql: ${TABLE}.MentalHealthStatus ;;
  }

  dimension: MentalHealthStatusText {
    type: string
    label: "MentalHealthStatusText"
    sql: CASE WHEN ${TABLE}.MentalHealthStatus IS NOT NULL AND ${TABLE}.MentalHealthStatus <> '' THEN SUBSTRING_INDEX(SUBSTRING_INDEX(${TABLE}.lookup, CONCAT('MentalHealthStatus_', ${TABLE}.MentalHealthStatus, ':'), -1), ';', 1) END ;;
  }

  dimension: PregnancyStatus {
    type: string
    label: "PregnancyStatus"
    sql: ${TABLE}.PregnancyStatus ;;
  }

  dimension: PregnancyStatusText {
    type: string
    label: "PregnancyStatusText"
    sql: CASE WHEN ${TABLE}.PregnancyStatus IS NOT NULL AND ${TABLE}.PregnancyStatus <> '' THEN SUBSTRING_INDEX(SUBSTRING_INDEX(${TABLE}.lookup, CONCAT('PregnancyStatus_', ${TABLE}.PregnancyStatus, ':'), -1), ';', 1) END ;;
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

    # TODO - list 5.3.1 doesn't appear in HMIS CSV specs and needs to be added to database for this to populate
#   dimension: DataCollectionStageText {
#     type: string
#     label: "DataCollectionStageText"
#     sql: CASE WHEN ${TABLE}.DataCollectionStage IS NOT NULL AND ${TABLE}.DataCollectionStage <> '' THEN SUBSTRING_INDEX(SUBSTRING_INDEX(${TABLE}.lookup, CONCAT('DataCollectionStage_', ${TABLE}.DataCollectionStage, ':'), -1), ';', 1) END ;;
#   }

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
