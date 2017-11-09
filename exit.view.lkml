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

  dimension: exchange_for_sex {
    type: string
    sql: ${TABLE}.ExchangeForSex ;;
  }

  dimension: exchange_for_sex_past_three_months {
    type: string
    sql: ${TABLE}.ExchangeForSexPastThreeMonths ;;
  }

  dimension: count_of_exchange_for_sex {
    type: string
    sql: ${TABLE}.CountOfExchangeForSex ;;
  }

  dimension: asked_or_forced_to_exchange_for_sex {
    type: string
    sql: ${TABLE}.AskedOrForcedToExchangeForSex ;;
  }

  dimension: asked_or_forced_to_exchange_for_sex_past_three_months {
    type: string
    sql: ${TABLE}.AskedOrForcedToExchangeForSexPastThreeMonths ;;
  }

  dimension: workplace_violence_threats {
    type: string
    sql: ${TABLE}.WorkPlaceViolenceThreats ;;
  }

  dimension: workplace_promise_difference {
    type: string
    sql: ${TABLE}.WorkplacePromiseDifference ;;
  }

  dimension: coerced_to_continue_work {
    type: string
    sql: ${TABLE}.CoercedToContinueWork ;;
  }

  dimension: labor_exploit_past_three_months {
    type: string
    sql: ${TABLE}.LaborExploitPastThreeMonths ;;
  }

  dimension: counseling_received {
    type: string
    sql: ${TABLE}.CounselingReceived ;;
  }

  dimension: individual_counseling {
    type: string
    sql: ${TABLE}.IndividualCounseling ;;
  }

  dimension: family_counseling {
    type: string
    sql: ${TABLE}.FamilyCounseling ;;
  }

  dimension: group_counseling {
    type: string
    sql: ${TABLE}.GroupCounseling ;;
  }

  dimension: session_count_at_exit {
    type: string
    sql: ${TABLE}.SessionCountAtExit ;;
  }

  dimension: post_exit_counseling_plan {
    type: string
    sql: ${TABLE}.PostExitCounselingPlan ;;
  }

  dimension: sessions_in_plan {
    type: string
    sql: ${TABLE}.SessionsInPlan ;;
  }

  dimension: destination_safe_client {
    type: string
    sql: ${TABLE}.DestinationSafeClient ;;
  }

  dimension: destination_safe_worker {
    type: string
    sql: ${TABLE}.DestinationSafeWorker ;;
  }

  dimension: pos_adult_connections {
    type: string
    sql: ${TABLE}.PosAdultConnections ;;
  }

  dimension: pos_peer_connections {
    type: string
    sql: ${TABLE}.PosPeerConnections ;;
  }

  dimension: pos_community_connections {
    type: string
    sql: ${TABLE}.PosCommunityConnections ;;
  }

  dimension: aftercare_date {
    type: string
    sql: ${TABLE}.AftercareDate ;;
  }

  dimension: aftercare_provided {
    type: string
    sql: ${TABLE}.AftercareProvided ;;
  }

  dimension: email_social_media {
    type: string
    sql: ${TABLE}.EmailSocialMedia ;;
  }

  dimension: telephone {
    type: string
    sql: ${TABLE}.Telephone ;;
  }

  dimension: in_person_individual {
    type: string
    sql: ${TABLE}.InPersonIndividual ;;
  }

  dimension: in_person_group {
    type: string
    sql: ${TABLE}.InPersonGroup ;;
  }

  dimension: cm_exit_reason {
    type: string
    sql: ${TABLE}.CMExitReason ;;
  }

  measure: count {
    type: count
    drill_fields: [exit_id, export.export_id, export.source_name, export.software_name]
  }
}
