view: disabilities {
  sql_table_name: disabilities ;;

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

  dimension: DisabilityResponse {
    type: string
    label: "DisabilityResponse"
    sql: ${TABLE}.DisabilityResponse ;;
  }

  dimension: IndefiniteAndImpairs {
    type: string
    label: "IndefiniteAndImpairs"
    sql: ${TABLE}.IndefiniteAndImpairs ;;
  }

  dimension: TCellCountAvailable {
    type: string
    label: "TCellCountAvailable"
    sql: ${TABLE}.TCellCountAvailable ;;
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

  dimension: ViralLoadAvailable {
    type: string
    label: "ViralLoadAvailable"
    sql: ${TABLE}.ViralLoadAvailable ;;
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
