include: "/views/hud/incomebenefits.view"

view: +incomebenefits {
  measure: incomebenefits_count {
    group_label: "Counts"
    view_label: "Analysis - General"
    label: "IncomeBenefits count"
    type: count_distinct


    drill_fields: [incomebenefits_queries_drill_fields*]
    sql: ${IncomeBenefitsID} ;;
  }

  measure: incomebenefits_that_reference_an_invalid_enrollment {
    group_label: "Invalid Reference"
    view_label: "Analysis - Major"
    label: "IncomeBenefits that reference an invalid enrollment"
    type: count_distinct

    filters: [
      enrollment.EnrollmentID: "NULL,EMPTY"
    ]

    drill_fields: [incomebenefits_queries_drill_fields*]
    sql: ${EnrollmentID} ;;
  }

  measure: incomebenefits_that_reference_an_invalid_exit {
    group_label: "Invalid Reference"
    view_label: "Analysis - Major"
    label: "IncomeBenefits that reference an invalid exit"
    type: count_distinct

    filters: [
      exit.EnrollmentID: "NULL,EMPTY"
    ]

    drill_fields: [incomebenefits_queries_drill_fields*]
    sql: ${IncomeBenefitsID} ;;
  }

  dimension: bool_no_income_type_is_1 {
    hidden: yes
    type: yesno
    sql:  CASE
            WHEN ${incomebenefits.Earned} != "1" AND ${incomebenefits.Unemployment} != "1" AND ${incomebenefits.SSI} != "1" AND ${incomebenefits.SSDI} != "1" AND ${incomebenefits.VADisabilityService} != "1" AND ${incomebenefits.VADisabilityNonService} != "1" AND ${incomebenefits.PrivateDisability} != "1" AND ${incomebenefits.WorkersComp} != "1" AND ${incomebenefits.TANF} != "1" AND ${incomebenefits.GA} != "1" AND ${incomebenefits.SocSecRetirement} != "1" AND ${incomebenefits.Pension} != "1" AND ${incomebenefits.ChildSupport} != "1" AND ${incomebenefits.Alimony} != "1" AND ${incomebenefits.OtherIncomeSource} != "1" THEN true
            ELSE false
          END ;;
  }

  dimension: bool_at_least_one_income_type_is_1 {
    hidden: yes
    type: yesno
    sql:  CASE
            WHEN ${incomebenefits.Earned} = "1" OR ${incomebenefits.Unemployment} = "1" OR ${incomebenefits.SSI} = "1" OR ${incomebenefits.SSDI} = "1" OR ${incomebenefits.VADisabilityService} = "1" OR ${incomebenefits.VADisabilityNonService} = "1" OR ${incomebenefits.PrivateDisability} = "1" OR ${incomebenefits.WorkersComp} = "1" OR ${incomebenefits.TANF} = "1" OR ${incomebenefits.GA} = "1" OR ${incomebenefits.SocSecRetirement} = "1" OR ${incomebenefits.Pension} = "1" OR ${incomebenefits.ChildSupport} = "1" OR ${incomebenefits.Alimony} = "1" OR ${incomebenefits.OtherIncomeSource} = "1" THEN true
            ELSE false
          END ;;
  }

  dimension: bool_all_income_types_are_0 {
    hidden: yes
    type: yesno
    sql:  CASE
            WHEN ${incomebenefits.Earned} = "0" AND ${incomebenefits.Unemployment} = "0" AND ${incomebenefits.SSI} = "0" AND ${incomebenefits.SSDI} = "0" AND ${incomebenefits.VADisabilityService} = "0" AND ${incomebenefits.VADisabilityNonService} = "0" AND ${incomebenefits.PrivateDisability} = "0" AND ${incomebenefits.WorkersComp} = "0" AND ${incomebenefits.TANF} = "0" AND ${incomebenefits.GA} = "0" AND ${incomebenefits.SocSecRetirement} = "0" AND ${incomebenefits.Pension} = "0" AND ${incomebenefits.ChildSupport} = "0" AND ${incomebenefits.Alimony} = "0" AND ${incomebenefits.OtherIncomeSource} = "0" THEN true
            ELSE false
          END ;;
  }

  dimension: bool_no_benefit_type_is_1 {
    hidden: yes
    type: yesno
    sql:  CASE
            WHEN ${incomebenefits.SNAP} != "1" AND ${incomebenefits.WIC} != "1" AND ${incomebenefits.TANFChildCare} != "1" AND ${incomebenefits.TANFTransportation} != "1" AND ${incomebenefits.OtherTANF} != "1" AND ${incomebenefits.OtherBenefitsSource} != "1" THEN true
            ELSE false
          END ;;
  }

  dimension: bool_at_least_one_benefit_type_is_1 {
    hidden: yes
    type: yesno
    sql:  CASE
            WHEN ${incomebenefits.SNAP} = "1" OR ${incomebenefits.WIC} = "1" OR ${incomebenefits.TANFChildCare} = "1" OR ${incomebenefits.TANFTransportation} = "1" OR ${incomebenefits.OtherTANF} = "1" OR ${incomebenefits.OtherBenefitsSource} = "1" THEN true
            ELSE false
          END ;;
  }

  dimension: bool_all_benefit_types_are_0 {
    hidden: yes
    type: yesno
    sql:  CASE
            WHEN ${incomebenefits.SNAP} = "0" AND ${incomebenefits.WIC} = "0" AND ${incomebenefits.TANFChildCare} = "0" AND ${incomebenefits.TANFTransportation} = "0" AND ${incomebenefits.OtherTANF} = "0" AND ${incomebenefits.OtherBenefitsSource} = "0" THEN true
            ELSE false
          END ;;
  }

  dimension: bool_no_insurance_type_is_1 {
    hidden: yes
    type: yesno
    sql:  CASE
            WHEN ${incomebenefits.Medicaid} != "1" AND ${incomebenefits.Medicare} != "1" AND ${incomebenefits.VAMedicalServices} != "1" AND ${incomebenefits.EmployerProvided} != "1" AND ${incomebenefits.SCHIP} != "1" AND ${incomebenefits.COBRA} != "1" AND ${incomebenefits.PrivatePay} != "1" AND ${incomebenefits.StateHealthIns} != "1" AND ${incomebenefits.IndianHealthServices} != "1" AND ${incomebenefits.OtherInsurance} != "1" THEN true
            ELSE false
          END ;;
  }

  dimension: bool_at_least_one_insurance_type_is_1 {
    hidden: yes
    type: yesno
    sql:  CASE
            WHEN ${incomebenefits.Medicaid} = "1" OR ${incomebenefits.Medicare} = "1" OR ${incomebenefits.VAMedicalServices} = "1" OR ${incomebenefits.EmployerProvided} = "1" OR ${incomebenefits.SCHIP} = "1" OR ${incomebenefits.COBRA} = "1" OR ${incomebenefits.PrivatePay} = "1" OR ${incomebenefits.StateHealthIns} = "1" OR ${incomebenefits.IndianHealthServices} = "1" OR ${incomebenefits.OtherInsurance} = "1" THEN true
            ELSE false
          END ;;
  }

  dimension: bool_all_insurance_types_are_0 {
    hidden: yes
    type: yesno
    sql:  CASE
            WHEN ${incomebenefits.Medicaid} = "0" AND ${incomebenefits.Medicare} = "0" AND ${incomebenefits.VAMedicalServices} = "0" AND ${incomebenefits.EmployerProvided} = "0" AND ${incomebenefits.SCHIP} = "0" AND ${incomebenefits.COBRA} = "0" AND ${incomebenefits.PrivatePay} = "0" AND ${incomebenefits.StateHealthIns} = "0" AND ${incomebenefits.IndianHealthServices} = "0" AND ${incomebenefits.OtherInsurance} = "0" THEN true
            ELSE false
          END ;;
  }

  measure: non_hud_adap {
    group_label: "NonHUD"
    view_label: "Analysis - Minor"
    label: "Non HUD ADAP"
    type: count_distinct

    filters: [
      incomebenefits.ADAP: "-0,-1,-8,-9,-99,-NULL,-EMPTY"
    ]

    drill_fields: [incomebenefits_queries_drill_fields*]
    sql: ${IncomeBenefitsID} ;;
  }

  measure: non_hud_alimony {
    group_label: "NonHUD"
    view_label: "Analysis - Minor"
    label: "Non HUD Alimony"
    type: count_distinct

    filters: [
      incomebenefits.Alimony: "-0,-1,-99,-NULL,-EMPTY"
    ]

    drill_fields: [incomebenefits_queries_drill_fields*]
    sql: ${IncomeBenefitsID} ;;
  }

  measure: non_hud_benefitsfromanysource {
    group_label: "NonHUD"
    view_label: "Analysis - Minor"
    label: "Non HUD BenefitsFromAnySource"
    type: count_distinct

    filters: [
      incomebenefits.BenefitsFromAnySource: "-0,-1,-8,-9,-99,-NULL,-EMPTY"
    ]

    drill_fields: [incomebenefits_queries_drill_fields*]
    sql: ${IncomeBenefitsID} ;;
  }

  measure: non_hud_childsupport {
    group_label: "NonHUD"
    view_label: "Analysis - Minor"
    label: "Non HUD ChildSupport"
    type: count_distinct

    filters: [
      incomebenefits.ChildSupport: "-0,-1,-99,-NULL,-EMPTY"
    ]

    drill_fields: [incomebenefits_queries_drill_fields*]
    sql: ${IncomeBenefitsID} ;;
  }

  measure: non_hud_cobra {
    group_label: "NonHUD"
    view_label: "Analysis - Minor"
    label: "Non HUD COBRA"
    type: count_distinct

    filters: [
      incomebenefits.COBRA: "-0,-1,-99,-NULL,-EMPTY"
    ]

    drill_fields: [incomebenefits_queries_drill_fields*]
    sql: ${IncomeBenefitsID} ;;
  }

  measure: non_hud_connectionwithsoar {
    group_label: "NonHUD"
    view_label: "Analysis - Minor"
    label: "Non HUD ConnectionWithSOAR"
    type: count_distinct

    filters: [
      incomebenefits.ConnectionWithSOAR: "-0,-1,-8,-9,-99,-NULL,-EMPTY"
    ]

    drill_fields: [incomebenefits_queries_drill_fields*]
    sql: ${IncomeBenefitsID} ;;
  }

  measure: non_hud_datacollectionstage {
    group_label: "NonHUD"
    view_label: "Analysis - Major"
    label: "Non HUD DataCollectionStage"
    type: count_distinct

    filters: [
      incomebenefits.DataCollectionStage: "-1,-2,-3,-5,-NULL,-EMPTY"
    ]

    drill_fields: [incomebenefits_queries_drill_fields*]
    sql: ${IncomeBenefitsID} ;;
  }

  measure: non_hud_earned {
    group_label: "NonHUD"
    view_label: "Analysis - Minor"
    label: "Non HUD Earned"
    type: count_distinct

    filters: [
      incomebenefits.Earned: "-0,-1,-99,-NULL,-EMPTY"
    ]

    drill_fields: [incomebenefits_queries_drill_fields*]
    sql: ${IncomeBenefitsID} ;;
  }

  measure: non_hud_employerprovided {
    group_label: "NonHUD"
    view_label: "Analysis - Minor"
    label: "Non HUD EmployerProvided"
    type: count_distinct

    filters: [
      incomebenefits.EmployerProvided: "-0,-1,-99,-NULL,-EMPTY"
    ]

    drill_fields: [incomebenefits_queries_drill_fields*]
    sql: ${IncomeBenefitsID} ;;
  }

  measure: non_hud_ga {
    group_label: "NonHUD"
    view_label: "Analysis - Minor"
    label: "Non HUD GA"
    type: count_distinct

    filters: [
      incomebenefits.GA: "-0,-1,-99,-NULL,-EMPTY"
    ]

    drill_fields: [incomebenefits_queries_drill_fields*]
    sql: ${IncomeBenefitsID} ;;
  }

  measure: non_hud_hivaidsassistance {
    group_label: "NonHUD"
    view_label: "Analysis - Minor"
    label: "Non HUD HIVAIDSAssistance"
    type: count_distinct

    filters: [
      incomebenefits.HIVAIDSAssistance: "-0,-1,-8,-9,-99,-NULL,-EMPTY"
    ]

    drill_fields: [incomebenefits_queries_drill_fields*]
    sql: ${IncomeBenefitsID} ;;
  }

  measure: non_hud_incomefromanysource {
    group_label: "NonHUD"
    view_label: "Analysis - Minor"
    label: "Non HUD IncomeFromAnySource"
    type: count_distinct

    filters: [
      incomebenefits.IncomeFromAnySource: "-0,-1,-8,-9,-99,-NULL,-EMPTY"
    ]

    drill_fields: [incomebenefits_queries_drill_fields*]
    sql: ${IncomeBenefitsID} ;;
  }

  measure: non_hud_indianhealthservices {
    group_label: "NonHUD"
    view_label: "Analysis - Minor"
    label: "Non HUD IndianHealthServices"
    type: count_distinct

    filters: [
      incomebenefits.IndianHealthServices: "-0,-1,-99,-NULL,-EMPTY"
    ]

    drill_fields: [incomebenefits_queries_drill_fields*]
    sql: ${IncomeBenefitsID} ;;
  }

  measure: non_hud_insurancefromanysource {
    group_label: "NonHUD"
    view_label: "Analysis - Minor"
    label: "Non HUD InsuranceFromAnySource"
    type: count_distinct

    filters: [
      incomebenefits.InsuranceFromAnySource: "-0,-1,-8,-9,-99,-NULL,-EMPTY"
    ]

    drill_fields: [incomebenefits_queries_drill_fields*]
    sql: ${IncomeBenefitsID} ;;
  }

  measure: non_hud_medicaid {
    group_label: "NonHUD"
    view_label: "Analysis - Minor"
    label: "Non HUD Medicaid"
    type: count_distinct

    filters: [
      incomebenefits.Medicaid: "-0,-1,-99,-NULL,-EMPTY"
    ]

    drill_fields: [incomebenefits_queries_drill_fields*]
    sql: ${IncomeBenefitsID} ;;
  }

  measure: non_hud_medicare {
    group_label: "NonHUD"
    view_label: "Analysis - Minor"
    label: "Non HUD Medicare"
    type: count_distinct

    filters: [
      incomebenefits.Medicare: "-0,-1,-99,-NULL,-EMPTY"
    ]

    drill_fields: [incomebenefits_queries_drill_fields*]
    sql: ${IncomeBenefitsID} ;;
  }

  measure: non_hud_noadapreason {
    group_label: "NonHUD"
    view_label: "Analysis - Minor"
    label: "Non HUD NoADAPReason"
    type: count_distinct

    filters: [
      incomebenefits.NoADAPReason: "-1,-2,-3,-4,-8,-9,-99,-NULL,-EMPTY"
    ]

    drill_fields: [incomebenefits_queries_drill_fields*]
    sql: ${IncomeBenefitsID} ;;
  }

  measure: non_hud_nocobrareason {
    group_label: "NonHUD"
    view_label: "Analysis - Minor"
    label: "Non HUD NoCOBRAReason"
    type: count_distinct

    filters: [
      incomebenefits.NoCOBRAReason: "-1,-2,-3,-4,-8,-9,-99,-NULL,-EMPTY"
    ]

    drill_fields: [incomebenefits_queries_drill_fields*]
    sql: ${IncomeBenefitsID} ;;
  }

  measure: non_hud_noemployerprovidedreason {
    group_label: "NonHUD"
    view_label: "Analysis - Minor"
    label: "Non HUD NoEmployerProvidedReason"
    type: count_distinct

    filters: [
      incomebenefits.NoEmployerProvidedReason: "-1,-2,-3,-4,-8,-9,-99,-NULL,-EMPTY"
    ]

    drill_fields: [incomebenefits_queries_drill_fields*]
    sql: ${IncomeBenefitsID} ;;
  }

  measure: non_hud_nohivaidsassistancereason {
    group_label: "NonHUD"
    view_label: "Analysis - Minor"
    label: "Non HUD NoHIVAIDSAssistanceReason"
    type: count_distinct

    filters: [
      incomebenefits.NoHIVAIDSAssistanceReason: "-1,-2,-3,-4,-8,-9,-99,-NULL,-EMPTY"
    ]

    drill_fields: [incomebenefits_queries_drill_fields*]
    sql: ${IncomeBenefitsID} ;;
  }

  measure: non_hud_noindianhealthservicesreason {
    group_label: "NonHUD"
    view_label: "Analysis - Minor"
    label: "Non HUD NoIndianHealthServicesReason"
    type: count_distinct

    filters: [
      incomebenefits.NoIndianHealthServicesReason: "-1,-2,-3,-4,-8,-9,-99,-NULL,-EMPTY"
    ]

    drill_fields: [incomebenefits_queries_drill_fields*]
    sql: ${IncomeBenefitsID} ;;
  }

  measure: non_hud_nomedicaidreason {
    group_label: "NonHUD"
    view_label: "Analysis - Minor"
    label: "Non HUD NoMedicaidReason"
    type: count_distinct

    filters: [
      incomebenefits.NoMedicaidReason: "-1,-2,-3,-4,-8,-9,-99,-NULL,-EMPTY"
    ]

    drill_fields: [incomebenefits_queries_drill_fields*]
    sql: ${IncomeBenefitsID} ;;
  }

  measure: non_hud_nomedicarereason {
    group_label: "NonHUD"
    view_label: "Analysis - Minor"
    label: "Non HUD NoMedicareReason"
    type: count_distinct

    filters: [
      incomebenefits.NoMedicareReason: "-1,-2,-3,-4,-8,-9,-99,-NULL,-EMPTY"
    ]

    drill_fields: [incomebenefits_queries_drill_fields*]
    sql: ${IncomeBenefitsID} ;;
  }

  measure: non_hud_noprivatepayreason {
    group_label: "NonHUD"
    view_label: "Analysis - Minor"
    label: "Non HUD NoPrivatePayReason"
    type: count_distinct

    filters: [
      incomebenefits.NoPrivatePayReason: "-1,-2,-3,-4,-8,-9,-99,-NULL,-EMPTY"
    ]

    drill_fields: [incomebenefits_queries_drill_fields*]
    sql: ${IncomeBenefitsID} ;;
  }

  measure: non_hud_noschipreason {
    group_label: "NonHUD"
    view_label: "Analysis - Minor"
    label: "Non HUD NoSCHIPReason"
    type: count_distinct

    filters: [
      incomebenefits.NoSCHIPReason: "-1,-2,-3,-4,-8,-9,-99,-NULL,-EMPTY"
    ]

    drill_fields: [incomebenefits_queries_drill_fields*]
    sql: ${IncomeBenefitsID} ;;
  }

  measure: non_hud_nostatehealthinsreason {
    group_label: "NonHUD"
    view_label: "Analysis - Minor"
    label: "Non HUD NoStateHealthInsReason"
    type: count_distinct

    filters: [
      incomebenefits.NoStateHealthInsReason: "-1,-2,-3,-4,-8,-9,-99,-NULL,-EMPTY"
    ]

    drill_fields: [incomebenefits_queries_drill_fields*]
    sql: ${IncomeBenefitsID} ;;
  }

  measure: non_hud_novamedreason {
    group_label: "NonHUD"
    view_label: "Analysis - Minor"
    label: "Non HUD NoVAMedReason"
    type: count_distinct

    filters: [
      incomebenefits.NoVAMedReason: "-1,-2,-3,-4,-8,-9,-99,-NULL,-EMPTY"
    ]

    drill_fields: [incomebenefits_queries_drill_fields*]
    sql: ${IncomeBenefitsID} ;;
  }

  measure: non_hud_otherbenefitssource {
    group_label: "NonHUD"
    view_label: "Analysis - Minor"
    label: "Non HUD OtherBenefitsSource"
    type: count_distinct

    filters: [
      incomebenefits.OtherBenefitsSource: "-0,-1,-99,-NULL,-EMPTY"
    ]

    drill_fields: [incomebenefits_queries_drill_fields*]
    sql: ${IncomeBenefitsID} ;;
  }

  measure: non_hud_otherincomesource {
    group_label: "NonHUD"
    view_label: "Analysis - Minor"
    label: "Non HUD OtherIncomeSource"
    type: count_distinct

    filters: [
      incomebenefits.OtherIncomeSource: "-0,-1,-99,-NULL,-EMPTY"
    ]

    drill_fields: [incomebenefits_queries_drill_fields*]
    sql: ${IncomeBenefitsID} ;;
  }

  measure: non_hud_otherinsurance {
    group_label: "NonHUD"
    view_label: "Analysis - Minor"
    label: "Non HUD OtherInsurance"
    type: count_distinct

    filters: [
      incomebenefits.OtherInsurance: "-0,-1,-99,-NULL,-EMPTY"
    ]

    drill_fields: [incomebenefits_queries_drill_fields*]
    sql: ${IncomeBenefitsID} ;;
  }

  measure: non_hud_othertanf {
    group_label: "NonHUD"
    view_label: "Analysis - Minor"
    label: "Non HUD OtherTANF"
    type: count_distinct

    filters: [
      incomebenefits.OtherTANF: "-0,-1,-99,-NULL,-EMPTY"
    ]

    drill_fields: [incomebenefits_queries_drill_fields*]
    sql: ${IncomeBenefitsID} ;;
  }

  measure: non_hud_pension {
    group_label: "NonHUD"
    view_label: "Analysis - Minor"
    label: "Non HUD Pension"
    type: count_distinct

    filters: [
      incomebenefits.Pension: "-0,-1,-99,-NULL,-EMPTY"
    ]

    drill_fields: [incomebenefits_queries_drill_fields*]
    sql: ${IncomeBenefitsID} ;;
  }

  measure: non_hud_privatedisability {
    group_label: "NonHUD"
    view_label: "Analysis - Minor"
    label: "Non HUD PrivateDisability"
    type: count_distinct

    filters: [
      incomebenefits.PrivateDisability: "-0,-1,-99,-NULL,-EMPTY"
    ]

    drill_fields: [incomebenefits_queries_drill_fields*]
    sql: ${IncomeBenefitsID} ;;
  }

  measure: non_hud_privatepay {
    group_label: "NonHUD"
    view_label: "Analysis - Minor"
    label: "Non HUD PrivatePay"
    type: count_distinct

    filters: [
      incomebenefits.PrivatePay: "-0,-1,-99,-NULL,-EMPTY"
    ]

    drill_fields: [incomebenefits_queries_drill_fields*]
    sql: ${IncomeBenefitsID} ;;
  }

  measure: non_hud_schip {
    group_label: "NonHUD"
    view_label: "Analysis - Minor"
    label: "Non HUD SCHIP"
    type: count_distinct

    filters: [
      incomebenefits.SCHIP: "-0,-1,-99,-NULL,-EMPTY"
    ]

    drill_fields: [incomebenefits_queries_drill_fields*]
    sql: ${IncomeBenefitsID} ;;
  }

  measure: non_hud_snap {
    group_label: "NonHUD"
    view_label: "Analysis - Minor"
    label: "Non HUD SNAP"
    type: count_distinct

    filters: [
      incomebenefits.SNAP: "-0,-1,-99,-NULL,-EMPTY"
    ]

    drill_fields: [incomebenefits_queries_drill_fields*]
    sql: ${IncomeBenefitsID} ;;
  }

  measure: non_hud_socsecretirement {
    group_label: "NonHUD"
    view_label: "Analysis - Minor"
    label: "Non HUD SocSecRetirement"
    type: count_distinct

    filters: [
      incomebenefits.SocSecRetirement: "-0,-1,-99,-NULL,-EMPTY"
    ]

    drill_fields: [incomebenefits_queries_drill_fields*]
    sql: ${IncomeBenefitsID} ;;
  }

  measure: non_hud_ssdi {
    group_label: "NonHUD"
    view_label: "Analysis - Minor"
    label: "Non HUD SSDI"
    type: count_distinct

    filters: [
      incomebenefits.SSDI: "-0,-1,-99,-NULL,-EMPTY"
    ]

    drill_fields: [incomebenefits_queries_drill_fields*]
    sql: ${IncomeBenefitsID} ;;
  }

  measure: non_hud_ssi {
    group_label: "NonHUD"
    view_label: "Analysis - Minor"
    label: "Non HUD SSI"
    type: count_distinct

    filters: [
      incomebenefits.SSI: "-0,-1,-99,-NULL,-EMPTY"
    ]

    drill_fields: [incomebenefits_queries_drill_fields*]
    sql: ${IncomeBenefitsID} ;;
  }

  measure: non_hud_statehealthins {
    group_label: "NonHUD"
    view_label: "Analysis - Minor"
    label: "Non HUD StateHealthIns"
    type: count_distinct

    filters: [
      incomebenefits.StateHealthIns: "-0,-1,-99,-NULL,-EMPTY"
    ]

    drill_fields: [incomebenefits_queries_drill_fields*]
    sql: ${IncomeBenefitsID} ;;
  }

  measure: non_hud_tanf {
    group_label: "NonHUD"
    view_label: "Analysis - Minor"
    label: "Non HUD TANF"
    type: count_distinct

    filters: [
      incomebenefits.TANF: "-0,-1,-99,-NULL,-EMPTY"
    ]

    drill_fields: [incomebenefits_queries_drill_fields*]
    sql: ${IncomeBenefitsID} ;;
  }

  measure: non_hud_tanfchildcare {
    group_label: "NonHUD"
    view_label: "Analysis - Minor"
    label: "Non HUD TANFChildCare"
    type: count_distinct

    filters: [
      incomebenefits.TANFChildCare: "-0,-1,-99,-NULL,-EMPTY"
    ]

    drill_fields: [incomebenefits_queries_drill_fields*]
    sql: ${IncomeBenefitsID} ;;
  }

  measure: non_hud_tanftransportation {
    group_label: "NonHUD"
    view_label: "Analysis - Minor"
    label: "Non HUD TANFTransportation"
    type: count_distinct

    filters: [
      incomebenefits.TANFTransportation: "-0,-1,-99,-NULL,-EMPTY"
    ]

    drill_fields: [incomebenefits_queries_drill_fields*]
    sql: ${IncomeBenefitsID} ;;
  }

  measure: non_hud_unemployment {
    group_label: "NonHUD"
    view_label: "Analysis - Minor"
    label: "Non HUD Unemployment"
    type: count_distinct

    filters: [
      incomebenefits.Unemployment: "-0,-1,-99,-NULL,-EMPTY"
    ]

    drill_fields: [incomebenefits_queries_drill_fields*]
    sql: ${IncomeBenefitsID} ;;
  }

  measure: non_hud_vadisabilitynonservice {
    group_label: "NonHUD"
    view_label: "Analysis - Minor"
    label: "Non HUD VADisabilityNonService"
    type: count_distinct

    filters: [
      incomebenefits.VADisabilityNonService: "-0,-1,-99,-NULL,-EMPTY"
    ]

    drill_fields: [incomebenefits_queries_drill_fields*]
    sql: ${IncomeBenefitsID} ;;
  }

  measure: non_hud_vadisabilityservice {
    group_label: "NonHUD"
    view_label: "Analysis - Minor"
    label: "Non HUD VADisabilityService"
    type: count_distinct

    filters: [
      incomebenefits.VADisabilityService: "-0,-1,-99,-NULL,-EMPTY"
    ]

    drill_fields: [incomebenefits_queries_drill_fields*]
    sql: ${IncomeBenefitsID} ;;
  }

  measure: non_hud_vamedicalservices {
    group_label: "NonHUD"
    view_label: "Analysis - Minor"
    label: "Non HUD VAMedicalServices"
    type: count_distinct

    filters: [
      incomebenefits.VAMedicalServices: "-0,-1,-99,-NULL,-EMPTY"
    ]

    drill_fields: [incomebenefits_queries_drill_fields*]
    sql: ${IncomeBenefitsID} ;;
  }

  measure: non_hud_wic {
    group_label: "NonHUD"
    view_label: "Analysis - Minor"
    label: "Non HUD WIC"
    type: count_distinct

    filters: [
      incomebenefits.WIC: "-0,-1,-99,-NULL,-EMPTY"
    ]

    drill_fields: [incomebenefits_queries_drill_fields*]
    sql: ${IncomeBenefitsID} ;;
  }

  measure: non_hud_workerscomp {
    group_label: "NonHUD"
    view_label: "Analysis - Minor"
    label: "Non HUD WorkersComp"
    type: count_distinct

    filters: [
      incomebenefits.WorkersComp: "-0,-1,-99,-NULL,-EMPTY"
    ]

    drill_fields: [incomebenefits_queries_drill_fields*]
    sql: ${IncomeBenefitsID} ;;
  }

  measure: null_datacollectionstage {
    group_label: "Null"
    view_label: "Analysis - Major"
    label: "Null DataCollectionStage"
    type: count_distinct

    filters: [
      incomebenefits.DataCollectionStage: "NULL,EMPTY"
    ]

    drill_fields: [incomebenefits_queries_drill_fields*]
    sql: ${IncomeBenefitsID} ;;
  }

  measure: null_datecreated {
    group_label: "Null"
    view_label: "Analysis - Major"
    label: "Null DateCreated"
    type: count_distinct

    filters: [
      incomebenefits.DateCreated: "NULL,EMPTY"
    ]

    drill_fields: [incomebenefits_queries_drill_fields*]
    sql: ${IncomeBenefitsID} ;;
  }

  measure: null_dateupdated {
    group_label: "Null"
    view_label: "Analysis - Major"
    label: "Null DateUpdated"
    type: count_distinct

    filters: [
      incomebenefits.DateUpdated: "NULL,EMPTY"
    ]

    drill_fields: [incomebenefits_queries_drill_fields*]
    sql: ${IncomeBenefitsID} ;;
  }

  measure: null_enrollmentid {
    group_label: "Null"
    view_label: "Analysis - Major"
    label: "Null EnrollmentID"
    type: count_distinct

    filters: [
      incomebenefits.EnrollmentID: "NULL,EMPTY"
    ]

    drill_fields: [incomebenefits_queries_drill_fields*]
    sql: ${IncomeBenefitsID} ;;
  }

  measure: null_exportid {
    group_label: "Null"
    view_label: "Analysis - Dq"
    label: "Null ExportID"
    type: count_distinct

    filters: [
      incomebenefits.ExportID: "NULL,EMPTY"
    ]

    drill_fields: [incomebenefits_queries_drill_fields*]
    sql: ${IncomeBenefitsID} ;;
  }

  measure: null_incomebenefitsid {
    group_label: "Null"
    view_label: "Analysis - Major"
    label: "Null IncomeBenefitsID"
    type: count_distinct

    filters: [
      incomebenefits.IncomeBenefitsID: "NULL,EMPTY"
    ]

    drill_fields: [incomebenefits_queries_drill_fields*]
    sql: ${IncomeBenefitsID} ;;
  }

  measure: null_informationdate {
    group_label: "Null"
    view_label: "Analysis - Major"
    label: "Null InformationDate"
    type: count_distinct

    filters: [
      incomebenefits.InformationDate: "NULL,EMPTY"
    ]

    drill_fields: [incomebenefits_queries_drill_fields*]
    sql: ${IncomeBenefitsID} ;;
  }

  measure: null_personalid {
    group_label: "Null"
    view_label: "Analysis - Major"
    label: "Null PersonalID"
    type: count_distinct

    filters: [
      incomebenefits.PersonalID: "NULL,EMPTY"
    ]

    drill_fields: [incomebenefits_queries_drill_fields*]
    sql: ${IncomeBenefitsID} ;;
  }

  measure: null_userid {
    group_label: "Null"
    view_label: "Analysis - Dq"
    label: "Null UserID"
    type: count_distinct

    filters: [
      incomebenefits.UserID: "NULL,EMPTY"
    ]

    drill_fields: [incomebenefits_queries_drill_fields*]
    sql: ${IncomeBenefitsID} ;;
  }

  measure: incomebenefits_records_with_yes_for_incomefromanysource_and_a_non_zero_non_empty_value_for_totalmonthlyincome_but_none_of_the_income_types_are_set_to_yes {
    group_label: "IncomeBenefits"
    view_label: "Analysis - Minor"
    label: "IncomeBenefits records with 'Yes' for IncomeFromAnySource and a non-zero, non-empty value for TotalMonthlyIncome, but none of the income types are set to 'Yes'"
    type: count_distinct

    filters: [
      incomebenefits.IncomeFromAnySource: "1",
      incomebenefits.TotalMonthlyIncome: "-0,-0.00,-NULL,-EMPTY",
      incomebenefits.bool_no_income_type_is_1: "yes",
    ]

    drill_fields: [incomebenefits_queries_drill_fields*]
    sql: ${IncomeBenefitsID} ;;
  }

  measure: incomebenefits_records_with_yes_for_incomefromanysource_but_totalmonthlyincome_is_0_or_null_and_the_sum_of_all_of_the_income_amounts_is_0 {
    group_label: "IncomeBenefits"
    view_label: "Analysis - Minor"
    label: "IncomeBenefits records with 'Yes' for IncomeFromAnySource but TotalMonthlyIncome is $0.00 or NULL and the sum of all of the income amounts is $0.00"
    type: count_distinct

    filters: [
      incomebenefits.IncomeFromAnySource: "1",
      incomebenefits.TotalMonthlyIncome: "0.00,NULL,EMPTY",
      incomebenefits.IncomeAmountSum: "0,0.00"
    ]

    drill_fields: [incomebenefits_queries_drill_fields*]
    sql: ${IncomeBenefitsID} ;;
  }

  measure: incomebenefits_records_where_incomefromanysource_is_not_yes_but_at_least_one_of_the_income_types_is_set_to_yes {
    group_label: "IncomeBenefits"
    view_label: "Analysis - Minor"
    label: "IncomeBenefits records where IncomeFromAnySource is not 'Yes' but at least one of the income types is set to 'Yes'"
    type: count_distinct

    filters: [
      incomebenefits.IncomeFromAnySource: "-1",
      incomebenefits.bool_at_least_one_income_type_is_1: "yes",
    ]

    drill_fields: [incomebenefits_queries_drill_fields*]
    sql: ${IncomeBenefitsID} ;;
  }

  measure: incomebenefits_records_where_incomefromanysource_is_not_no_but_all_income_types_are_set_to_no {
    group_label: "IncomeBenefits"
    view_label: "Analysis - Minor"
    label: "IncomeBenefits records where IncomeFromAnySource is not 'No' but all income types are set to 'No'"
    type: count_distinct

    filters: [
      incomebenefits.IncomeFromAnySource: "-0",
      incomebenefits.bool_all_income_types_are_0: "yes",
    ]

    drill_fields: [incomebenefits_queries_drill_fields*]
    sql: ${IncomeBenefitsID} ;;
  }

  measure: incomebenefits_records_with_yes_for_earned_income_but_earnedamount_is_0_or_null {
    group_label: "IncomeBenefits"
    view_label: "Analysis - Minor"
    label: "IncomeBenefits records with 'Yes' for Earned income but EarnedAmount is $0.00 or NULL"
    type: count_distinct

    filters: [
      incomebenefits.Earned: "1",
      incomebenefits.EarnedAmount: "0,0.00,NULL,EMPTY"
    ]

    drill_fields: [incomebenefits_queries_drill_fields*]
    sql: ${IncomeBenefitsID} ;;
  }

  measure: incomebenefits_records_with_yes_for_unemployment_income_but_unemploymentamount_is_0_or_null {
    group_label: "IncomeBenefits"
    view_label: "Analysis - Minor"
    label: "IncomeBenefits records with 'Yes' for Unemployment income but UnemploymentAmount is $0.00 or NULL"
    type: count_distinct

    filters: [
      incomebenefits.Unemployment: "1",
      incomebenefits.UnemploymentAmount: "0,0.00,NULL,EMPTY"
    ]

    drill_fields: [incomebenefits_queries_drill_fields*]
    sql: ${IncomeBenefitsID} ;;
  }

  measure: incomebenefits_records_with_yes_for_ssi_income_but_ssiamount_is_0_or_null {
    group_label: "IncomeBenefits"
    view_label: "Analysis - Minor"
    label: "IncomeBenefits records with 'Yes' for SSI income but SSIAmount is $0.00 or NULL"
    type: count_distinct

    filters: [
      incomebenefits.SSI: "1",
      incomebenefits.SSIAmount: "0,0.00,NULL,EMPTY"
    ]

    drill_fields: [incomebenefits_queries_drill_fields*]
    sql: ${IncomeBenefitsID} ;;
  }

  measure: incomebenefits_records_with_yes_for_ssdi_income_but_ssdiamount_is_0_or_null {
    group_label: "IncomeBenefits"
    view_label: "Analysis - Minor"
    label: "IncomeBenefits records with 'Yes' for SSDI income but SSDIAmount is $0.00 or NULL"
    type: count_distinct

    filters: [
      incomebenefits.SSDI: "1",
      incomebenefits.SSDIAmount: "0,0.00,NULL,EMPTY"
    ]

    drill_fields: [incomebenefits_queries_drill_fields*]
    sql: ${IncomeBenefitsID} ;;
  }

  measure: incomebenefits_records_with_yes_for_vadisabilityservice_income_but_vadisabilityserviceamount_is_0_or_null {
    group_label: "IncomeBenefits"
    view_label: "Analysis - Minor"
    label: "IncomeBenefits records with 'Yes' for VADisabilityService income but VADisabilityServiceAmount is $0.00 or NULL"
    type: count_distinct

    filters: [
      incomebenefits.VADisabilityService: "1",
      incomebenefits.VADisabilityServiceAmount: "0,0.00,NULL,EMPTY"
    ]

    drill_fields: [incomebenefits_queries_drill_fields*]
    sql: ${IncomeBenefitsID} ;;
  }

  measure: incomebenefits_records_with_yes_for_vadisabilitynonservice_income_but_vadisabilitynonserviceamount_is_0_or_null {
    group_label: "IncomeBenefits"
    view_label: "Analysis - Minor"
    label: "IncomeBenefits records with 'Yes' for VADisabilityNonService income but VADisabilityNonServiceAmount is $0.00 or NULL"
    type: count_distinct

    filters: [
      incomebenefits.VADisabilityNonService: "1",
      incomebenefits.VADisabilityNonServiceAmount: "0,0.00,NULL,EMPTY"
    ]

    drill_fields: [incomebenefits_queries_drill_fields*]
    sql: ${IncomeBenefitsID} ;;
  }

  measure: incomebenefits_records_with_yes_for_privatedisability_income_but_privatedisabilityamount_is_0_or_null {
    group_label: "IncomeBenefits"
    view_label: "Analysis - Minor"
    label: "IncomeBenefits records with 'Yes' for PrivateDisability income but PrivateDisabilityAmount is $0.00 or NULL"
    type: count_distinct

    filters: [
      incomebenefits.PrivateDisability: "1",
      incomebenefits.PrivateDisabilityAmount: "0,0.00,NULL,EMPTY"
    ]

    drill_fields: [incomebenefits_queries_drill_fields*]
    sql: ${IncomeBenefitsID} ;;
  }

  measure: incomebenefits_records_with_yes_for_workerscomp_income_but_workerscompamount_is_0_or_null {
    group_label: "IncomeBenefits"
    view_label: "Analysis - Minor"
    label: "IncomeBenefits records with 'Yes' for WorkersComp income but WorkersCompAmount is $0.00 or NULL"
    type: count_distinct

    filters: [
      incomebenefits.WorkersComp: "1",
      incomebenefits.WorkersCompAmount: "0,0.00,NULL,EMPTY"
    ]

    drill_fields: [incomebenefits_queries_drill_fields*]
    sql: ${IncomeBenefitsID} ;;
  }

  measure: incomebenefits_records_with_yes_for_tanf_income_but_tanfamount_is_0_or_null {
    group_label: "IncomeBenefits"
    view_label: "Analysis - Minor"
    label: "IncomeBenefits records with 'Yes' for TANF income but TANFAmount is $0.00 or NULL"
    type: count_distinct

    filters: [
      incomebenefits.TANF: "1",
      incomebenefits.TANFAmount: "0,0.00,NULL,EMPTY"
    ]

    drill_fields: [incomebenefits_queries_drill_fields*]
    sql: ${IncomeBenefitsID} ;;
  }

  measure: incomebenefits_records_with_yes_for_ga_income_but_gaamount_is_0_or_null {
    group_label: "IncomeBenefits"
    view_label: "Analysis - Minor"
    label: "IncomeBenefits records with 'Yes' for GA income but GAAmount is $0.00 or NULL"
    type: count_distinct

    filters: [
      incomebenefits.GA: "1",
      incomebenefits.GAAmount: "0,0.00,NULL,EMPTY"
    ]

    drill_fields: [incomebenefits_queries_drill_fields*]
    sql: ${IncomeBenefitsID} ;;
  }

  measure: incomebenefits_records_with_yes_for_socsecretirement_income_but_socsecretirementamount_is_0_or_null {
    group_label: "IncomeBenefits"
    view_label: "Analysis - Minor"
    label: "IncomeBenefits records with 'Yes' for SocSecRetirement income but SocSecRetirementAmount is $0.00 or NULL"
    type: count_distinct

    filters: [
      incomebenefits.SocSecRetirement: "1",
      incomebenefits.SocSecRetirementAmount: "0,0.00,NULL,EMPTY"
    ]

    drill_fields: [incomebenefits_queries_drill_fields*]
    sql: ${IncomeBenefitsID} ;;
  }

  measure: incomebenefits_records_with_yes_for_pension_income_but_pensionamount_is_0_or_null {
    group_label: "IncomeBenefits"
    view_label: "Analysis - Minor"
    label: "IncomeBenefits records with 'Yes' for Pension income but PensionAmount is $0.00 or NULL"
    type: count_distinct

    filters: [
      incomebenefits.Pension: "1",
      incomebenefits.PensionAmount: "0,0.00,NULL,EMPTY"
    ]

    drill_fields: [incomebenefits_queries_drill_fields*]
    sql: ${IncomeBenefitsID} ;;
  }

  measure: incomebenefits_records_with_yes_for_childsupport_income_but_childsupportamount_is_0_or_null {
    group_label: "IncomeBenefits"
    view_label: "Analysis - Minor"
    label: "IncomeBenefits records with 'Yes' for ChildSupport income but ChildSupportAmount is $0.00 or NULL"
    type: count_distinct

    filters: [
      incomebenefits.ChildSupport: "1",
      incomebenefits.ChildSupportAmount: "0,0.00,NULL,EMPTY"
    ]

    drill_fields: [incomebenefits_queries_drill_fields*]
    sql: ${IncomeBenefitsID} ;;
  }

  measure: incomebenefits_records_with_yes_for_alimony_income_but_alimonyamount_is_0_or_null {
    group_label: "IncomeBenefits"
    view_label: "Analysis - Minor"
    label: "IncomeBenefits records with 'Yes' for Alimony income but AlimonyAmount is $0.00 or NULL"
    type: count_distinct

    filters: [
      incomebenefits.Alimony: "1",
      incomebenefits.AlimonyAmount: "0,0.00,NULL,EMPTY"
    ]

    drill_fields: [incomebenefits_queries_drill_fields*]
    sql: ${IncomeBenefitsID} ;;
  }

  measure: incomebenefits_records_with_yes_for_otherincomesource_income_but_otherincomesourceamount_is_0_or_null {
    group_label: "IncomeBenefits"
    view_label: "Analysis - Minor"
    label: "IncomeBenefits records with 'Yes' for OtherIncomeSource income but OtherIncomeSourceAmount is $0.00 or NULL"
    type: count_distinct

    filters: [
      incomebenefits.OtherIncomeSource: "1",
      incomebenefits.OtherIncomeAmount: "0,0.00,NULL,EMPTY"
    ]

    drill_fields: [incomebenefits_queries_drill_fields*]
    sql: ${IncomeBenefitsID} ;;
  }

  measure: incomebenefits_records_with_yes_for_benefitsfromanysource_but_none_of_the_benefit_types_are_set_to_yes {
    group_label: "IncomeBenefits"
    view_label: "Analysis - Minor"
    label: "IncomeBenefits records with 'Yes' for BenefitsFromAnySource but none of the benefit types are set to 'Yes'"
    type: count_distinct

    filters: [
      incomebenefits.BenefitsFromAnySource: "1",
      incomebenefits.bool_no_benefit_type_is_1: "yes",
    ]

    drill_fields: [incomebenefits_queries_drill_fields*]
    sql: ${IncomeBenefitsID} ;;
  }

  measure: incomebenefits_records_where_benefitsfromanysource_is_not_yes_but_at_least_one_of_the_benefit_types_is_set_to_yes {
    group_label: "IncomeBenefits"
    view_label: "Analysis - Minor"
    label: "IncomeBenefits records where BenefitsFromAnySource is not 'Yes' but at least one of the benefit types is set to 'Yes'"
    type: count_distinct

    filters: [
      incomebenefits.BenefitsFromAnySource: "-1",
      incomebenefits.bool_at_least_one_benefit_type_is_1: "yes",
    ]

    drill_fields: [incomebenefits_queries_drill_fields*]
    sql: ${IncomeBenefitsID} ;;
  }

  measure: incomebenefits_records_where_benefitsfromanysource_is_not_no_but_all_benefit_types_are_set_to_no {
    group_label: "IncomeBenefits"
    view_label: "Analysis - Minor"
    label: "IncomeBenefits records where BenefitsFromAnySource is not 'No' but all benefit types are set to 'No'"
    type: count_distinct

    filters: [
      incomebenefits.BenefitsFromAnySource: "-0",
      incomebenefits.bool_all_benefit_types_are_0: "yes",
    ]

    drill_fields: [incomebenefits_queries_drill_fields*]
    sql: ${IncomeBenefitsID} ;;
  }

  measure: incomebenefits_records_with_yes_for_insurancefromanysource_but_none_of_the_insurance_types_are_set_to_yes {
    group_label: "IncomeBenefits"
    view_label: "Analysis - Minor"
    label: "IncomeBenefits records with 'Yes' for InsuranceFromAnySource but none of the insurance types are set to 'Yes'"
    type: count_distinct

    filters: [
      incomebenefits.InsuranceFromAnySource: "1",
      incomebenefits.bool_no_insurance_type_is_1: "yes",
    ]

    drill_fields: [incomebenefits_queries_drill_fields*]
    sql: ${IncomeBenefitsID} ;;
  }

  measure: incomebenefits_records_where_insurancefromanysource_is_not_yes_but_at_least_one_of_the_insurance_types_is_set_to_yes {
    group_label: "IncomeBenefits"
    view_label: "Analysis - Minor"
    label: "IncomeBenefits records where InsuranceFromAnySource is not 'Yes' but at least one of the insurance types is set to 'Yes'"
    type: count_distinct

    filters: [
      incomebenefits.InsuranceFromAnySource: "-1",
      incomebenefits.bool_at_least_one_insurance_type_is_1: "yes",
    ]

    drill_fields: [incomebenefits_queries_drill_fields*]
    sql: ${IncomeBenefitsID} ;;
  }

  measure: incomebenefits_records_where_insurancefromanysource_is_not_no_but_all_insurance_types_are_set_to_no {
    group_label: "IncomeBenefits"
    view_label: "Analysis - Minor"
    label: "IncomeBenefits records where InsuranceFromAnySource is not 'No' but all insurance types are set to 'No'"
    type: count_distinct

    filters: [
      incomebenefits.InsuranceFromAnySource: "-0",
      incomebenefits.bool_all_insurance_types_are_0: "yes",
    ]

    drill_fields: [incomebenefits_queries_drill_fields*]
    sql: ${IncomeBenefitsID} ;;
  }

  measure: invalid_date_formatting_for_informationdate_in_incomebenefits_csv {
    group_label: "DateFormatting"
    view_label: "Analysis - Major"
    label: "Invalid Date Formatting for InformationDate in IncomeBenefits.csv"
    type: count_distinct

    filters: [
      incomebenefits.InformationDate: "-____-__-__"
    ]

    drill_fields: [incomebenefits_queries_drill_fields*]
    sql: ${IncomeBenefitsID} ;;
  }

  measure: invalid_date_formatting_for_datecreated_in_incomebenefits_csv {
    group_label: "DateFormatting"
    view_label: "Analysis - Major"
    label: "Invalid Date Formatting for DateCreated in IncomeBenefits.csv"
    type: count_distinct

    filters: [
      incomebenefits.DateCreated: "-____-__-__ __:__:__"
    ]

    drill_fields: [incomebenefits_queries_drill_fields*]
    sql: ${IncomeBenefitsID} ;;
  }

  measure: invalid_date_formatting_for_dateupdated_in_incomebenefits_csv {
    group_label: "DateFormatting"
    view_label: "Analysis - Major"
    label: "Invalid Date Formatting for DateUpdated in IncomeBenefits.csv"
    type: count_distinct

    filters: [
      incomebenefits.DateUpdated: "-____-__-__ __:__:__"
    ]

    drill_fields: [incomebenefits_queries_drill_fields*]
    sql: ${IncomeBenefitsID} ;;
  }

  measure: total_major_null_values {
    group_label: "Null"
    view_label: "Analysis - Major"
    label: "Total Major Null Values"
    type: number

    drill_fields: [
      null_datacollectionstage,
      null_datecreated,
      null_dateupdated,
      null_enrollmentid,
      null_incomebenefitsid,
      null_informationdate,
      null_personalid
    ]
    sql:  ${null_datacollectionstage}
          + ${null_datecreated}
          + ${null_dateupdated}
          + ${null_enrollmentid}
          + ${null_incomebenefitsid}
          + ${null_informationdate}
          + ${null_personalid}
      ;;
  }

  measure: total_major_nonhud_values {
    group_label: "NonHUD"
    view_label: "Analysis - Major"
    label: "Total Major NonHUD Values"
    type: number

    drill_fields: [
      non_hud_datacollectionstage
    ]
    sql:  ${non_hud_datacollectionstage}
      ;;
  }

  measure: total_minor_nonhud_values {
    group_label: "NonHUD"
    view_label: "Analysis - Minor"
    label: "Total Minor NonHUD Values for IncomeBenefits.csv"
    type: number

    drill_fields: [
      non_hud_adap,
      non_hud_alimony,
      non_hud_benefitsfromanysource,
      non_hud_childsupport,
      non_hud_cobra,
      non_hud_connectionwithsoar,
      non_hud_earned,
      non_hud_employerprovided,
      non_hud_ga,
      non_hud_hivaidsassistance,
      non_hud_incomefromanysource,
      non_hud_indianhealthservices,
      non_hud_insurancefromanysource,
      non_hud_medicaid,
      non_hud_medicare,
      non_hud_noadapreason,
      non_hud_nocobrareason,
      non_hud_noemployerprovidedreason,
      non_hud_nohivaidsassistancereason,
      non_hud_noindianhealthservicesreason,
      non_hud_nomedicaidreason,
      non_hud_nomedicarereason,
      non_hud_noprivatepayreason,
      non_hud_noschipreason,
      non_hud_nostatehealthinsreason,
      non_hud_novamedreason,
      non_hud_otherbenefitssource,
      non_hud_otherincomesource,
      non_hud_otherinsurance,
      non_hud_othertanf,
      non_hud_pension,
      non_hud_privatedisability,
      non_hud_privatepay,
      non_hud_schip,
      non_hud_snap,
      non_hud_socsecretirement,
      non_hud_ssdi,
      non_hud_ssi,
      non_hud_statehealthins,
      non_hud_tanf,
      non_hud_tanfchildcare,
      non_hud_tanftransportation,
      non_hud_unemployment,
      non_hud_vadisabilitynonservice,
      non_hud_vadisabilityservice,
      non_hud_vamedicalservices,
      non_hud_wic,
      non_hud_workerscomp
    ]
    sql:  ${non_hud_adap}
          + ${non_hud_alimony}
          + ${non_hud_benefitsfromanysource}
          + ${non_hud_childsupport}
          + ${non_hud_cobra}
          + ${non_hud_connectionwithsoar}
          + ${non_hud_earned}
          + ${non_hud_employerprovided}
          + ${non_hud_ga}
          + ${non_hud_hivaidsassistance}
          + ${non_hud_incomefromanysource}
          + ${non_hud_indianhealthservices}
          + ${non_hud_insurancefromanysource}
          + ${non_hud_medicaid}
          + ${non_hud_medicare}
          + ${non_hud_noadapreason}
          + ${non_hud_nocobrareason}
          + ${non_hud_noemployerprovidedreason}
          + ${non_hud_nohivaidsassistancereason}
          + ${non_hud_noindianhealthservicesreason}
          + ${non_hud_nomedicaidreason}
          + ${non_hud_nomedicarereason}
          + ${non_hud_noprivatepayreason}
          + ${non_hud_noschipreason}
          + ${non_hud_nostatehealthinsreason}
          + ${non_hud_novamedreason}
          + ${non_hud_otherbenefitssource}
          + ${non_hud_otherincomesource}
          + ${non_hud_otherinsurance}
          + ${non_hud_othertanf}
          + ${non_hud_pension}
          + ${non_hud_privatedisability}
          + ${non_hud_privatepay}
          + ${non_hud_schip}
          + ${non_hud_snap}
          + ${non_hud_socsecretirement}
          + ${non_hud_ssdi}
          + ${non_hud_ssi}
          + ${non_hud_statehealthins}
          + ${non_hud_tanf}
          + ${non_hud_tanfchildcare}
          + ${non_hud_tanftransportation}
          + ${non_hud_unemployment}
          + ${non_hud_vadisabilitynonservice}
          + ${non_hud_vadisabilityservice}
          + ${non_hud_vamedicalservices}
          + ${non_hud_wic}
          + ${non_hud_workerscomp}
      ;;
  }

  measure: total_date_formatting_values {
    group_label: "DateFormatting"
    view_label: "Analysis - Major"
    label: "Total DateFormatting Values"
    type: number

    drill_fields: [
      invalid_date_formatting_for_informationdate_in_incomebenefits_csv,
      invalid_date_formatting_for_datecreated_in_incomebenefits_csv,
      invalid_date_formatting_for_dateupdated_in_incomebenefits_csv
    ]
    sql:  ${invalid_date_formatting_for_informationdate_in_incomebenefits_csv}
          + ${invalid_date_formatting_for_datecreated_in_incomebenefits_csv}
          + ${invalid_date_formatting_for_dateupdated_in_incomebenefits_csv}
      ;;
  }

  set: incomebenefits_queries_drill_fields {
    fields: [
      incomebenefits.IncomeBenefitsID,
      incomebenefits.EnrollmentID,
      project.ProjectID,
      project.ProjectName
    ]
  }
}
