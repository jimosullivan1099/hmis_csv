view: client {

  derived_table: {
    sql: SELECT * FROM client ;;
    indexes: ["PersonalID"]
    sql_trigger_value: SELECT COUNT(*) FROM client ;;
  }


  dimension: AfghanistanOEF {
    type: string
    sql: ${TABLE}.AfghanistanOEF ;;
  }

  dimension: AmIndAKNative {
    type: string
    sql: ${TABLE}.AmIndAKNative ;;
  }

  dimension: Asian {
    type: string
    sql: ${TABLE}.Asian ;;
  }

  dimension: BlackAfAmerican {
    type: string
    sql: ${TABLE}.BlackAfAmerican ;;
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

  dimension: DesertStorm {
    type: string
    sql: ${TABLE}.DesertStorm ;;
  }

  dimension: DischargeStatus {
    type: string
    sql: ${TABLE}.DischargeStatus ;;
  }

  dimension: DOB {
    type: string
    sql: ${TABLE}.DOB ;;
  }

  dimension: DOBDataQuality {
    type: string
    sql: ${TABLE}.DOBDataQuality ;;
  }

  dimension: Ethnicity {
    type: string
    sql: ${TABLE}.Ethnicity ;;
  }

  dimension: ExportID {
    type: string
    sql: ${TABLE}.ExportID ;;
  }

  dimension: FirstName {
    type: string
    sql: ${TABLE}.FirstName ;;
  }

  dimension: Gender {
    type: string
    sql: ${TABLE}.Gender ;;
  }

  dimension: IraqOIF {
    type: string
    sql: ${TABLE}.IraqOIF ;;
  }

  dimension: IraqOND {
    type: string
    sql: ${TABLE}.IraqOND ;;
  }

  dimension: KoreanWar {
    type: string
    sql: ${TABLE}.KoreanWar ;;
  }

  dimension: LastName {
    type: string
    sql: ${TABLE}.LastName ;;
  }

  dimension: Middlename {
    type: string
    sql: ${TABLE}.MiddleName ;;
  }

  dimension: MilitaryBranch {
    type: string
    sql: ${TABLE}.MilitaryBranch ;;
  }

  dimension: NameDataQuality {
    type: string
    sql: ${TABLE}.NameDataQuality ;;
  }

  dimension: NameSuffix {
    type: string
    sql: ${TABLE}.NameSuffix ;;
  }

  dimension: NativeHIOtherPacific {
    type: string
    sql: ${TABLE}.NativeHIOtherPacific ;;
  }

  dimension: OtherGender {
    type: string
    sql: ${TABLE}.OtherGender ;;
  }

  dimension: OtherTheater {
    type: string
    sql: ${TABLE}.OtherTheater ;;
  }

  dimension: PersonalID {
    type: string
    primary_key: yes
    sql: ${TABLE}.PersonalID ;;
  }

  dimension: RaceNone {
    type: string
    sql: ${TABLE}.RaceNone ;;
  }

  dimension: SSN {
    type: string
    sql: ${TABLE}.SSN ;;
  }

  dimension: SSNDataQuality {
    type: string
    sql: ${TABLE}.SSNDataQuality ;;
  }

  dimension: UserID {
    type: string
    sql: ${TABLE}.UserID ;;
  }

  dimension: VeteranStatus {
    type: string
    sql: ${TABLE}.VeteranStatus ;;
  }

  dimension: VietnamWar {
    type: string
    sql: ${TABLE}.VietnamWar ;;
  }

  dimension: White {
    type: string
    sql: ${TABLE}.White ;;
  }

  dimension: WorldWarII {
    type: string
    sql: ${TABLE}.WorldWarII ;;
  }

  dimension: YearEnteredService {
    type: string
    sql: ${TABLE}.YearEnteredService ;;
  }

  dimension: YearSeparated {
    type: string
    sql: ${TABLE}.YearSeparated ;;
  }

  measure: count {
    type: count
  }

  measure: distinct_count {
    type:  count_distinct
    sql:  ${PersonalID} ;;
  }
}
