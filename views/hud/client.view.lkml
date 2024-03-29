view: client {

  sql_table_name: client ;;

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

  dimension: AmIndAKNative {
    type: string
    label: "AmIndAKNative"
    sql: ${TABLE}.AmIndAKNative ;;
  }

  dimension: Asian {
    type: string
    label: "Asian"
    sql: ${TABLE}.Asian ;;
  }

  dimension: BlackAfAmerican {
    type: string
    label: "BlackAfAmerican"
    sql: ${TABLE}.BlackAfAmerican ;;
  }

  dimension: NativeHIPacific {
    type: string
    label: "NativeHIPacific"
    sql: ${TABLE}.NativeHIPacific ;;
  }

  dimension: White {
    type: string
    label: "White"
    sql: ${TABLE}.White ;;
  }

  dimension: RaceNone {
    type: string
    label: "RaceNone"
    sql: ${TABLE}.RaceNone ;;
  }

  dimension: Ethnicity {
    type: string
    label: "Ethnicity"
    sql: ${TABLE}.Ethnicity ;;
  }

  dimension: Female {
    type: string
    label: "Gender"
    sql: ${TABLE}.Female ;;
  }

  dimension: Male {
    type: string
    label: "Gender"
    sql: ${TABLE}.Male ;;
  }

  dimension: NoSingleGender {
    type: string
    label: "Gender"
    sql: ${TABLE}.NoSingleGender ;;
  }

  dimension: Transgender {
    type: string
    label: "Gender"
    sql: ${TABLE}.Transgender ;;
  }

  dimension: Questioning {
    type: string
    label: "Gender"
    sql: ${TABLE}.Questioning ;;
  }

  dimension: GenderNone {
    type: string
    label: "Gender"
    sql: ${TABLE}.GenderNone ;;
  }

  dimension: VeteranStatus {
    type: string
    label: "VeteranStatus"
    sql: ${TABLE}.VeteranStatus ;;
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

  dimension: KoreanWar {
    type: string
    label: "KoreanWar"
    sql: ${TABLE}.KoreanWar ;;
  }

  dimension: VietnamWar {
    type: string
    label: "VietnamWar"
    sql: ${TABLE}.VietnamWar ;;
  }

  dimension: DesertStorm {
    type: string
    label: "DesertStorm"
    sql: ${TABLE}.DesertStorm ;;
  }

  dimension: AfghanistanOEF {
    type: string
    label: "AfghanistanOEF"
    sql: ${TABLE}.AfghanistanOEF ;;
  }

  dimension: IraqOIF {
    type: string
    label: "IraqOIF"
    sql: ${TABLE}.IraqOIF ;;
  }

  dimension: IraqOND {
    type: string
    label: "IraqOND"
    sql: ${TABLE}.IraqOND ;;
  }

  dimension: OtherTheater {
    type: string
    label: "OtherTheater"
    sql: ${TABLE}.OtherTheater ;;
  }

  dimension: MilitaryBranch {
    type: string
    label: "MilitaryBranch"
    sql: ${TABLE}.MilitaryBranch ;;
  }

  dimension: DischargeStatus {
    type: string
    label: "DischargeStatus"
    sql: ${TABLE}.DischargeStatus ;;
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

  dimension: RaceList {
    type: string
    label: "Race (List)"
    sql:
      TRIM(TRAILING ', ' FROM
        CONCAT(
          IF(AmIndAKNative = '1', 'AmIndAKNative, ', ''),
          IF(Asian = '1', 'Asian, ', ''),
          IF(BlackAfAmerican = '1', 'BlackAfAmerican, ', ''),
          IF(NativeHIPacific = '1', 'NativeHIPacific, ', ''),
          IF(White = '1', 'White, ', ''),
          IF(RaceNone = '8', 'Client Doesn''t Know, ', ''),
          IF(RaceNone = '9', 'Client Refused, ', ''),
          IF(RaceNone = '99', 'Data Not Collected, ', '')
        )
      ) ;;
  }

  dimension: Funder {
    hidden: yes
    type: string
    sql:  SELECT Funder
          FROM funder f
          INNER JOIN enrollment e ON e.ProjectID = f.ProjectID
          INNER JOIN client c ON c.PersonalID = e.PersonalID
          WHERE c.PersonalID = ${PersonalID}  ;;
  }

  measure: count {
    type: count
  }

  measure: distinct_count {
    type:  count_distinct
    sql:  ${PersonalID} ;;
  }
}
