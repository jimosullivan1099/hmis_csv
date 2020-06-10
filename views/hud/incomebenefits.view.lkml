view: incomebenefits {
  sql_table_name: incomebenefits ;;

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

  dimension: IncomeAmountSum {
    type: number
    label: "IncomeAmountSum"
    sql:
      CAST(${TABLE}.EarnedAmount AS DECIMAL(12,2))
      + CAST(${TABLE}.UnemploymentAmount AS DECIMAL(12,2))
      + CAST(${TABLE}.SSIAmount AS DECIMAL(12,2))
      + CAST(${TABLE}.SSDIAmount AS DECIMAL(12,2))
      + CAST(${TABLE}.VADisabilityServiceAmount AS DECIMAL(12,2))
      + CAST(${TABLE}.VADisabilityNonServiceAmount AS DECIMAL(12,2))
      + CAST(${TABLE}.PrivateDisabilityAmount AS DECIMAL(12,2))
      + CAST(${TABLE}.WorkersCompAmount AS DECIMAL(12,2))
      + CAST(${TABLE}.TANFAmount AS DECIMAL(12,2))
      + CAST(${TABLE}.GAAmount AS DECIMAL(12,2))
      + CAST(${TABLE}.SocSecRetirementAmount AS DECIMAL(12,2))
      + CAST(${TABLE}.PensionAmount AS DECIMAL(12,2))
      + CAST(${TABLE}.ChildSupportAmount AS DECIMAL(12,2))
      + CAST(${TABLE}.AlimonyAmount AS DECIMAL(12,2))
      + CAST(${TABLE}.OtherIncomeAmount AS DECIMAL(12,2)) ;;
  }

  dimension: BenefitsFromAnySource {
    type: string
    label: "BenefitsFromAnySource"
    sql: ${TABLE}.BenefitsFromAnySource ;;
  }

  dimension: SNAP {
    type: string
    label: "SNAP"
    sql: ${TABLE}.SNAP ;;
  }

  dimension: WIC {
    type: string
    label: "WIC"
    sql: ${TABLE}.WIC ;;
  }

  dimension: TANFChildCare {
    type: string
    label: "TANFChildCare"
    sql: ${TABLE}.TANFChildCare ;;
  }

  dimension: TANFTransportation {
    type: string
    label: "TANFTransportation"
    sql: ${TABLE}.TANFTransportation ;;
  }

  dimension: OtherTANF {
    type: string
    label: "OtherTANF"
    sql: ${TABLE}.OtherTANF ;;
  }

  dimension: OtherBenefitsSource {
    type: string
    label: "OtherBenefitsSource"
    sql: ${TABLE}.OtherBenefitsSource ;;
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

  dimension: Medicaid {
    type: string
    label: "Medicaid"
    sql: ${TABLE}.Medicaid ;;
  }

  dimension: NoMedicaidReason {
    type: string
    label: "NoMedicaidReason"
    sql: ${TABLE}.NoMedicaidReason ;;
  }

  dimension: Medicare {
    type: string
    label: "Medicare"
    sql: ${TABLE}.Medicare ;;
  }

  dimension: NoMedicareReason {
    type: string
    label: "NoMedicareReason"
    sql: ${TABLE}.NoMedicareReason ;;
  }

  dimension: SCHIP {
    type: string
    label: "SCHIP"
    sql: ${TABLE}.SCHIP ;;
  }

  dimension: NoSCHIPReason {
    type: string
    label: "NoSCHIPReason"
    sql: ${TABLE}.NoSCHIPReason ;;
  }

  dimension: VAMedicalServices {
    type: string
    label: "VAMedicalServices"
    sql: ${TABLE}.VAMedicalServices ;;
  }

  dimension: NoVAMedReason {
    type: string
    label: "NoVAMedReason"
    sql: ${TABLE}.NoVAMedReason ;;
  }

  dimension: EmployerProvided {
    type: string
    label: "EmployerProvided"
    sql: ${TABLE}.EmployerProvided ;;
  }

  dimension: NoEmployerProvidedReason {
    type: string
    label: "NoEmployerProvidedReason"
    sql: ${TABLE}.NoEmployerProvidedReason ;;
  }

  dimension: COBRA {
    type: string
    label: "COBRA"
    sql: ${TABLE}.COBRA ;;
  }

  dimension: NoCOBRAReason {
    type: string
    label: "NoCOBRAReason"
    sql: ${TABLE}.NoCOBRAReason ;;
  }

  dimension: PrivatePay {
    type: string
    label: "PrivatePay"
    sql: ${TABLE}.PrivatePay ;;
  }

  dimension: NoPrivatePayReason {
    type: string
    label: "NoPrivatePayReason"
    sql: ${TABLE}.NoPrivatePayReason ;;
  }

  dimension: StateHealthIns {
    type: string
    label: "StateHealthIns"
    sql: ${TABLE}.StateHealthIns ;;
  }

  dimension: NoStateHealthInsReason {
    type: string
    label: "NoStateHealthInsReason"
    sql: ${TABLE}.NoStateHealthInsReason ;;
  }

  dimension: IndianHealthServices {
    type: string
    label: "IndianHealthServices"
    sql: ${TABLE}.IndianHealthServices ;;
  }

  dimension: NoIndianHealthServicesReason {
    type: string
    label: "NoIndianHealthServicesReason"
    sql: ${TABLE}.NoIndianHealthServicesReason ;;
  }

  dimension: OtherInsurance {
    type: string
    label: "OtherInsurance"
    sql: ${TABLE}.OtherInsurance ;;
  }

  dimension: OtherInsuranceIdentify {
    type: string
    label: "OtherInsuranceIdentify"
    sql: ${TABLE}.OtherInsuranceIdentify ;;
  }

  dimension: HIVAIDSAssistance {
    type: string
    label: "HIVAIDSAssistance"
    sql: ${TABLE}.HIVAIDSAssistance ;;
  }

  dimension: NoHIVAIDSAssistanceReason {
    type: string
    label: "NoHIVAIDSAssistanceReason"
    sql: ${TABLE}.NoHIVAIDSAssistanceReason ;;
  }

  dimension: ADAP {
    type: string
    label: "ADAP"
    sql: ${TABLE}.ADAP ;;
  }

  dimension: NoADAPReason {
    type: string
    label: "NoADAPReason"
    sql: ${TABLE}.NoADAPReason ;;
  }

  dimension: ConnectionWithSOAR {
    type: string
    label: "ConnectionWithSOAR"
    sql: ${TABLE}.ConnectionWithSOAR ;;
  }

  dimension: DataCollectionStage {
    type: string
    label: "DataCollectionStage"
    sql: ${TABLE}.DataCollectionStage ;;
  }

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
