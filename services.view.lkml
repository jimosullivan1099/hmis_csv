view: services {
  derived_table: {
    sql: SELECT * FROM services
      ;;
    indexes: ["ProjectEntryId","PersonalId"]
  }



  dimension: services_id {
    primary_key: yes
    type: string
    sql: ${TABLE}.ServicesID ;;
  }

  dimension: date_created {
    type: string
    sql: ${TABLE}.DateCreated ;;
  }

  dimension: date_deleted {
    type: string
    sql: ${TABLE}.DateDeleted ;;
  }

  dimension: date_provided {
    type: string
    sql: ${TABLE}.DateProvided ;;
  }

  dimension: date_updated {
    type: string
    sql: ${TABLE}.DateUpdated ;;
  }

  dimension: export_id {
    type: string
    # hidden: yes
    sql: ${TABLE}.ExportID ;;
  }

  dimension: faamount {
    type: string
    sql: ${TABLE}.FAAmount ;;
  }

  dimension: other_type_provided {
    type: string
    sql: ${TABLE}.OtherTypeProvided ;;
  }

  dimension: personal_id {
    type: string
    sql: ${TABLE}.PersonalID ;;
  }

  dimension: project_entry_id {
    type: string
    sql: ${TABLE}.ProjectEntryID ;;
  }

  dimension: record_type {
    type: number
    sql: ${TABLE}.RecordType ;;
  }

 dimension: record_type_description {
  type:  string
  case:   {
    when: {
      sql: {$record_type} = 12;;
      label: "Contact"
          }
    when: {
      sql: {$record_type} = 200;;
      label: "Bed Night"
    }
  }

 }



  dimension: referral_outcome {
    type: string
    sql: ${TABLE}.ReferralOutcome ;;
  }

  dimension: sub_type_provided {
    type: string
    sql: ${TABLE}.SubTypeProvided ;;
  }

  dimension: type_provided {
    type: string
    sql: ${TABLE}.TypeProvided ;;
  }

  dimension: user_id {
    type: string
    sql: ${TABLE}.UserID ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  # ----- Sets of fields for drilling ------
  set: detail {
    fields: [
      services_id,
      export.export_id,
      export.source_name,
      export.software_name,
      servicemappings.count,
      servicemappings_copy.count,
      servicemappings_dm154.count,
      _casenotes.count,
      _casenotes1.count
    ]
  }
}
