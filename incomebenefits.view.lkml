view: incomebenefits {
  sql_table_name: incomebenefits ;;

  dimension: adap {
    type: string
    sql: ${TABLE}.ADAP ;;
  }

  dimension: alimony {
    type: string
    sql: ${TABLE}.Alimony ;;
  }

  dimension: alimony_amount {
    type: string
    sql: ${TABLE}.AlimonyAmount ;;
  }

  dimension: benefits_from_any_source {
    type: string
    sql: ${TABLE}.BenefitsFromAnySource ;;
  }

  dimension: child_support {
    type: string
    sql: ${TABLE}.ChildSupport ;;
  }

  dimension: child_support_amount {
    type: string
    sql: ${TABLE}.ChildSupportAmount ;;
  }

  dimension: cobra {
    type: string
    sql: ${TABLE}.COBRA ;;
  }

  dimension: connection_with_soar {
    type: string
    sql: ${TABLE}.ConnectionWithSOAR ;;
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

  dimension: earned {
    type: string
    sql: ${TABLE}.Earned ;;
  }

  dimension: earned_amount {
    type: string
    sql: ${TABLE}.EarnedAmount ;;
  }

  dimension: employer_provided {
    type: string
    sql: ${TABLE}.EmployerProvided ;;
  }

  dimension: export_id {
    type: string
    # hidden: yes
    sql: ${TABLE}.ExportID ;;
  }

  dimension: ga {
    type: string
    sql: ${TABLE}.GA ;;
  }

  dimension: gaamount {
    type: string
    sql: ${TABLE}.GAAmount ;;
  }

  dimension: hivaidsassistance {
    type: string
    sql: ${TABLE}.HIVAIDSAssistance ;;
  }

  dimension: income_benefits_id {
    primary_key: yes
    type: string
    sql: ${TABLE}.IncomeBenefitsID ;;
  }

  dimension: income_from_any_source {
    type: string
    sql: ${TABLE}.IncomeFromAnySource ;;
  }

  dimension: indian_health_services {
    type: string
    sql: ${TABLE}.IndianHealthServices ;;
  }

  dimension: information_date {
    type: string
    sql: ${TABLE}.InformationDate ;;
  }

  dimension: insurance_from_any_source {
    type: string
    sql: ${TABLE}.InsuranceFromAnySource ;;
  }

  dimension: medicaid {
    type: string
    sql: ${TABLE}.Medicaid ;;
  }

  dimension: medicare {
    type: string
    sql: ${TABLE}.Medicare ;;
  }

  dimension: no_adapreason {
    type: string
    sql: ${TABLE}.NoADAPReason ;;
  }

  dimension: no_cobrareason {
    type: string
    sql: ${TABLE}.NoCOBRAReason ;;
  }

  dimension: no_employer_provided_reason {
    type: string
    sql: ${TABLE}.NoEmployerProvidedReason ;;
  }

  dimension: no_hivaidsassistance_reason {
    type: string
    sql: ${TABLE}.NoHIVAIDSAssistanceReason ;;
  }

  dimension: no_indian_health_services_reason {
    type: string
    sql: ${TABLE}.NoIndianHealthServicesReason ;;
  }

  dimension: no_medicaid_reason {
    type: string
    sql: ${TABLE}.NoMedicaidReason ;;
  }

  dimension: no_medicare_reason {
    type: string
    sql: ${TABLE}.NoMedicareReason ;;
  }

  dimension: no_private_pay_reason {
    type: string
    sql: ${TABLE}.NoPrivatePayReason ;;
  }

  dimension: no_schipreason {
    type: string
    sql: ${TABLE}.NoSCHIPReason ;;
  }

  dimension: no_state_health_ins_reason {
    type: string
    sql: ${TABLE}.NoStateHealthInsReason ;;
  }

  dimension: no_vamed_reason {
    type: string
    sql: ${TABLE}.NoVAMedReason ;;
  }

  dimension: other_benefits_source {
    type: string
    sql: ${TABLE}.OtherBenefitsSource ;;
  }

  dimension: other_benefits_source_identify {
    type: string
    sql: ${TABLE}.OtherBenefitsSourceIdentify ;;
  }

  dimension: other_income_source {
    type: string
    sql: ${TABLE}.OtherIncomeSource ;;
  }

  dimension: other_income_source_amount {
    type: string
    sql: ${TABLE}.OtherIncomeSourceAmount ;;
  }

  dimension: other_income_source_identify {
    type: string
    sql: ${TABLE}.OtherIncomeSourceIdentify ;;
  }

  dimension: other_insurance {
    type: string
    sql: ${TABLE}.OtherInsurance ;;
  }

  dimension: other_insurance_identify {
    type: string
    sql: ${TABLE}.OtherInsuranceIdentify ;;
  }

  dimension: other_tanf {
    type: string
    sql: ${TABLE}.OtherTANF ;;
  }

  dimension: pension {
    type: string
    sql: ${TABLE}.Pension ;;
  }

  dimension: pension_amount {
    type: string
    sql: ${TABLE}.PensionAmount ;;
  }

  dimension: personal_id {
    type: string
    sql: ${TABLE}.PersonalID ;;
  }

  dimension: private_disability {
    type: string
    sql: ${TABLE}.PrivateDisability ;;
  }

  dimension: private_disability_amount {
    type: string
    sql: ${TABLE}.PrivateDisabilityAmount ;;
  }

  dimension: private_pay {
    type: string
    sql: ${TABLE}.PrivatePay ;;
  }

  dimension: enrollment_id {
    type: string
    sql: ${TABLE}.EnrollmentID ;;
  }

  dimension: rental_assistance_ongoing {
    type: string
    sql: ${TABLE}.RentalAssistanceOngoing ;;
  }

  dimension: rental_assistance_temp {
    type: string
    sql: ${TABLE}.RentalAssistanceTemp ;;
  }

  dimension: schip {
    type: string
    sql: ${TABLE}.SCHIP ;;
  }

  dimension: snap {
    type: string
    sql: ${TABLE}.SNAP ;;
  }

  dimension: soc_sec_retirement {
    type: string
    sql: ${TABLE}.SocSecRetirement ;;
  }

  dimension: soc_sec_retirement_amount {
    type: string
    sql: ${TABLE}.SocSecRetirementAmount ;;
  }

  dimension: ssdi {
    type: string
    sql: ${TABLE}.SSDI ;;
  }

  dimension: ssdiamount {
    type: string
    sql: ${TABLE}.SSDIAmount ;;
  }

  dimension: ssi {
    type: string
    sql: ${TABLE}.SSI ;;
  }

  dimension: ssiamount {
    type: string
    sql: ${TABLE}.SSIAmount ;;
  }

  dimension: state_health_ins {
    type: string
    sql: ${TABLE}.StateHealthIns ;;
  }

  dimension: tanf {
    type: string
    sql: ${TABLE}.TANF ;;
  }

  dimension: tanfamount {
    type: string
    sql: ${TABLE}.TANFAmount ;;
  }

  dimension: tanfchild_care {
    type: string
    sql: ${TABLE}.TANFChildCare ;;
  }

  dimension: tanftransportation {
    type: string
    sql: ${TABLE}.TANFTransportation ;;
  }

  dimension: total_monthly_income {
    type: string
    sql: ${TABLE}.TotalMonthlyIncome ;;
  }

  dimension: unemployment {
    type: string
    sql: ${TABLE}.Unemployment ;;
  }

  dimension: unemployment_amount {
    type: string
    sql: ${TABLE}.UnemploymentAmount ;;
  }

  dimension: user_id {
    type: string
    sql: ${TABLE}.UserID ;;
  }

  dimension: vadisability_non_service {
    type: string
    sql: ${TABLE}.VADisabilityNonService ;;
  }

  dimension: vadisability_non_service_amount {
    type: string
    sql: ${TABLE}.VADisabilityNonServiceAmount ;;
  }

  dimension: vadisability_service {
    type: string
    sql: ${TABLE}.VADisabilityService ;;
  }

  dimension: vadisability_service_amount {
    type: string
    sql: ${TABLE}.VADisabilityServiceAmount ;;
  }

  dimension: vamedical_services {
    type: string
    sql: ${TABLE}.VAMedicalServices ;;
  }

  dimension: wic {
    type: string
    sql: ${TABLE}.WIC ;;
  }

  dimension: workers_comp {
    type: string
    sql: ${TABLE}.WorkersComp ;;
  }

  dimension: workers_comp_amount {
    type: string
    sql: ${TABLE}.WorkersCompAmount ;;
  }

  measure: count {
    type: count
    drill_fields: [income_benefits_id, export.export_id, export.source_name, export.software_name]
  }
}
