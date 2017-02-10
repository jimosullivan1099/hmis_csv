view: disabilities {
  derived_table: {
    sql: SELECT * FROM disabilities
      ;;
    indexes: ["ProjectEntryId","DisabilitiesId"]
  }

  dimension: disabilities_id {
    primary_key: yes
    type: string
    sql: ${TABLE}.DisabilitiesID ;;
  }

  dimension: data_collection_stage {
    type: string
    sql: ${TABLE}.DataCollectionStage ;;
  }

  dimension: date_created {
    type: string
    sql: ${TABLE}.DateCreated ;;
  }

  dimension: date_deleted {
    type: string
    sql: ${TABLE}.DateDeleted ;;
  }

  dimension: date_updated {
    type: string
    sql: ${TABLE}.DateUpdated ;;
  }

  dimension: disability_response {
    type: string
    sql: ${TABLE}.DisabilityResponse ;;
  }

  dimension: disability_type {
    type: string
    sql: ${TABLE}.DisabilityType ;;
  }

  dimension: documentation_on_file {
    type: string
    sql: ${TABLE}.DocumentationOnFile ;;
  }

  dimension: export_id {
    type: string
    # hidden: yes
    sql: ${TABLE}.ExportID ;;
  }

  dimension: indefinite_and_impairs {
    type: string
    sql: ${TABLE}.IndefiniteAndImpairs ;;
  }

  dimension: information_date {
    type: string
    sql: ${TABLE}.InformationDate ;;
  }

  dimension: pathhow_confirmed {
    type: string
    sql: ${TABLE}.PATHHowConfirmed ;;
  }

  dimension: pathsmiinformation {
    type: string
    sql: ${TABLE}.PATHSMIInformation ;;
  }

  dimension: personal_id {
    type: string
    sql: ${TABLE}.PersonalID ;;
  }

  dimension: project_entry_id {
    type: string
    sql: ${TABLE}.ProjectEntryID ;;
  }

  dimension: receiving_services {
    type: string
    sql: ${TABLE}.ReceivingServices ;;
  }

  dimension: tcell_count {
    type: string
    sql: ${TABLE}.TCellCount ;;
  }

  dimension: tcell_count_available {
    type: string
    sql: ${TABLE}.TCellCountAvailable ;;
  }

  dimension: tcell_source {
    type: string
    sql: ${TABLE}.TCellSource ;;
  }

  dimension: user_id {
    type: string
    sql: ${TABLE}.UserID ;;
  }

  dimension: viral_load {
    type: string
    sql: ${TABLE}.ViralLoad ;;
  }

  dimension: viral_load_available {
    type: string
    sql: ${TABLE}.ViralLoadAvailable ;;
  }

  dimension: viral_load_source {
    type: string
    sql: ${TABLE}.ViralLoadSource ;;
  }

  measure: count {
    type: count
    drill_fields: [disabilities_id, export.export_id, export.source_name, export.software_name]
  }
}
