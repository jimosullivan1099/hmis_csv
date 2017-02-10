view: servicemappings {
  sql_table_name: servicemappings ;;

  dimension: activity {
    type: string
    sql: ${TABLE}.Activity ;;
  }

  dimension: activity_type {
    type: string
    sql: ${TABLE}.ActivityType ;;
  }

  dimension: cost {
    type: string
    sql: ${TABLE}.Cost ;;
  }

  dimension: date_created {
    type: string
    sql: ${TABLE}.DateCreated ;;
  }

  dimension: date_deleted {
    type: string
    sql: ${TABLE}.DateDeleted ;;
  }

  dimension: date_ended {
    type: string
    sql: ${TABLE}.DateEnded ;;
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

  dimension: organization_id {
    type: string
    # hidden: yes
    sql: ${TABLE}.OrganizationID ;;
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

  dimension: project_id {
    type: string
    # hidden: yes
    sql: ${TABLE}.ProjectID ;;
  }

  dimension: record_type {
    type: string
    sql: ${TABLE}.RecordType ;;
  }

  dimension: referral_outcome {
    type: string
    sql: ${TABLE}.ReferralOutcome ;;
  }

  dimension: services_id {
    type: string
    # hidden: yes
    sql: ${TABLE}.ServicesID ;;
  }

  dimension: sub_type_provided {
    type: string
    sql: ${TABLE}.SubTypeProvided ;;
  }

  dimension: type_provided {
    type: string
    sql: ${TABLE}.TypeProvided ;;
  }

  dimension: unit_amount {
    type: string
    sql: ${TABLE}.UnitAmount ;;
  }

  dimension: unit_type {
    type: string
    sql: ${TABLE}.UNitType ;;
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
      organization.organization_name,
      organization.organization_id,
      organization.organization_common_name,
      project.project_id,
      project.project_common_name,
      project.project_name,
      export.export_id,
      export.source_name,
      export.software_name,
      services.services_id
    ]
  }
}