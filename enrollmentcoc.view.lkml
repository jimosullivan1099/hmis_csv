view: enrollmentcoc {
  derived_table: {
    sql:
      SELECT
        t.*,
        (
          SELECT GROUP_CONCAT(ff.name, '_' , CONCAT(lv.value, ':', lv.text ) SEPARATOR '; ')
          FROM ${list_values.SQL_TABLE_NAME} lv INNER JOIN ${file_fields.SQL_TABLE_NAME} ff ON ff.list = lv.list_code
          WHERE ff.filename = 'EnrollmentCoC.csv'
        ) AS lookup
      FROM enrollmentcoc t ;;
    indexes: ["EnrollmentCoCID", "EnrollmentID", "PersonalID"]
    datagroup_trigger: client_data
  }

  dimension: lookup {
    type: string
    hidden: yes
    sql: ${TABLE}.lookup ;;
  }

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
