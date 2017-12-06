view: enrollment {


  measure: enrollment_count {
    type: count
    drill_fields: [detail*]
  }

  dimension: id {
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension:  age_at_entry {
   type:  number
  sql: YEAR(${entry_date_date}) - YEAR(${client.dob}) - (DATE_FORMAT(${entry_date_date}, '%m%d') < DATE_FORMAT(${client.dob}, '%m%d'));;
}

  dimension: enrollment_id {
    type: string
    primary_key: yes
    sql: ${TABLE}.EnrollmentID ;;
  }




  dimension: personal_id {
    type: string
    sql: ${TABLE}.PersonalID ;;
  }

  dimension: project_id {
    type: string
    sql: ${TABLE}.ProjectID ;;
  }

  dimension_group: entry_date {
    type: time
    sql: ${TABLE}.EntryDate ;;
  }

  dimension: household_id {
    type: string
    sql: ${TABLE}.HouseholdID ;;
  }

  dimension: relationship_to_ho_h {
    type: string
    sql: ${TABLE}.RelationshipToHoH ;;
  }

  dimension: residence_prior {
    type: string
    sql: ${TABLE}.ResidencePrior ;;
  }

  dimension: other_residence_prior {
    type: string
    sql: ${TABLE}.OtherResidencePrior ;;
  }

  dimension: residence_prior_length_of_stay {
    type: string
    sql: ${TABLE}.ResidencePriorLengthOfStay ;;
  }

  dimension: orphaned_enrollment {
    type:  number
    sql: ( SELECT count(EnrollmentID)
          FROM enrollment as b
          WHERE not exists (SELECT * FROM  client as a WHERE a.PersonalID=b.PersonalID )
         ) ;;
  }

  dimension: disabling_condition {
    type: string
    sql: ${TABLE}.DisablingCondition ;;
  }

  dimension: entry_from_street_essh {
    type: string
    sql: ${TABLE}.EntryFromStreetESSH ;;
  }

  dimension: date_to_street_essh {
    type: string
    sql: ${TABLE}.DateToStreetESSH ;;
  }

  dimension: times_homeless_past_three_years {
    type: string
    sql: ${TABLE}.TimesHomelessPastThreeYears ;;
  }

  dimension: months_homeless_past_three_years {
    type: string
    sql: ${TABLE}.MonthsHomelessPastThreeYears ;;
  }

  dimension: housing_status {
    type: string
    sql: ${TABLE}.HousingStatus ;;
  }

  dimension: date_of_engagement {
    type: string
    sql: ${TABLE}.DateOfEngagement ;;
  }

  dimension: in_permanent_housing {
    type: string
    sql: ${TABLE}.InPermanentHousing ;;
  }

  dimension: residential_move_in_date {
    type: string
    sql: ${TABLE}.ResidentialMoveInDate ;;
  }

  dimension: date_of_pathstatus {
    type: string
    sql: ${TABLE}.DateOfPATHStatus ;;
  }

  dimension: client_enrolled_in_path {
    type: string
    sql: ${TABLE}.ClientEnrolledInPATH ;;
  }

  dimension: reason_not_enrolled {
    type: string
    sql: ${TABLE}.ReasonNotEnrolled ;;
  }

  dimension: worst_housing_situation {
    type: string
    sql: ${TABLE}.WorstHousingSituation ;;
  }

  dimension: percent_ami {
    type: string
    sql: ${TABLE}.PercentAMI ;;
  }

  dimension: last_permanent_street {
    type: string
    sql: ${TABLE}.LastPermanentStreet ;;
  }

  dimension: last_permanent_city {
    type: string
    sql: ${TABLE}.LastPermanentCity ;;
  }

  dimension: last_permanent_state {
    type: string
    sql: ${TABLE}.LastPermanentState ;;
  }

  dimension: last_permanent_zip {
    type: string
    sql: ${TABLE}.LastPermanentZIP ;;
  }

  dimension: address_data_quality {
    type: string
    sql: ${TABLE}.AddressDataQuality ;;
  }

  dimension: date_of_bcpstatus {
    type: string
    sql: ${TABLE}.DateOfBCPStatus ;;
  }

  dimension: fysbyouth {
    type: string
    sql: ${TABLE}.FYSBYouth ;;
  }

  dimension: reason_no_services {
    type: string
    sql: ${TABLE}.ReasonNoServices ;;
  }

  dimension: sexual_orientation {
    type: string
    sql: ${TABLE}.SexualOrientation ;;
  }

  dimension: former_ward_child_welfare {
    type: string
    sql: ${TABLE}.FormerWardChildWelfare ;;
  }

  dimension: child_welfare_years {
    type: string
    sql: ${TABLE}.ChildWelfareYears ;;
  }

  dimension: child_welfare_months {
    type: string
    sql: ${TABLE}.ChildWelfareMonths ;;
  }

  dimension: former_ward_juvenile_justice {
    type: string
    sql: ${TABLE}.FormerWardJuvenileJustice ;;
  }

  dimension: juvenile_justice_years {
    type: string
    sql: ${TABLE}.JuvenileJusticeYears ;;
  }

  dimension: juvenile_justice_months {
    type: string
    sql: ${TABLE}.JuvenileJusticeMonths ;;
  }

  dimension: household_dynamics {
    type: string
    sql: ${TABLE}.HouseholdDynamics ;;
  }

  dimension: sexual_orientation_gender_idyouth {
    type: string
    sql: ${TABLE}.SexualOrientationGenderIDYouth ;;
  }

  dimension: sexual_orientation_gender_idfam {
    type: string
    sql: ${TABLE}.SexualOrientationGenderIDFam ;;
  }

  dimension: housing_issues_youth {
    type: string
    sql: ${TABLE}.HousingIssuesYouth ;;
  }

  dimension: housing_issues_fam {
    type: string
    sql: ${TABLE}.HousingIssuesFam ;;
  }

  dimension: school_educational_issues_youth {
    type: string
    sql: ${TABLE}.SchoolEducationalIssuesYouth ;;
  }

  dimension: school_educational_issues_fam {
    type: string
    sql: ${TABLE}.SchoolEducationalIssuesFam ;;
  }

  dimension: unemployment_youth {
    type: string
    sql: ${TABLE}.UnemploymentYouth ;;
  }

  dimension: unemployment_fam {
    type: string
    sql: ${TABLE}.UnemploymentFam ;;
  }

  dimension: mental_health_issues_youth {
    type: string
    sql: ${TABLE}.MentalHealthIssuesYouth ;;
  }

  dimension: mental_health_issues_fam {
    type: string
    sql: ${TABLE}.MentalHealthIssuesFam ;;
  }

  dimension: health_issues_youth {
    type: string
    sql: ${TABLE}.HealthIssuesYouth ;;
  }

  dimension: health_issues_fam {
    type: string
    sql: ${TABLE}.HealthIssuesFam ;;
  }

  dimension: physical_disability_youth {
    type: string
    sql: ${TABLE}.PhysicalDisabilityYouth ;;
  }

  dimension: physical_disability_fam {
    type: string
    sql: ${TABLE}.PhysicalDisabilityFam ;;
  }

  dimension: mental_disability_youth {
    type: string
    sql: ${TABLE}.MentalDisabilityYouth ;;
  }

  dimension: mental_disability_fam {
    type: string
    sql: ${TABLE}.MentalDisabilityFam ;;
  }

  dimension: abuse_and_neglect_youth {
    type: string
    sql: ${TABLE}.AbuseAndNeglectYouth ;;
  }

  dimension: abuse_and_neglect_fam {
    type: string
    sql: ${TABLE}.AbuseAndNeglectFam ;;
  }

  dimension: alcohol_drug_abuse_youth {
    type: string
    sql: ${TABLE}.AlcoholDrugAbuseYouth ;;
  }

  dimension: alcohol_drug_abuse_fam {
    type: string
    sql: ${TABLE}.AlcoholDrugAbuseFam ;;
  }

  dimension: insufficient_income {
    type: string
    sql: ${TABLE}.InsufficientIncome ;;
  }

  dimension: active_military_parent {
    type: string
    sql: ${TABLE}.ActiveMilitaryParent ;;
  }

  dimension: incarcerated_parent {
    type: string
    sql: ${TABLE}.IncarceratedParent ;;
  }

  dimension: incarcerated_parent_status {
    type: string
    sql: ${TABLE}.IncarceratedParentStatus ;;
  }

  dimension: referral_source {
    type: string
    sql: ${TABLE}.ReferralSource ;;
  }

  dimension: count_outreach_referral_approaches {
    type: string
    sql: ${TABLE}.CountOutreachReferralApproaches ;;
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

  dimension: work_place_violence_threats {
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

  dimension: hpscreening_score {
    type: string
    sql: ${TABLE}.HPScreeningScore ;;
  }

  dimension: vamcstation {
    type: string
    sql: ${TABLE}.VAMCStation ;;
  }

  dimension: living_situation {
    type: string
    sql: ${TABLE}.LivingSituation ;;
  }

  dimension: length_of_stay {
    type: string
    sql: ${TABLE}.LengthOfStay ;;
  }

  dimension: los_under_threshold {
    type: string
    sql: ${TABLE}.LOSUnderThreshold ;;
  }

  dimension: previous_street_essh {
    type: string
    sql: ${TABLE}.PreviousStreetESSH ;;
  }

  dimension: move_in_date {
    type: string
    sql: ${TABLE}.MoveInDate ;;
  }

  dimension: eligible_for_rhy {
    type: string
    sql: ${TABLE}.EligibleForRHY ;;
  }

  dimension: runaway_youth {
    type: string
    sql: ${TABLE}.RunawayYouth ;;
  }

  dimension: urgent_referral {
    type: string
    sql: ${TABLE}.UrgentReferral ;;
  }

  dimension: time_to_housing_loss {
    type: string
    sql: ${TABLE}.TimeToHousingLoss ;;
  }

  dimension: zero_income {
    type: string
    sql: ${TABLE}.ZeroIncome ;;
  }

  dimension: annual_percent_ami {
    type: string
    sql: ${TABLE}.AnnualPercentAMI ;;
  }

  dimension: financial_change {
    type: string
    sql: ${TABLE}.FinancialChange ;;
  }

  dimension: household_change {
    type: string
    sql: ${TABLE}.HouseholdChange ;;
  }

  dimension: eviction_history {
    type: string
    sql: ${TABLE}.EvictionHistory ;;
  }

  dimension: subsidy_at_risk {
    type: string
    sql: ${TABLE}.SubsidyAtRisk ;;
  }

  dimension: literal_homeless_history {
    type: string
    sql: ${TABLE}.LiteralHomelessHistory ;;
  }

  dimension: disabled_hoh {
    type: string
    sql: ${TABLE}.DisabledHoH ;;
  }

  dimension: criminal_record {
    type: string
    sql: ${TABLE}.CriminalRecord ;;
  }

  dimension: sex_offender {
    type: string
    sql: ${TABLE}.SexOffender ;;
  }

  dimension: dependent_under_6 {
    type: string
    sql: ${TABLE}.DependentUnder6 ;;
  }

  dimension: single_parent {
    type: string
    sql: ${TABLE}.SingleParent ;;
  }

  dimension: hh5_plus {
    type: string
    sql: ${TABLE}.HH5Plus ;;
  }

  dimension: iraq_afghanistan {
    type: string
    sql: ${TABLE}.IraqAfghanistan ;;
  }

  dimension: fem_vet {
    type: string
    sql: ${TABLE}.FemVet ;;
  }

  dimension: threshold_score {
    type: string
    sql: ${TABLE}.ThresholdScore ;;
  }

  dimension_group: date_created {
    type: time
    sql: ${TABLE}.DateCreated ;;
  }

  dimension_group: date_updated {
    type: time
    sql: ${TABLE}.DateUpdated ;;
  }

  dimension: user_id {
    type: string
    sql: ${TABLE}.UserID ;;
  }

  dimension: date_deleted {
    type: string
    sql: ${TABLE}.DateDeleted ;;
  }

  dimension: export_id {
    type: string
    sql: ${TABLE}.ExportID ;;
  }

  dimension: orig_household_id {
    type: number
    sql: ${TABLE}.orig_household_id ;;
  }

  dimension: fixed_household_id {
    type: number
    sql: ${TABLE}.fixed_household_id ;;
  }

  dimension: orig_rel_to_hoh {
    type: number
    sql: ${TABLE}.orig_rel_to_hoh ;;
  }

  dimension: fixed_rel_to_hoh {
    type: number
    sql: ${TABLE}.fixed_rel_to_hoh ;;
  }

  dimension: m_migrated {
    type: yesno
    sql: ${TABLE}.m_migrated ;;
  }

  dimension: m_target_id {
    type: number
    sql: ${TABLE}.m_target_id ;;
  }

  dimension: enrolment_type {
    type: yesno
    sql: ${TABLE}.enrolment_type ;;
  }

  dimension: enrolment_head {
    type: string
    sql: ${TABLE}.enrolment_head ;;
  }

  measure: clients_without_enrollments {
    type:  count_distinct
    sql: ${client.personal_id};;
    filters: {
      field: enrollment_id
      value: "null"
    }
    drill_fields: [client.personal_id]
  }

  # Count of enrollments that have the same Household ID and multiple records having RelationshipToHoH equal to self
  dimension: enrollments_with_multiple_hoh {
    type:  number
    sql: (
          SELECT COUNT(a.EnrollmentID)
          FROM enrollment AS a
          INNER JOIN enrollment AS b ON a.HouseholdID = b.HouseholdID AND a.EnrollmentID <> b.EnrollmentID
          WHERE a.RelationshipToHoH = 1
            AND b.RelationshipToHoH = 1
         ) ;;
  }



  set: detail {
    fields: [
      id,
      enrollment_id,
      personal_id,
      project_id,
      entry_date_time,
      household_id,
      relationship_to_ho_h,
      residence_prior,
      other_residence_prior,
      residence_prior_length_of_stay,
      disabling_condition,
      entry_from_street_essh,
      date_to_street_essh,
      times_homeless_past_three_years,
      months_homeless_past_three_years,
      housing_status,
      date_of_engagement,
      in_permanent_housing,
      residential_move_in_date,
      date_of_pathstatus,
      client_enrolled_in_path,
      reason_not_enrolled,
      worst_housing_situation,
      percent_ami,
      last_permanent_street,
      last_permanent_city,
      last_permanent_state,
      last_permanent_zip,
      address_data_quality,
      date_of_bcpstatus,
      fysbyouth,
      reason_no_services,
      sexual_orientation,
      former_ward_child_welfare,
      child_welfare_years,
      child_welfare_months,
      former_ward_juvenile_justice,
      juvenile_justice_years,
      juvenile_justice_months,
      household_dynamics,
      sexual_orientation_gender_idyouth,
      sexual_orientation_gender_idfam,
      housing_issues_youth,
      housing_issues_fam,
      school_educational_issues_youth,
      school_educational_issues_fam,
      unemployment_youth,
      unemployment_fam,
      mental_health_issues_youth,
      mental_health_issues_fam,
      health_issues_youth,
      health_issues_fam,
      physical_disability_youth,
      physical_disability_fam,
      mental_disability_youth,
      mental_disability_fam,
      abuse_and_neglect_youth,
      abuse_and_neglect_fam,
      alcohol_drug_abuse_youth,
      alcohol_drug_abuse_fam,
      insufficient_income,
      active_military_parent,
      incarcerated_parent,
      incarcerated_parent_status,
      referral_source,
      count_outreach_referral_approaches,
      exchange_for_sex,
      exchange_for_sex_past_three_months,
      count_of_exchange_for_sex,
      asked_or_forced_to_exchange_for_sex,
      asked_or_forced_to_exchange_for_sex_past_three_months,
      work_place_violence_threats,
      workplace_promise_difference,
      coerced_to_continue_work,
      labor_exploit_past_three_months,
      hpscreening_score,
      vamcstation,
      date_created_time,
      date_updated_time,
      user_id,
      date_deleted,
      export_id,
      orig_household_id,
      fixed_household_id,
      orig_rel_to_hoh,
      fixed_rel_to_hoh,
      m_migrated,
      m_target_id,
      enrolment_type,
      enrolment_head
    ]
  }
}
