view: incomebenefits {
  derived_table: {
    sql:
      SELECT
        t.*,
        (
          SELECT GROUP_CONCAT(ff.name, '_' , CONCAT(lv.value, ':', lv.text ) SEPARATOR '; ')
          FROM ${list_values.SQL_TABLE_NAME} lv INNER JOIN ${file_fields.SQL_TABLE_NAME} ff ON ff.list = lv.list_code
          WHERE ff.filename = 'IncomeBenefits.csv'
        ) AS lookup
      FROM incomebenefits t ;;
    indexes: ["IncomeBenefitsID", "EnrollmentID", "PersonalID"]
    sql_trigger_value: SELECT COUNT(*) FROM incomebenefits ;;
  }

  dimension: lookup {
    type: string
    hidden: yes
    sql: ${TABLE}.lookup ;;
  }

  dimension: IncomeBenefitsID {
    type: string
    label: "IncomeBenefitsID"
    primary_key: yes
    sql: ${TABLE}.IncomeBenefitsID ;;
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

  dimension: IncomeFromAnySource {
    type: string
    label: "IncomeFromAnySource"
    sql: ${TABLE}.IncomeFromAnySource ;;
  }

  dimension: IncomeFromAnySourceText {
    type: string
    label: "IncomeFromAnySourceText"
    sql: CASE WHEN ${TABLE}.IncomeFromAnySource IS NOT NULL AND ${TABLE}.IncomeFromAnySource <> '' THEN SUBSTRING_INDEX(SUBSTRING_INDEX(${TABLE}.lookup, CONCAT('IncomeFromAnySource_', ${TABLE}.IncomeFromAnySource, ':'), -1), ';', 1) END ;;
  }

  dimension: TotalMonthlyIncome {
    type: string
    label: "TotalMonthlyIncome"
    sql: ${TABLE}.TotalMonthlyIncome ;;
  }

  dimension: Earned {
    type: string
    label: "Earned"
    sql: ${TABLE}.Earned ;;
  }

  dimension: EarnedText {
    type: string
    label: "EarnedText"
    sql: CASE WHEN ${TABLE}.Earned IS NOT NULL AND ${TABLE}.Earned <> '' THEN SUBSTRING_INDEX(SUBSTRING_INDEX(${TABLE}.lookup, CONCAT('Earned_', ${TABLE}.Earned, ':'), -1), ';', 1) END ;;
  }

  dimension: EarnedAmount {
    type: string
    label: "EarnedAmount"
    sql: ${TABLE}.EarnedAmount ;;
  }

  dimension: Unemployment {
    type: string
    label: "Unemployment"
    sql: ${TABLE}.Unemployment ;;
  }

  dimension: UnemploymentText {
    type: string
    label: "UnemploymentText"
    sql: CASE WHEN ${TABLE}.Unemployment IS NOT NULL AND ${TABLE}.Unemployment <> '' THEN SUBSTRING_INDEX(SUBSTRING_INDEX(${TABLE}.lookup, CONCAT('Unemployment_', ${TABLE}.Unemployment, ':'), -1), ';', 1) END ;;
  }

  dimension: UnemploymentAmount {
    type: string
    label: "UnemploymentAmount"
    sql: ${TABLE}.UnemploymentAmount ;;
  }

  dimension: SSI {
    type: string
    label: "SSI"
    sql: ${TABLE}.SSI ;;
  }

  dimension: SSIText {
    type: string
    label: "SSIText"
    sql: CASE WHEN ${TABLE}.SSI IS NOT NULL AND ${TABLE}.SSI <> '' THEN SUBSTRING_INDEX(SUBSTRING_INDEX(${TABLE}.lookup, CONCAT('SSI_', ${TABLE}.SSI, ':'), -1), ';', 1) END ;;
  }

  dimension: SSIAmount {
    type: string
    label: "SSIAmount"
    sql: ${TABLE}.SSIAmount ;;
  }

  dimension: SSDI {
    type: string
    label: "SSDI"
    sql: ${TABLE}.SSDI ;;
  }

  dimension: SSDIText {
    type: string
    label: "SSDIText"
    sql: CASE WHEN ${TABLE}.SSDI IS NOT NULL AND ${TABLE}.SSDI <> '' THEN SUBSTRING_INDEX(SUBSTRING_INDEX(${TABLE}.lookup, CONCAT('SSDI_', ${TABLE}.SSDI, ':'), -1), ';', 1) END ;;
  }

  dimension: SSDIAmount {
    type: string
    label: "SSDIAmount"
    sql: ${TABLE}.SSDIAmount ;;
  }

  dimension: VADisabilityService {
    type: string
    label: "VADisabilityService"
    sql: ${TABLE}.VADisabilityService ;;
  }

  dimension: VADisabilityServiceText {
    type: string
    label: "VADisabilityServiceText"
    sql: CASE WHEN ${TABLE}.VADisabilityService IS NOT NULL AND ${TABLE}.VADisabilityService <> '' THEN SUBSTRING_INDEX(SUBSTRING_INDEX(${TABLE}.lookup, CONCAT('VADisabilityService_', ${TABLE}.VADisabilityService, ':'), -1), ';', 1) END ;;
  }

  dimension: VADisabilityServiceAmount {
    type: string
    label: "VADisabilityServiceAmount"
    sql: ${TABLE}.VADisabilityServiceAmount ;;
  }

  dimension: VADisabilityNonService {
    type: string
    label: "VADisabilityNonService"
    sql: ${TABLE}.VADisabilityNonService ;;
  }

  dimension: VADisabilityNonServiceText {
    type: string
    label: "VADisabilityNonServiceText"
    sql: CASE WHEN ${TABLE}.VADisabilityNonService IS NOT NULL AND ${TABLE}.VADisabilityNonService <> '' THEN SUBSTRING_INDEX(SUBSTRING_INDEX(${TABLE}.lookup, CONCAT('VADisabilityNonService_', ${TABLE}.VADisabilityNonService, ':'), -1), ';', 1) END ;;
  }

  dimension: VADisabilityNonServiceAmount {
    type: string
    label: "VADisabilityNonServiceAmount"
    sql: ${TABLE}.VADisabilityNonServiceAmount ;;
  }

  dimension: PrivateDisability {
    type: string
    label: "PrivateDisability"
    sql: ${TABLE}.PrivateDisability ;;
  }

  dimension: PrivateDisabilityText {
    type: string
    label: "PrivateDisabilityText"
    sql: CASE WHEN ${TABLE}.PrivateDisability IS NOT NULL AND ${TABLE}.PrivateDisability <> '' THEN SUBSTRING_INDEX(SUBSTRING_INDEX(${TABLE}.lookup, CONCAT('PrivateDisability_', ${TABLE}.PrivateDisability, ':'), -1), ';', 1) END ;;
  }

  dimension: PrivateDisabilityAmount {
    type: string
    label: "PrivateDisabilityAmount"
    sql: ${TABLE}.PrivateDisabilityAmount ;;
  }

  dimension: WorkersComp {
    type: string
    label: "WorkersComp"
    sql: ${TABLE}.WorkersComp ;;
  }

  dimension: WorkersCompText {
    type: string
    label: "WorkersCompText"
    sql: CASE WHEN ${TABLE}.WorkersComp IS NOT NULL AND ${TABLE}.WorkersComp <> '' THEN SUBSTRING_INDEX(SUBSTRING_INDEX(${TABLE}.lookup, CONCAT('WorkersComp_', ${TABLE}.WorkersComp, ':'), -1), ';', 1) END ;;
  }

  dimension: WorkersCompAmount {
    type: string
    label: "WorkersCompAmount"
    sql: ${TABLE}.WorkersCompAmount ;;
  }

  dimension: TANF {
    type: string
    label: "TANF"
    sql: ${TABLE}.TANF ;;
  }

  dimension: TANFText {
    type: string
    label: "TANFText"
    sql: CASE WHEN ${TABLE}.TANF IS NOT NULL AND ${TABLE}.TANF <> '' THEN SUBSTRING_INDEX(SUBSTRING_INDEX(${TABLE}.lookup, CONCAT('TANF_', ${TABLE}.TANF, ':'), -1), ';', 1) END ;;
  }

  dimension: TANFAmount {
    type: string
    label: "TANFAmount"
    sql: ${TABLE}.TANFAmount ;;
  }

  dimension: GA {
    type: string
    label: "GA"
    sql: ${TABLE}.GA ;;
  }

  dimension: GAText {
    type: string
    label: "GAText"
    sql: CASE WHEN ${TABLE}.GA IS NOT NULL AND ${TABLE}.GA <> '' THEN SUBSTRING_INDEX(SUBSTRING_INDEX(${TABLE}.lookup, CONCAT('GA_', ${TABLE}.GA, ':'), -1), ';', 1) END ;;
  }

  dimension: GAAmount {
    type: string
    label: "GAAmount"
    sql: ${TABLE}.GAAmount ;;
  }

  dimension: SocSecRetirement {
    type: string
    label: "SocSecRetirement"
    sql: ${TABLE}.SocSecRetirement ;;
  }

  dimension: SocSecRetirementText {
    type: string
    label: "SocSecRetirementText"
    sql: CASE WHEN ${TABLE}.SocSecRetirement IS NOT NULL AND ${TABLE}.SocSecRetirement <> '' THEN SUBSTRING_INDEX(SUBSTRING_INDEX(${TABLE}.lookup, CONCAT('SocSecRetirement_', ${TABLE}.SocSecRetirement, ':'), -1), ';', 1) END ;;
  }

  dimension: SocSecRetirementAmount {
    type: string
    label: "SocSecRetirementAmount"
    sql: ${TABLE}.SocSecRetirementAmount ;;
  }

  dimension: Pension {
    type: string
    label: "Pension"
    sql: ${TABLE}.Pension ;;
  }

  dimension: PensionText {
    type: string
    label: "PensionText"
    sql: CASE WHEN ${TABLE}.Pension IS NOT NULL AND ${TABLE}.Pension <> '' THEN SUBSTRING_INDEX(SUBSTRING_INDEX(${TABLE}.lookup, CONCAT('Pension_', ${TABLE}.Pension, ':'), -1), ';', 1) END ;;
  }

  dimension: PensionAmount {
    type: string
    label: "PensionAmount"
    sql: ${TABLE}.PensionAmount ;;
  }

  dimension: ChildSupport {
    type: string
    label: "ChildSupport"
    sql: ${TABLE}.ChildSupport ;;
  }

  dimension: ChildSupportText {
    type: string
    label: "ChildSupportText"
    sql: CASE WHEN ${TABLE}.ChildSupport IS NOT NULL AND ${TABLE}.ChildSupport <> '' THEN SUBSTRING_INDEX(SUBSTRING_INDEX(${TABLE}.lookup, CONCAT('ChildSupport_', ${TABLE}.ChildSupport, ':'), -1), ';', 1) END ;;
  }

  dimension: ChildSupportAmount {
    type: string
    label: "ChildSupportAmount"
    sql: ${TABLE}.ChildSupportAmount ;;
  }

  dimension: Alimony {
    type: string
    label: "Alimony"
    sql: ${TABLE}.Alimony ;;
  }

  dimension: AlimonyText {
    type: string
    label: "AlimonyText"
    sql: CASE WHEN ${TABLE}.Alimony IS NOT NULL AND ${TABLE}.Alimony <> '' THEN SUBSTRING_INDEX(SUBSTRING_INDEX(${TABLE}.lookup, CONCAT('Alimony_', ${TABLE}.Alimony, ':'), -1), ';', 1) END ;;
  }

  dimension: AlimonyAmount {
    type: string
    label: "AlimonyAmount"
    sql: ${TABLE}.AlimonyAmount ;;
  }

  dimension: OtherIncomeSource {
    type: string
    label: "OtherIncomeSource"
    sql: ${TABLE}.OtherIncomeSource ;;
  }

  dimension: OtherIncomeSourceText {
    type: string
    label: "OtherIncomeSourceText"
    sql: CASE WHEN ${TABLE}.OtherIncomeSource IS NOT NULL AND ${TABLE}.OtherIncomeSource <> '' THEN SUBSTRING_INDEX(SUBSTRING_INDEX(${TABLE}.lookup, CONCAT('OtherIncomeSource_', ${TABLE}.OtherIncomeSource, ':'), -1), ';', 1) END ;;
  }

  dimension: OtherIncomeAmount {
    type: string
    label: "OtherIncomeAmount"
    sql: ${TABLE}.OtherIncomeAmount ;;
  }

  dimension: OtherIncomeSourceIdentify {
    type: string
    label: "OtherIncomeSourceIdentify"
    sql: ${TABLE}.OtherIncomeSourceIdentify ;;
  }

  dimension: BenefitsFromAnySource {
    type: string
    label: "BenefitsFromAnySource"
    sql: ${TABLE}.BenefitsFromAnySource ;;
  }

  dimension: BenefitsFromAnySourceText {
    type: string
    label: "BenefitsFromAnySourceText"
    sql: CASE WHEN ${TABLE}.BenefitsFromAnySource IS NOT NULL AND ${TABLE}.BenefitsFromAnySource <> '' THEN SUBSTRING_INDEX(SUBSTRING_INDEX(${TABLE}.lookup, CONCAT('BenefitsFromAnySource_', ${TABLE}.BenefitsFromAnySource, ':'), -1), ';', 1) END ;;
  }

  dimension: SNAP {
    type: string
    label: "SNAP"
    sql: ${TABLE}.SNAP ;;
  }

  dimension: SNAPText {
    type: string
    label: "SNAPText"
    sql: CASE WHEN ${TABLE}.SNAP IS NOT NULL AND ${TABLE}.SNAP <> '' THEN SUBSTRING_INDEX(SUBSTRING_INDEX(${TABLE}.lookup, CONCAT('SNAP_', ${TABLE}.SNAP, ':'), -1), ';', 1) END ;;
  }

  dimension: WIC {
    type: string
    label: "WIC"
    sql: ${TABLE}.WIC ;;
  }

  dimension: WICText {
    type: string
    label: "WICText"
    sql: CASE WHEN ${TABLE}.WIC IS NOT NULL AND ${TABLE}.WIC <> '' THEN SUBSTRING_INDEX(SUBSTRING_INDEX(${TABLE}.lookup, CONCAT('WIC_', ${TABLE}.WIC, ':'), -1), ';', 1) END ;;
  }

  dimension: TANFChildCare {
    type: string
    label: "TANFChildCare"
    sql: ${TABLE}.TANFChildCare ;;
  }

  dimension: TANFChildCareText {
    type: string
    label: "TANFChildCareText"
    sql: CASE WHEN ${TABLE}.TANFChildCare IS NOT NULL AND ${TABLE}.TANFChildCare <> '' THEN SUBSTRING_INDEX(SUBSTRING_INDEX(${TABLE}.lookup, CONCAT('TANFChildCare_', ${TABLE}.TANFChildCare, ':'), -1), ';', 1) END ;;
  }

  dimension: TANFTransportation {
    type: string
    label: "TANFTransportation"
    sql: ${TABLE}.TANFTransportation ;;
  }

  dimension: TANFTransportationText {
    type: string
    label: "TANFTransportationText"
    sql: CASE WHEN ${TABLE}.TANFTransportation IS NOT NULL AND ${TABLE}.TANFTransportation <> '' THEN SUBSTRING_INDEX(SUBSTRING_INDEX(${TABLE}.lookup, CONCAT('TANFTransportation_', ${TABLE}.TANFTransportation, ':'), -1), ';', 1) END ;;
  }

  dimension: OtherTANF {
    type: string
    label: "OtherTANF"
    sql: ${TABLE}.OtherTANF ;;
  }

  dimension: OtherTANFText {
    type: string
    label: "OtherTANFText"
    sql: CASE WHEN ${TABLE}.OtherTANF IS NOT NULL AND ${TABLE}.OtherTANF <> '' THEN SUBSTRING_INDEX(SUBSTRING_INDEX(${TABLE}.lookup, CONCAT('OtherTANF_', ${TABLE}.OtherTANF, ':'), -1), ';', 1) END ;;
  }

  dimension: OtherBenefitsSource {
    type: string
    label: "OtherBenefitsSource"
    sql: ${TABLE}.OtherBenefitsSource ;;
  }

  dimension: OtherBenefitsSourceText {
    type: string
    label: "OtherBenefitsSourceText"
    sql: CASE WHEN ${TABLE}.OtherBenefitsSource IS NOT NULL AND ${TABLE}.OtherBenefitsSource <> '' THEN SUBSTRING_INDEX(SUBSTRING_INDEX(${TABLE}.lookup, CONCAT('OtherBenefitsSource_', ${TABLE}.OtherBenefitsSource, ':'), -1), ';', 1) END ;;
  }

  dimension: OtherBenefitsSourceIdentify {
    type: string
    label: "OtherBenefitsSourceIdentify"
    sql: ${TABLE}.OtherBenefitsSourceIdentify ;;
  }

  dimension: InsuranceFromAnySource {
    type: string
    label: "InsuranceFromAnySource"
    sql: ${TABLE}.InsuranceFromAnySource ;;
  }

  dimension: InsuranceFromAnySourceText {
    type: string
    label: "InsuranceFromAnySourceText"
    sql: CASE WHEN ${TABLE}.InsuranceFromAnySource IS NOT NULL AND ${TABLE}.InsuranceFromAnySource <> '' THEN SUBSTRING_INDEX(SUBSTRING_INDEX(${TABLE}.lookup, CONCAT('InsuranceFromAnySource_', ${TABLE}.InsuranceFromAnySource, ':'), -1), ';', 1) END ;;
  }

  dimension: Medicaid {
    type: string
    label: "Medicaid"
    sql: ${TABLE}.Medicaid ;;
  }

  dimension: MedicaidText {
    type: string
    label: "MedicaidText"
    sql: CASE WHEN ${TABLE}.Medicaid IS NOT NULL AND ${TABLE}.Medicaid <> '' THEN SUBSTRING_INDEX(SUBSTRING_INDEX(${TABLE}.lookup, CONCAT('Medicaid_', ${TABLE}.Medicaid, ':'), -1), ';', 1) END ;;
  }

  dimension: NoMedicaidReason {
    type: string
    label: "NoMedicaidReason"
    sql: ${TABLE}.NoMedicaidReason ;;
  }

  dimension: NoMedicaidReasonText {
    type: string
    label: "NoMedicaidReasonText"
    sql: CASE WHEN ${TABLE}.NoMedicaidReason IS NOT NULL AND ${TABLE}.NoMedicaidReason <> '' THEN SUBSTRING_INDEX(SUBSTRING_INDEX(${TABLE}.lookup, CONCAT('NoMedicaidReason_', ${TABLE}.NoMedicaidReason, ':'), -1), ';', 1) END ;;
  }

  dimension: Medicare {
    type: string
    label: "Medicare"
    sql: ${TABLE}.Medicare ;;
  }

  dimension: MedicareText {
    type: string
    label: "MedicareText"
    sql: CASE WHEN ${TABLE}.Medicare IS NOT NULL AND ${TABLE}.Medicare <> '' THEN SUBSTRING_INDEX(SUBSTRING_INDEX(${TABLE}.lookup, CONCAT('Medicare_', ${TABLE}.Medicare, ':'), -1), ';', 1) END ;;
  }

  dimension: NoMedicareReason {
    type: string
    label: "NoMedicareReason"
    sql: ${TABLE}.NoMedicareReason ;;
  }

  dimension: NoMedicareReasonText {
    type: string
    label: "NoMedicareReasonText"
    sql: CASE WHEN ${TABLE}.NoMedicareReason IS NOT NULL AND ${TABLE}.NoMedicareReason <> '' THEN SUBSTRING_INDEX(SUBSTRING_INDEX(${TABLE}.lookup, CONCAT('NoMedicareReason_', ${TABLE}.NoMedicareReason, ':'), -1), ';', 1) END ;;
  }

  dimension: SCHIP {
    type: string
    label: "SCHIP"
    sql: ${TABLE}.SCHIP ;;
  }

  dimension: SCHIPText {
    type: string
    label: "SCHIPText"
    sql: CASE WHEN ${TABLE}.SCHIP IS NOT NULL AND ${TABLE}.SCHIP <> '' THEN SUBSTRING_INDEX(SUBSTRING_INDEX(${TABLE}.lookup, CONCAT('SCHIP_', ${TABLE}.SCHIP, ':'), -1), ';', 1) END ;;
  }

  dimension: NoSCHIPReason {
    type: string
    label: "NoSCHIPReason"
    sql: ${TABLE}.NoSCHIPReason ;;
  }

  dimension: NoSCHIPReasonText {
    type: string
    label: "NoSCHIPReasonText"
    sql: CASE WHEN ${TABLE}.NoSCHIPReason IS NOT NULL AND ${TABLE}.NoSCHIPReason <> '' THEN SUBSTRING_INDEX(SUBSTRING_INDEX(${TABLE}.lookup, CONCAT('NoSCHIPReason_', ${TABLE}.NoSCHIPReason, ':'), -1), ';', 1) END ;;
  }

  dimension: VAMedicalServices {
    type: string
    label: "VAMedicalServices"
    sql: ${TABLE}.VAMedicalServices ;;
  }

  dimension: VAMedicalServicesText {
    type: string
    label: "VAMedicalServicesText"
    sql: CASE WHEN ${TABLE}.VAMedicalServices IS NOT NULL AND ${TABLE}.VAMedicalServices <> '' THEN SUBSTRING_INDEX(SUBSTRING_INDEX(${TABLE}.lookup, CONCAT('VAMedicalServices_', ${TABLE}.VAMedicalServices, ':'), -1), ';', 1) END ;;
  }

  dimension: NoVAMedReason {
    type: string
    label: "NoVAMedReason"
    sql: ${TABLE}.NoVAMedReason ;;
  }

  dimension: NoVAMedReasonText {
    type: string
    label: "NoVAMedReasonText"
    sql: CASE WHEN ${TABLE}.NoVAMedReason IS NOT NULL AND ${TABLE}.NoVAMedReason <> '' THEN SUBSTRING_INDEX(SUBSTRING_INDEX(${TABLE}.lookup, CONCAT('NoVAMedReason_', ${TABLE}.NoVAMedReason, ':'), -1), ';', 1) END ;;
  }

  dimension: EmployerProvided {
    type: string
    label: "EmployerProvided"
    sql: ${TABLE}.EmployerProvided ;;
  }

  dimension: EmployerProvidedText {
    type: string
    label: "EmployerProvidedText"
    sql: CASE WHEN ${TABLE}.EmployerProvided IS NOT NULL AND ${TABLE}.EmployerProvided <> '' THEN SUBSTRING_INDEX(SUBSTRING_INDEX(${TABLE}.lookup, CONCAT('EmployerProvided_', ${TABLE}.EmployerProvided, ':'), -1), ';', 1) END ;;
  }

  dimension: NoEmployerProvidedReason {
    type: string
    label: "NoEmployerProvidedReason"
    sql: ${TABLE}.NoEmployerProvidedReason ;;
  }

  dimension: NoEmployerProvidedReasonText {
    type: string
    label: "NoEmployerProvidedReasonText"
    sql: CASE WHEN ${TABLE}.NoEmployerProvidedReason IS NOT NULL AND ${TABLE}.NoEmployerProvidedReason <> '' THEN SUBSTRING_INDEX(SUBSTRING_INDEX(${TABLE}.lookup, CONCAT('NoEmployerProvidedReason_', ${TABLE}.NoEmployerProvidedReason, ':'), -1), ';', 1) END ;;
  }

  dimension: COBRA {
    type: string
    label: "COBRA"
    sql: ${TABLE}.COBRA ;;
  }

  dimension: COBRAText {
    type: string
    label: "COBRAText"
    sql: CASE WHEN ${TABLE}.COBRA IS NOT NULL AND ${TABLE}.COBRA <> '' THEN SUBSTRING_INDEX(SUBSTRING_INDEX(${TABLE}.lookup, CONCAT('COBRA_', ${TABLE}.COBRA, ':'), -1), ';', 1) END ;;
  }

  dimension: NoCOBRAReason {
    type: string
    label: "NoCOBRAReason"
    sql: ${TABLE}.NoCOBRAReason ;;
  }

  dimension: NoCOBRAReasonText {
    type: string
    label: "NoCOBRAReasonText"
    sql: CASE WHEN ${TABLE}.NoCOBRAReason IS NOT NULL AND ${TABLE}.NoCOBRAReason <> '' THEN SUBSTRING_INDEX(SUBSTRING_INDEX(${TABLE}.lookup, CONCAT('NoCOBRAReason_', ${TABLE}.NoCOBRAReason, ':'), -1), ';', 1) END ;;
  }

  dimension: PrivatePay {
    type: string
    label: "PrivatePay"
    sql: ${TABLE}.PrivatePay ;;
  }

  dimension: PrivatePayText {
    type: string
    label: "PrivatePayText"
    sql: CASE WHEN ${TABLE}.PrivatePay IS NOT NULL AND ${TABLE}.PrivatePay <> '' THEN SUBSTRING_INDEX(SUBSTRING_INDEX(${TABLE}.lookup, CONCAT('PrivatePay_', ${TABLE}.PrivatePay, ':'), -1), ';', 1) END ;;
  }

  dimension: NoPrivatePayReason {
    type: string
    label: "NoPrivatePayReason"
    sql: ${TABLE}.NoPrivatePayReason ;;
  }

  dimension: NoPrivatePayReasonText {
    type: string
    label: "NoPrivatePayReasonText"
    sql: CASE WHEN ${TABLE}.NoPrivatePayReason IS NOT NULL AND ${TABLE}.NoPrivatePayReason <> '' THEN SUBSTRING_INDEX(SUBSTRING_INDEX(${TABLE}.lookup, CONCAT('NoPrivatePayReason_', ${TABLE}.NoPrivatePayReason, ':'), -1), ';', 1) END ;;
  }

  dimension: StateHealthIns {
    type: string
    label: "StateHealthIns"
    sql: ${TABLE}.StateHealthIns ;;
  }

  dimension: StateHealthInsText {
    type: string
    label: "StateHealthInsText"
    sql: CASE WHEN ${TABLE}.StateHealthIns IS NOT NULL AND ${TABLE}.StateHealthIns <> '' THEN SUBSTRING_INDEX(SUBSTRING_INDEX(${TABLE}.lookup, CONCAT('StateHealthIns_', ${TABLE}.StateHealthIns, ':'), -1), ';', 1) END ;;
  }

  dimension: NoStateHealthInsReason {
    type: string
    label: "NoStateHealthInsReason"
    sql: ${TABLE}.NoStateHealthInsReason ;;
  }

  dimension: NoStateHealthInsReasonText {
    type: string
    label: "NoStateHealthInsReasonText"
    sql: CASE WHEN ${TABLE}.NoStateHealthInsReason IS NOT NULL AND ${TABLE}.NoStateHealthInsReason <> '' THEN SUBSTRING_INDEX(SUBSTRING_INDEX(${TABLE}.lookup, CONCAT('NoStateHealthInsReason_', ${TABLE}.NoStateHealthInsReason, ':'), -1), ';', 1) END ;;
  }

  dimension: IndianHealthServices {
    type: string
    label: "IndianHealthServices"
    sql: ${TABLE}.IndianHealthServices ;;
  }

  dimension: IndianHealthServicesText {
    type: string
    label: "IndianHealthServicesText"
    sql: CASE WHEN ${TABLE}.IndianHealthServices IS NOT NULL AND ${TABLE}.IndianHealthServices <> '' THEN SUBSTRING_INDEX(SUBSTRING_INDEX(${TABLE}.lookup, CONCAT('IndianHealthServices_', ${TABLE}.IndianHealthServices, ':'), -1), ';', 1) END ;;
  }

  dimension: NoIndianHealthServicesReason {
    type: string
    label: "NoIndianHealthServicesReason"
    sql: ${TABLE}.NoIndianHealthServicesReason ;;
  }

  dimension: NoIndianHealthServicesReasonText {
    type: string
    label: "NoIndianHealthServicesReasonText"
    sql: CASE WHEN ${TABLE}.NoIndianHealthServicesReason IS NOT NULL AND ${TABLE}.NoIndianHealthServicesReason <> '' THEN SUBSTRING_INDEX(SUBSTRING_INDEX(${TABLE}.lookup, CONCAT('NoIndianHealthServicesReason_', ${TABLE}.NoIndianHealthServicesReason, ':'), -1), ';', 1) END ;;
  }

  dimension: OtherInsurance {
    type: string
    label: "OtherInsurance"
    sql: ${TABLE}.OtherInsurance ;;
  }

  dimension: OtherInsuranceText {
    type: string
    label: "OtherInsuranceText"
    sql: CASE WHEN ${TABLE}.OtherInsurance IS NOT NULL AND ${TABLE}.OtherInsurance <> '' THEN SUBSTRING_INDEX(SUBSTRING_INDEX(${TABLE}.lookup, CONCAT('OtherInsurance_', ${TABLE}.OtherInsurance, ':'), -1), ';', 1) END ;;
  }

  dimension: OtherInsuranceIdentify {
    type: string
    label: "OtherInsuranceIdentify"
    sql: ${TABLE}.OtherInsuranceIdentify ;;
  }

  dimension: OtherInsuranceIdentifyText {
    type: string
    label: "OtherInsuranceIdentifyText"
    sql: CASE WHEN ${TABLE}.OtherInsuranceIdentify IS NOT NULL AND ${TABLE}.OtherInsuranceIdentify <> '' THEN SUBSTRING_INDEX(SUBSTRING_INDEX(${TABLE}.lookup, CONCAT('OtherInsuranceIdentify_', ${TABLE}.OtherInsuranceIdentify, ':'), -1), ';', 1) END ;;
  }

  dimension: HIVAIDSAssistance {
    type: string
    label: "HIVAIDSAssistance"
    sql: ${TABLE}.HIVAIDSAssistance ;;
  }

  dimension: HIVAIDSAssistanceText {
    type: string
    label: "HIVAIDSAssistanceText"
    sql: CASE WHEN ${TABLE}.HIVAIDSAssistance IS NOT NULL AND ${TABLE}.HIVAIDSAssistance <> '' THEN SUBSTRING_INDEX(SUBSTRING_INDEX(${TABLE}.lookup, CONCAT('HIVAIDSAssistance_', ${TABLE}.HIVAIDSAssistance, ':'), -1), ';', 1) END ;;
  }

  dimension: NoHIVAIDSAssistanceReason {
    type: string
    label: "NoHIVAIDSAssistanceReason"
    sql: ${TABLE}.NoHIVAIDSAssistanceReason ;;
  }

  dimension: NoHIVAIDSAssistanceReasonText {
    type: string
    label: "NoHIVAIDSAssistanceReasonText"
    sql: CASE WHEN ${TABLE}.NoHIVAIDSAssistanceReason IS NOT NULL AND ${TABLE}.NoHIVAIDSAssistanceReason <> '' THEN SUBSTRING_INDEX(SUBSTRING_INDEX(${TABLE}.lookup, CONCAT('NoHIVAIDSAssistanceReason_', ${TABLE}.NoHIVAIDSAssistanceReason, ':'), -1), ';', 1) END ;;
  }

  dimension: ADAP {
    type: string
    label: "ADAP"
    sql: ${TABLE}.ADAP ;;
  }

  dimension: ADAPText {
    type: string
    label: "ADAPText"
    sql: CASE WHEN ${TABLE}.ADAP IS NOT NULL AND ${TABLE}.ADAP <> '' THEN SUBSTRING_INDEX(SUBSTRING_INDEX(${TABLE}.lookup, CONCAT('ADAP_', ${TABLE}.ADAP, ':'), -1), ';', 1) END ;;
  }

  dimension: NoADAPReason {
    type: string
    label: "NoADAPReason"
    sql: ${TABLE}.NoADAPReason ;;
  }

  dimension: NoADAPReasonText {
    type: string
    label: "NoADAPReasonText"
    sql: CASE WHEN ${TABLE}.NoADAPReason IS NOT NULL AND ${TABLE}.NoADAPReason <> '' THEN SUBSTRING_INDEX(SUBSTRING_INDEX(${TABLE}.lookup, CONCAT('NoADAPReason_', ${TABLE}.NoADAPReason, ':'), -1), ';', 1) END ;;
  }

  dimension: ConnectionWithSOAR {
    type: string
    label: "ConnectionWithSOAR"
    sql: ${TABLE}.ConnectionWithSOAR ;;
  }

  dimension: ConnectionWithSOARText {
    type: string
    label: "ConnectionWithSOARText"
    sql: CASE WHEN ${TABLE}.ConnectionWithSOAR IS NOT NULL AND ${TABLE}.ConnectionWithSOAR <> '' THEN SUBSTRING_INDEX(SUBSTRING_INDEX(${TABLE}.lookup, CONCAT('ConnectionWithSOAR_', ${TABLE}.ConnectionWithSOAR, ':'), -1), ';', 1) END ;;
  }

  dimension: DataCollectionStage {
    type: string
    label: "DataCollectionStage"
    sql: ${TABLE}.DataCollectionStage ;;
  }

    # TODO - list 5.3.1 doesn't appear in HMIS CSV specs and needs to be added to database for this to populate
#   dimension: DataCollectionStageText {
#     type: string
#     label: "DataCollectionStageText"
#     sql: CASE WHEN ${TABLE}.DataCollectionStage IS NOT NULL AND ${TABLE}.DataCollectionStage <> '' THEN SUBSTRING_INDEX(SUBSTRING_INDEX(${TABLE}.lookup, CONCAT('DataCollectionStage_', ${TABLE}.DataCollectionStage, ':'), -1), ';', 1) END ;;
#   }

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
