view: employmenteducation {
  derived_table: {
    sql:
      SELECT
        t.*,
        (
          SELECT GROUP_CONCAT(ff.name, '_' , CONCAT(lv.value, ':', lv.text ) SEPARATOR '; ')
          FROM ${list_values.SQL_TABLE_NAME} lv INNER JOIN ${file_fields.SQL_TABLE_NAME} ff ON ff.list = lv.list_code
          WHERE ff.filename = 'EmploymentEducation.csv'
        ) AS lookup
      FROM employmenteducation t ;;
    indexes: ["EmploymentEducationID", "EnrollmentID", "PersonalID"]
    datagroup_trigger: client_data
  }

  dimension: lookup {
    type: string
    hidden: yes
    sql: ${TABLE}.lookup ;;
  }

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

  dimension: LastGradeCompletedText {
    type: string
    label: "LastGradeCompletedText"
    sql: CASE WHEN ${TABLE}.LastGradeCompleted IS NOT NULL AND ${TABLE}.LastGradeCompleted <> '' THEN SUBSTRING_INDEX(SUBSTRING_INDEX(${TABLE}.lookup, CONCAT('LastGradeCompleted_', ${TABLE}.LastGradeCompleted, ':'), -1), ';', 1) END ;;
  }

  dimension: SchoolStatus {
    type: string
    label: "SchoolStatus"
    sql: ${TABLE}.SchoolStatus ;;
  }

  dimension: SchoolStatusText {
    type: string
    label: "SchoolStatusText"
    sql: CASE WHEN ${TABLE}.SchoolStatus IS NOT NULL AND ${TABLE}.SchoolStatus <> '' THEN SUBSTRING_INDEX(SUBSTRING_INDEX(${TABLE}.lookup, CONCAT('SchoolStatus_', ${TABLE}.SchoolStatus, ':'), -1), ';', 1) END ;;
  }

  dimension: Employed {
    type: string
    label: "Employed"
    sql: ${TABLE}.Employed ;;
  }

  dimension: EmployedText {
    type: string
    label: "EmployedText"
    sql: CASE WHEN ${TABLE}.Employed IS NOT NULL AND ${TABLE}.Employed <> '' THEN SUBSTRING_INDEX(SUBSTRING_INDEX(${TABLE}.lookup, CONCAT('Employed_', ${TABLE}.Employed, ':'), -1), ';', 1) END ;;
  }

  dimension: EmploymentType {
    type: string
    label: "EmploymentType"
    sql: ${TABLE}.EmploymentType ;;
  }

  dimension: EmploymentTypeText {
    type: string
    label: "EmploymentTypeText"
    sql: CASE WHEN ${TABLE}.EmploymentType IS NOT NULL AND ${TABLE}.EmploymentType <> '' THEN SUBSTRING_INDEX(SUBSTRING_INDEX(${TABLE}.lookup, CONCAT('EmploymentType_', ${TABLE}.EmploymentType, ':'), -1), ';', 1) END ;;
  }

  dimension: NotEmployedReason {
    type: string
    label: "NotEmployedReason"
    sql: ${TABLE}.NotEmployedReason ;;
  }

  dimension: NotEmployedReasonText {
    type: string
    label: "NotEmployedReasonText"
    sql: CASE WHEN ${TABLE}.NotEmployedReason IS NOT NULL AND ${TABLE}.NotEmployedReason <> '' THEN SUBSTRING_INDEX(SUBSTRING_INDEX(${TABLE}.lookup, CONCAT('NotEmployedReason_', ${TABLE}.NotEmployedReason, ':'), -1), ';', 1) END ;;
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
