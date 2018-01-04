view: disabilities {
  derived_table: {
    sql: SELECT * FROM disabilities
      ;;
    indexes: ["EnrollmentID","DisabilitiesId"]
  }

  dimension: DisabilitiesID {
    primary_key: yes
    type: string
    sql: ${TABLE}.DisabilitiesID ;;
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

  dimension: DisabilityResponse {
    type: string
    sql: ${TABLE}.DisabilityResponse ;;
  }

  dimension: DisabilityType {
    type: string
    sql: ${TABLE}.DisabilityType ;;
  }

  dimension: DocumentationOnFile {
    type: string
    sql: ${TABLE}.DocumentationOnFile ;;
  }

  dimension: ExportID {
    type: string
    sql: ${TABLE}.ExportID ;;
  }

  dimension: IndefiniteAndImpairs {
    type: string
    sql: ${TABLE}.IndefiniteAndImpairs ;;
  }

  dimension: InformationDate {
    type: string
    sql: ${TABLE}.InformationDate ;;
  }

  dimension: PATHHowConfirmed {
    type: string
    sql: ${TABLE}.PATHHowConfirmed ;;
  }

  dimension: PATHSMIInformation {
    type: string
    sql: ${TABLE}.PATHSMIInformation ;;
  }

  dimension: PersonalID {
    type: string
    sql: ${TABLE}.PersonalID ;;
  }

  dimension: EnrollmentID {
    type: string
    sql: ${TABLE}.EnrollmentID ;;
  }

  dimension: ReceivingServices {
    type: string
    sql: ${TABLE}.ReceivingServices ;;
  }

  dimension: TCellCount {
    type: string
    sql: ${TABLE}.TCellCount ;;
  }

  dimension: TCellCountAvailable {
    type: string
    sql: ${TABLE}.TCellCountAvailable ;;
  }

  dimension: TCellSource {
    type: string
    sql: ${TABLE}.TCellSource ;;
  }

  dimension: UserID {
    type: string
    sql: ${TABLE}.UserID ;;
  }

  dimension: ViralLoad {
    type: string
    sql: ${TABLE}.ViralLoad ;;
  }

  dimension: ViralLoadAvailable {
    type: string
    sql: ${TABLE}.ViralLoadAvailable ;;
  }

  dimension: ViralLoadSource {
    type: string
    sql: ${TABLE}.ViralLoadSource ;;
  }

  measure: count {
    type: count
  }
}
