view: disabilities {
  derived_table: {
    sql:
      SELECT
        t.*,
        (
          SELECT GROUP_CONCAT(ff.name, '_' , CONCAT(lv.value, ':', lv.text ) SEPARATOR '; ')
          FROM ${list_values.SQL_TABLE_NAME} lv INNER JOIN ${file_fields.SQL_TABLE_NAME} ff ON ff.list = lv.list_code
          WHERE ff.filename = 'Disabilities.csv'
        ) AS lookup
      FROM disabilities t ;;
    indexes: ["DisabilitiesID", "EnrollmentID", "DisabilitiesID", "PersonalID"]
    datagroup_trigger: client_data
  }

  dimension: lookup {
    type: string
    hidden: yes
    sql: ${TABLE}.lookup ;;
  }

  dimension: DisabilitiesID {
    type: string
    label: "DisabilitiesID"
    primary_key: yes
    sql: ${TABLE}.DisabilitiesID ;;
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

  dimension: DisabilityType {
    type: string
    label: "DisabilityType"
    sql: ${TABLE}.DisabilityType ;;
  }

  dimension: DisabilityTypeText {
    type: string
    label: "DisabilityTypeText"
    sql: CASE WHEN ${TABLE}.DisabilityType IS NOT NULL AND ${TABLE}.DisabilityType <> '' THEN SUBSTRING_INDEX(SUBSTRING_INDEX(${TABLE}.lookup, CONCAT('DisabilityType_', ${TABLE}.DisabilityType, ':'), -1), ';', 1) END ;;
  }

  dimension: DisabilityResponse {
    type: string
    label: "DisabilityResponse"
    sql: ${TABLE}.DisabilityResponse ;;
  }

    # TODO - adjust this in the database - the CSV specs have a (see note) for the list value here which is causing this to not appear properly
#   dimension: DisabilityResponseText {
#     type: string
#     label: "DisabilityResponseText"
#     sql: CASE WHEN ${TABLE}.DisabilityResponse IS NOT NULL AND ${TABLE}.DisabilityResponse <> '' THEN SUBSTRING_INDEX(SUBSTRING_INDEX(${TABLE}.lookup, CONCAT('DisabilityResponse_', ${TABLE}.DisabilityResponse, ':'), -1), ';', 1) END ;;
#   }

  dimension: IndefiniteAndImpairs {
    type: string
    label: "IndefiniteAndImpairs"
    sql: ${TABLE}.IndefiniteAndImpairs ;;
  }

  dimension: IndefiniteAndImpairsText {
    type: string
    label: "IndefiniteAndImpairsText"
    sql: CASE WHEN ${TABLE}.IndefiniteAndImpairs IS NOT NULL AND ${TABLE}.IndefiniteAndImpairs <> '' THEN SUBSTRING_INDEX(SUBSTRING_INDEX(${TABLE}.lookup, CONCAT('IndefiniteAndImpairs_', ${TABLE}.IndefiniteAndImpairs, ':'), -1), ';', 1) END ;;
  }

  dimension: TCellCountAvailable {
    type: string
    label: "TCellCountAvailable"
    sql: ${TABLE}.TCellCountAvailable ;;
  }

  dimension: TCellCountAvailableText {
    type: string
    label: "TCellCountAvailableText"
    sql: CASE WHEN ${TABLE}.TCellCountAvailable IS NOT NULL AND ${TABLE}.TCellCountAvailable <> '' THEN SUBSTRING_INDEX(SUBSTRING_INDEX(${TABLE}.lookup, CONCAT('TCellCountAvailable_', ${TABLE}.TCellCountAvailable, ':'), -1), ';', 1) END ;;
  }

  dimension: TCellCount {
    type: string
    label: "TCellCount"
    sql: ${TABLE}.TCellCount ;;
  }

  dimension: TCellSource {
    type: string
    label: "TCellSource"
    sql: ${TABLE}.TCellSource ;;
  }

  dimension: TCellSourceText {
    type: string
    label: "TCellSourceText"
    sql: CASE WHEN ${TABLE}.TCellSource IS NOT NULL AND ${TABLE}.TCellSource <> '' THEN SUBSTRING_INDEX(SUBSTRING_INDEX(${TABLE}.lookup, CONCAT('TCellSource_', ${TABLE}.TCellSource, ':'), -1), ';', 1) END ;;
  }

  dimension: ViralLoadAvailable {
    type: string
    label: "ViralLoadAvailable"
    sql: ${TABLE}.ViralLoadAvailable ;;
  }

  dimension: ViralLoadAvailableText {
    type: string
    label: "ViralLoadAvailableText"
    sql: CASE WHEN ${TABLE}.ViralLoadAvailable IS NOT NULL AND ${TABLE}.ViralLoadAvailable <> '' THEN SUBSTRING_INDEX(SUBSTRING_INDEX(${TABLE}.lookup, CONCAT('ViralLoadAvailable_', ${TABLE}.ViralLoadAvailable, ':'), -1), ';', 1) END ;;
  }

  dimension: ViralLoad {
    type: string
    label: "ViralLoad"
    sql: ${TABLE}.ViralLoad ;;
  }

  dimension: ViralLoadSource {
    type: string
    label: "ViralLoadSource"
    sql: ${TABLE}.ViralLoadSource ;;
  }

  dimension: ViralLoadSourceText {
    type: string
    label: "ViralLoadSourceText"
    sql: CASE WHEN ${TABLE}.ViralLoadSource IS NOT NULL AND ${TABLE}.ViralLoadSource <> '' THEN SUBSTRING_INDEX(SUBSTRING_INDEX(${TABLE}.lookup, CONCAT('ViralLoadSource_', ${TABLE}.ViralLoadSource, ':'), -1), ';', 1) END ;;
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
