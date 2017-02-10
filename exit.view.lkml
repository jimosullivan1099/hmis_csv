view: exit {
  sql_table_name: `exit` ;;

  dimension: exit_id {
    primary_key: yes
    type: string
    sql: ${TABLE}.ExitID ;;
  }

  dimension: assessment_disposition {
    type: string
    sql: ${TABLE}.AssessmentDisposition ;;
  }

  dimension: assistance_mainstream_benefits {
    type: string
    sql: ${TABLE}.AssistanceMainstreamBenefits ;;
  }

  dimension: connection_with_soar {
    type: string
    sql: ${TABLE}.ConnectionWithSOAR ;;
  }

  dimension: date_created {
    type: date
    sql: ${TABLE}.DateCreated ;;
  }

  dimension: date_deleted {
    type: date
    sql: ${TABLE}.DateDeleted ;;
  }

  dimension: date_updated {
    type: date
    sql: ${TABLE}.DateUpdated ;;
  }

  dimension: destination {
    type: string
    sql: ${TABLE}.Destination ;;
  }

  dimension: early_exit_reason {
    type: string
    sql: ${TABLE}.EarlyExitReason ;;
  }

  dimension: exit_counseling {
    type: string
    sql: ${TABLE}.ExitCounseling ;;
  }

  dimension: exit_date {
    type: date
    sql: ${TABLE}.ExitDate ;;
  }

  dimension: export_id {
    type: string
    # hidden: yes
    sql: ${TABLE}.ExportID ;;
  }

  dimension: family_reunification_achieved {
    type: string
    sql: ${TABLE}.FamilyReunificationAchieved ;;
  }

  dimension: further_follow_up_services {
    type: string
    sql: ${TABLE}.FurtherFollowUpServices ;;
  }

  dimension: housing_assessment {
    type: string
    sql: ${TABLE}.HousingAssessment ;;
  }

  dimension: other_aftercare_plan_or_action {
    type: string
    sql: ${TABLE}.OtherAftercarePlanOrAction ;;
  }

  dimension: other_destination {
    type: string
    sql: ${TABLE}.OtherDestination ;;
  }

  dimension: other_disposition {
    type: string
    sql: ${TABLE}.OtherDisposition ;;
  }

  dimension: permanent_housing_placement {
    type: string
    sql: ${TABLE}.PermanentHousingPlacement ;;
  }

  dimension: personal_id {
    type: string
    sql: ${TABLE}.PersonalID ;;
  }

  dimension: project_completion_status {
    type: string
    sql: ${TABLE}.ProjectCompletionStatus ;;
  }

  dimension: project_entry_id {
    type: string
    sql: ${TABLE}.ProjectEntryID ;;
  }

  dimension: resource_package {
    type: string
    sql: ${TABLE}.ResourcePackage ;;
  }

  dimension: scheduled_follow_up_contacts {
    type: string
    sql: ${TABLE}.ScheduledFollowUpContacts ;;
  }

  dimension: subsidy_information {
    type: string
    sql: ${TABLE}.SubsidyInformation ;;
  }

  dimension: temporary_shelter_placement {
    type: string
    sql: ${TABLE}.TemporaryShelterPlacement ;;
  }

  dimension: user_id {
    type: string
    sql: ${TABLE}.UserID ;;
  }

  dimension: written_aftercare_plan {
    type: string
    sql: ${TABLE}.WrittenAftercarePlan ;;
  }

  measure: count {
    type: count
    drill_fields: [exit_id, export.export_id, export.source_name, export.software_name]
  }
}
