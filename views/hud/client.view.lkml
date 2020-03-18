include: "/views/hud_standards/list_values.view"
include: "/views/hud_standards/file_fields.view"

view: client {

  derived_table: {
    sql:
      SELECT
        t.*,
        (
          SELECT GROUP_CONCAT(ff.name, '_' , CONCAT(lv.value, ':', lv.text ) SEPARATOR '; ')
          FROM ${list_values.SQL_TABLE_NAME} lv INNER JOIN ${file_fields.SQL_TABLE_NAME} ff ON ff.list = lv.list_code
          WHERE ff.filename = 'Client.csv'
        ) AS lookup
      FROM client t ;;
    indexes: ["PersonalID"]
    datagroup_trigger: client_data
  }

  dimension: lookup {
    type: string
    hidden: no
    sql: ${TABLE}.lookup ;;
  }

  dimension: PersonalID {
    type: string
    label: "PersonalID"
    primary_key: yes
    sql: ${TABLE}.PersonalID ;;
  }

  dimension: FirstName {
    type: string
    label: "FirstName"
    sql: ${TABLE}.FirstName ;;
  }

  dimension: MiddleName {
    type: string
    label: "MiddleName"
    sql: ${TABLE}.MiddleName ;;
  }

  dimension: LastName {
    type: string
    label: "LastName"
    sql: ${TABLE}.LastName ;;
  }

  dimension: NameSuffix {
    type: string
    label: "NameSuffix"
    sql: ${TABLE}.NameSuffix ;;
  }

  dimension: NameDataQuality {
    type: string
    label: "NameDataQuality"
    sql: ${TABLE}.NameDataQuality ;;
  }

  dimension: NameDataQualityText {
    type: string
    label: "NameDataQualityText"
    sql: CASE WHEN ${TABLE}.NameDataQuality IS NOT NULL AND ${TABLE}.NameDataQuality <> '' THEN SUBSTRING_INDEX(SUBSTRING_INDEX(${TABLE}.lookup, CONCAT('NameDataQuality_', ${TABLE}.NameDataQuality, ':'), -1), ';', 1) END ;;
  }

  dimension: SSN {
    type: string
    label: "SSN"
    sql: ${TABLE}.SSN ;;
  }

  dimension: SSNDataQuality {
    type: string
    label: "SSNDataQuality"
    sql: ${TABLE}.SSNDataQuality ;;
  }

  dimension: SSNDataQualityText {
    type: string
    label: "SSNDataQualityText"
    sql: CASE WHEN ${TABLE}.SSNDataQuality IS NOT NULL AND ${TABLE}.SSNDataQuality <> '' THEN SUBSTRING_INDEX(SUBSTRING_INDEX(${TABLE}.lookup, CONCAT('SSNDataQuality_', ${TABLE}.SSNDataQuality, ':'), -1), ';', 1) END ;;
  }

  dimension: DOB {
    type: string
    label: "DOB"
    sql: ${TABLE}.DOB ;;
  }

  dimension: DOB_date {
    label: "DOB Date"
    type: date
    sql: ${TABLE}.DOB ;;
  }

  dimension: DOBDataQuality {
    type: string
    label: "DOBDataQuality"
    sql: ${TABLE}.DOBDataQuality ;;
  }

  dimension: DOBDataQualityText {
    type: string
    label: "DOBDataQualityText"
    sql: CASE WHEN ${TABLE}.DOBDataQuality IS NOT NULL AND ${TABLE}.DOBDataQuality <> '' THEN SUBSTRING_INDEX(SUBSTRING_INDEX(${TABLE}.lookup, CONCAT('DOBDataQuality_', ${TABLE}.DOBDataQuality, ':'), -1), ';', 1) END ;;
  }

  dimension: AmIndAKNative {
    type: string
    label: "AmIndAKNative"
    sql: ${TABLE}.AmIndAKNative ;;
  }

  dimension: AmIndAKNativeText {
    type: string
    label: "AmIndAKNativeText"
    sql: CASE WHEN ${TABLE}.AmIndAKNative IS NOT NULL AND ${TABLE}.AmIndAKNative <> '' THEN SUBSTRING_INDEX(SUBSTRING_INDEX(${TABLE}.lookup, CONCAT('AmIndAKNative_', ${TABLE}.AmIndAKNative, ':'), -1), ';', 1) END ;;
  }

  dimension: Asian {
    type: string
    label: "Asian"
    sql: ${TABLE}.Asian ;;
  }

  dimension: AsianText {
    type: string
    label: "AsianText"
    sql: CASE WHEN ${TABLE}.Asian IS NOT NULL AND ${TABLE}.Asian <> '' THEN SUBSTRING_INDEX(SUBSTRING_INDEX(${TABLE}.lookup, CONCAT('Asian_', ${TABLE}.Asian, ':'), -1), ';', 1) END ;;
  }

  dimension: BlackAfAmerican {
    type: string
    label: "BlackAfAmerican"
    sql: ${TABLE}.BlackAfAmerican ;;
  }

  dimension: BlackAfAmericanText {
    type: string
    label: "BlackAfAmericanText"
    sql: CASE WHEN ${TABLE}.BlackAfAmerican IS NOT NULL AND ${TABLE}.BlackAfAmerican <> '' THEN SUBSTRING_INDEX(SUBSTRING_INDEX(${TABLE}.lookup, CONCAT('BlackAfAmerican_', ${TABLE}.BlackAfAmerican, ':'), -1), ';', 1) END ;;
  }

  dimension: NativeHIOtherPacific {
    type: string
    label: "NativeHIOtherPacific"
    sql: ${TABLE}.NativeHIOtherPacific ;;
  }

  dimension: NativeHIOtherPacificText {
    type: string
    label: "NativeHIOtherPacificText"
    sql: CASE WHEN ${TABLE}.NativeHIOtherPacific IS NOT NULL AND ${TABLE}.NativeHIOtherPacific <> '' THEN SUBSTRING_INDEX(SUBSTRING_INDEX(${TABLE}.lookup, CONCAT('NativeHIOtherPacific_', ${TABLE}.NativeHIOtherPacific, ':'), -1), ';', 1) END ;;
  }

  dimension: White {
    type: string
    label: "White"
    sql: ${TABLE}.White ;;
  }

  dimension: WhiteText {
    type: string
    label: "WhiteText"
    sql: CASE WHEN ${TABLE}.White IS NOT NULL AND ${TABLE}.White <> '' THEN SUBSTRING_INDEX(SUBSTRING_INDEX(${TABLE}.lookup, CONCAT('White_', ${TABLE}.White, ':'), -1), ';', 1) END ;;
  }

  dimension: RaceNone {
    type: string
    label: "RaceNone"
    sql: ${TABLE}.RaceNone ;;
  }

  dimension: RaceNoneText {
    type: string
    label: "RaceNoneText"
    sql: CASE WHEN ${TABLE}.RaceNone IS NOT NULL AND ${TABLE}.RaceNone <> '' THEN SUBSTRING_INDEX(SUBSTRING_INDEX(${TABLE}.lookup, CONCAT('RaceNone_', ${TABLE}.RaceNone, ':'), -1), ';', 1) END ;;
  }

  dimension: Ethnicity {
    type: string
    label: "Ethnicity"
    sql: ${TABLE}.Ethnicity ;;
  }

  dimension: EthnicityText {
    type: string
    label: "EthnicityText"
    sql: CASE WHEN ${TABLE}.Ethnicity IS NOT NULL AND ${TABLE}.Ethnicity <> '' THEN SUBSTRING_INDEX(SUBSTRING_INDEX(${TABLE}.lookup, CONCAT('Ethnicity_', ${TABLE}.Ethnicity, ':'), -1), ';', 1) END ;;
  }

  dimension: Gender {
    type: string
    label: "Gender"
    sql: ${TABLE}.Gender ;;
  }

  dimension: GenderText {
    type: string
    label: "GenderText"
    sql: CASE WHEN ${TABLE}.Gender IS NOT NULL AND ${TABLE}.Gender <> '' THEN SUBSTRING_INDEX(SUBSTRING_INDEX(${TABLE}.lookup, CONCAT('Gender_', ${TABLE}.Gender, ':'), -1), ';', 1) END ;;
  }

  dimension: VeteranStatus {
    type: string
    label: "VeteranStatus"
    sql: ${TABLE}.VeteranStatus ;;
  }

  dimension: VeteranStatusText {
    type: string
    label: "VeteranStatusText"
    sql: CASE WHEN ${TABLE}.VeteranStatus IS NOT NULL AND ${TABLE}.VeteranStatus <> '' THEN SUBSTRING_INDEX(SUBSTRING_INDEX(${TABLE}.lookup, CONCAT('VeteranStatus_', ${TABLE}.VeteranStatus, ':'), -1), ';', 1) END ;;
  }

  dimension: YearEnteredService {
    type: string
    label: "YearEnteredService"
    sql: ${TABLE}.YearEnteredService ;;
  }

  dimension: YearSeparated {
    type: string
    label: "YearSeparated"
    sql: ${TABLE}.YearSeparated ;;
  }

  dimension: WorldWarII {
    type: string
    label: "WorldWarII"
    sql: ${TABLE}.WorldWarII ;;
  }

  dimension: WorldWarIIText {
    type: string
    label: "WorldWarIIText"
    sql: CASE WHEN ${TABLE}.WorldWarII IS NOT NULL AND ${TABLE}.WorldWarII <> '' THEN SUBSTRING_INDEX(SUBSTRING_INDEX(${TABLE}.lookup, CONCAT('WorldWarII_', ${TABLE}.WorldWarII, ':'), -1), ';', 1) END ;;
  }

  dimension: KoreanWar {
    type: string
    label: "KoreanWar"
    sql: ${TABLE}.KoreanWar ;;
  }

  dimension: KoreanWarText {
    type: string
    label: "KoreanWarText"
    sql: CASE WHEN ${TABLE}.KoreanWar IS NOT NULL AND ${TABLE}.KoreanWar <> '' THEN SUBSTRING_INDEX(SUBSTRING_INDEX(${TABLE}.lookup, CONCAT('KoreanWar_', ${TABLE}.KoreanWar, ':'), -1), ';', 1) END ;;
  }

  dimension: VietnamWar {
    type: string
    label: "VietnamWar"
    sql: ${TABLE}.VietnamWar ;;
  }

  dimension: VietnamWarText {
    type: string
    label: "VietnamWarText"
    sql: CASE WHEN ${TABLE}.VietnamWar IS NOT NULL AND ${TABLE}.VietnamWar <> '' THEN SUBSTRING_INDEX(SUBSTRING_INDEX(${TABLE}.lookup, CONCAT('VietnamWar_', ${TABLE}.VietnamWar, ':'), -1), ';', 1) END ;;
  }

  dimension: DesertStorm {
    type: string
    label: "DesertStorm"
    sql: ${TABLE}.DesertStorm ;;
  }

  dimension: DesertStormText {
    type: string
    label: "DesertStormText"
    sql: CASE WHEN ${TABLE}.DesertStorm IS NOT NULL AND ${TABLE}.DesertStorm <> '' THEN SUBSTRING_INDEX(SUBSTRING_INDEX(${TABLE}.lookup, CONCAT('DesertStorm_', ${TABLE}.DesertStorm, ':'), -1), ';', 1) END ;;
  }

  dimension: AfghanistanOEF {
    type: string
    label: "AfghanistanOEF"
    sql: ${TABLE}.AfghanistanOEF ;;
  }

  dimension: AfghanistanOEFText {
    type: string
    label: "AfghanistanOEFText"
    sql: CASE WHEN ${TABLE}.AfghanistanOEF IS NOT NULL AND ${TABLE}.AfghanistanOEF <> '' THEN SUBSTRING_INDEX(SUBSTRING_INDEX(${TABLE}.lookup, CONCAT('AfghanistanOEF_', ${TABLE}.AfghanistanOEF, ':'), -1), ';', 1) END ;;
  }

  dimension: IraqOIF {
    type: string
    label: "IraqOIF"
    sql: ${TABLE}.IraqOIF ;;
  }

  dimension: IraqOIFText {
    type: string
    label: "IraqOIFText"
    sql: CASE WHEN ${TABLE}.IraqOIF IS NOT NULL AND ${TABLE}.IraqOIF <> '' THEN SUBSTRING_INDEX(SUBSTRING_INDEX(${TABLE}.lookup, CONCAT('IraqOIF_', ${TABLE}.IraqOIF, ':'), -1), ';', 1) END ;;
  }

  dimension: IraqOND {
    type: string
    label: "IraqOND"
    sql: ${TABLE}.IraqOND ;;
  }

  dimension: IraqONDText {
    type: string
    label: "IraqONDText"
    sql: CASE WHEN ${TABLE}.IraqOND IS NOT NULL AND ${TABLE}.IraqOND <> '' THEN SUBSTRING_INDEX(SUBSTRING_INDEX(${TABLE}.lookup, CONCAT('IraqOND_', ${TABLE}.IraqOND, ':'), -1), ';', 1) END ;;
  }

  dimension: OtherTheater {
    type: string
    label: "OtherTheater"
    sql: ${TABLE}.OtherTheater ;;
  }

  dimension: OtherTheaterText {
    type: string
    label: "OtherTheaterText"
    sql: CASE WHEN ${TABLE}.OtherTheater IS NOT NULL AND ${TABLE}.OtherTheater <> '' THEN SUBSTRING_INDEX(SUBSTRING_INDEX(${TABLE}.lookup, CONCAT('OtherTheater_', ${TABLE}.OtherTheater, ':'), -1), ';', 1) END ;;
  }

  dimension: MilitaryBranch {
    type: string
    label: "MilitaryBranch"
    sql: ${TABLE}.MilitaryBranch ;;
  }

  dimension: MilitaryBranchText {
    type: string
    label: "MilitaryBranchText"
    sql: CASE WHEN ${TABLE}.MilitaryBranch IS NOT NULL AND ${TABLE}.MilitaryBranch <> '' THEN SUBSTRING_INDEX(SUBSTRING_INDEX(${TABLE}.lookup, CONCAT('MilitaryBranch_', ${TABLE}.MilitaryBranch, ':'), -1), ';', 1) END ;;
  }

  dimension: DischargeStatus {
    type: string
    label: "DischargeStatus"
    sql: ${TABLE}.DischargeStatus ;;
  }

  dimension: DischargeStatusText {
    type: string
    label: "DischargeStatusText"
    sql: CASE WHEN ${TABLE}.DischargeStatus IS NOT NULL AND ${TABLE}.DischargeStatus <> '' THEN SUBSTRING_INDEX(SUBSTRING_INDEX(${TABLE}.lookup, CONCAT('DischargeStatus_', ${TABLE}.DischargeStatus, ':'), -1), ';', 1) END ;;
  }

  dimension: DateCreated {
    type: string
    label: "DateCreated"
    sql: ${TABLE}.DateCreated ;;
  }

  dimension: DateCreated_date {
    label: "DOB Date"
    type: date
    sql: ${TABLE}.DateCreated ;;
  }

  dimension: DateUpdated {
    type: string
    label: "DateUpdated"
    sql: ${TABLE}.DateUpdated ;;
  }

  dimension: DateUpdated_date {
    label: "DOB Date"
    type: date
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

  measure: distinct_count {
    type:  count_distinct
    sql:  ${PersonalID} ;;
  }





  measure: NullNameDataQuality {
    view_label: "Client DQ Errors"
    label: "Null NameDataQuality"
    type: count_distinct

    filters: {
      field: NameDataQuality
      value: "NULL,EMPTY"
    }

    drill_fields: [client_queries_drill_fields*]
    sql: ${PersonalID} ;;
  }

  measure: NullSSNDataQuality {
    view_label: "Client DQ Errors"
    label: "Null SSNDataQuality"
    type: count_distinct

    filters: {
      field: SSNDataQuality
      value: "NULL,EMPTY"
    }

    drill_fields: [client_queries_drill_fields*]
    sql: ${PersonalID} ;;
  }

  measure: NullDOBDataQuality {
    view_label: "Client DQ Errors"
    label: "Null DOBDataQuality"
    type: count_distinct

    filters: {
      field: DOBDataQuality
      value: "NULL,EMPTY"
    }

    drill_fields: [client_queries_drill_fields*]
    sql: ${PersonalID} ;;
  }





  set: client_queries_drill_fields {
    fields: [
      PersonalID
    ]
  }
}
