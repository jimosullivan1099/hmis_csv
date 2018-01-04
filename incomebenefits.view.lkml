view: incomebenefits {
  sql_table_name: incomebenefits ;;

  dimension: ADAP {
    type: string
    sql: ${TABLE}.ADAP ;;
  }

  dimension: Alimony {
    type: string
    sql: ${TABLE}.Alimony ;;
  }

  dimension: AlimonyAmount {
    type: string
    sql: ${TABLE}.AlimonyAmount ;;
  }

  dimension: BenefitsFromAnySource {
    type: string
    sql: ${TABLE}.BenefitsFromAnySource ;;
  }

  dimension: ChildSupport {
    type: string
    sql: ${TABLE}.ChildSupport ;;
  }

  dimension: ChildSupportAmount {
    type: string
    sql: ${TABLE}.ChildSupportAmount ;;
  }

  dimension: COBRA {
    type: string
    sql: ${TABLE}.COBRA ;;
  }

  dimension: ConnectionWithSOAR {
    type: string
    sql: ${TABLE}.ConnectionWithSOAR ;;
  }

  dimension: DataCollectionStage {
    type: string
    sql: ${TABLE}.DataCollectionStage ;;
  }

  dimension: DateCreated {
    type: string
    sql: ${TABLE}.DateCreated ;;
  }

  dimension: DateDeleted {
    type: string
    sql: ${TABLE}.DateDeleted ;;
  }

  dimension: DateUpdated {
    type: string
    sql: ${TABLE}.DateUpdated ;;
  }

  dimension: Earned {
    type: string
    sql: ${TABLE}.Earned ;;
  }

  dimension: EarnedAmount {
    type: string
    sql: ${TABLE}.EarnedAmount ;;
  }

  dimension: EmployerProvided {
    type: string
    sql: ${TABLE}.EmployerProvided ;;
  }

  dimension: ExportID {
    type: string
    # hidden: yes
    sql: ${TABLE}.ExportID ;;
  }

  dimension: GA {
    type: string
    sql: ${TABLE}.GA ;;
  }

  dimension: GAAmount {
    type: string
    sql: ${TABLE}.GAAmount ;;
  }

  dimension: HIVAIDSAssistance {
    type: string
    sql: ${TABLE}.HIVAIDSAssistance ;;
  }

  dimension: IncomeBenefitsID {
    primary_key: yes
    type: string
    sql: ${TABLE}.IncomeBenefitsID ;;
  }

  dimension: IncomeFromAnySource {
    type: string
    sql: ${TABLE}.IncomeFromAnySource ;;
  }

  dimension: IndianHealthServices {
    type: string
    sql: ${TABLE}.IndianHealthServices ;;
  }

  dimension: InformationDate {
    type: string
    sql: ${TABLE}.InformationDate ;;
  }

  dimension: InsuranceFromAnySource {
    type: string
    sql: ${TABLE}.InsuranceFromAnySource ;;
  }

  dimension: Medicaid {
    type: string
    sql: ${TABLE}.Medicaid ;;
  }

  dimension: Medicare {
    type: string
    sql: ${TABLE}.Medicare ;;
  }

  dimension: NoADAPReason {
    type: string
    sql: ${TABLE}.NoADAPReason ;;
  }

  dimension: NoCOBRAReason {
    type: string
    sql: ${TABLE}.NoCOBRAReason ;;
  }

  dimension: NoEmployerProvidedReason {
    type: string
    sql: ${TABLE}.NoEmployerProvidedReason ;;
  }

  dimension: NoHIVAIDSAssistanceReason {
    type: string
    sql: ${TABLE}.NoHIVAIDSAssistanceReason ;;
  }

  dimension: NoIndianHealthServicesReason {
    type: string
    sql: ${TABLE}.NoIndianHealthServicesReason ;;
  }

  dimension: NoMedicaidReason {
    type: string
    sql: ${TABLE}.NoMedicaidReason ;;
  }

  dimension: NoMedicareReason {
    type: string
    sql: ${TABLE}.NoMedicareReason ;;
  }

  dimension: NoPrivatePayReason {
    type: string
    sql: ${TABLE}.NoPrivatePayReason ;;
  }

  dimension: NoSCHIPReason {
    type: string
    sql: ${TABLE}.NoSCHIPReason ;;
  }

  dimension: NoStateHealthInsReason {
    type: string
    sql: ${TABLE}.NoStateHealthInsReason ;;
  }

  dimension: NoVAMedReason {
    type: string
    sql: ${TABLE}.NoVAMedReason ;;
  }

  dimension: OtherBenefitsSource {
    type: string
    sql: ${TABLE}.OtherBenefitsSource ;;
  }

  dimension: OtherBenefitsSourceIdentify {
    type: string
    sql: ${TABLE}.OtherBenefitsSourceIdentify ;;
  }

  dimension: OtherIncomeSource {
    type: string
    sql: ${TABLE}.OtherIncomeSource ;;
  }

  dimension: OtherIncomeSourceAmount {
    type: string
    sql: ${TABLE}.OtherIncomeSourceAmount ;;
  }

  dimension: OtherIncomeSourceIdentify {
    type: string
    sql: ${TABLE}.OtherIncomeSourceIdentify ;;
  }

  dimension: OtherInsurance {
    type: string
    sql: ${TABLE}.OtherInsurance ;;
  }

  dimension: OtherInsuranceIdentify {
    type: string
    sql: ${TABLE}.OtherInsuranceIdentify ;;
  }

  dimension: OtherTANF {
    type: string
    sql: ${TABLE}.OtherTANF ;;
  }

  dimension: Pension {
    type: string
    sql: ${TABLE}.Pension ;;
  }

  dimension: PensionAmount {
    type: string
    sql: ${TABLE}.PensionAmount ;;
  }

  dimension: PersonalID {
    type: string
    sql: ${TABLE}.PersonalID ;;
  }

  dimension: PrivateDisability {
    type: string
    sql: ${TABLE}.PrivateDisability ;;
  }

  dimension: PrivateDisabilityAmount {
    type: string
    sql: ${TABLE}.PrivateDisabilityAmount ;;
  }

  dimension: PrivatePay {
    type: string
    sql: ${TABLE}.PrivatePay ;;
  }

  dimension: EnrollmentID {
    type: string
    sql: ${TABLE}.EnrollmentID ;;
  }

  dimension: RentalAssistanceOngoing {
    type: string
    sql: ${TABLE}.RentalAssistanceOngoing ;;
  }

  dimension: RentalAssistanceTemp {
    type: string
    sql: ${TABLE}.RentalAssistanceTemp ;;
  }

  dimension: SCHIP {
    type: string
    sql: ${TABLE}.SCHIP ;;
  }

  dimension: SNAP {
    type: string
    sql: ${TABLE}.SNAP ;;
  }

  dimension: SocSecRetirement {
    type: string
    sql: ${TABLE}.SocSecRetirement ;;
  }

  dimension: SocSecRetirementAmount {
    type: string
    sql: ${TABLE}.SocSecRetirementAmount ;;
  }

  dimension: SSDI {
    type: string
    sql: ${TABLE}.SSDI ;;
  }

  dimension: SSDIAmount {
    type: string
    sql: ${TABLE}.SSDIAmount ;;
  }

  dimension: SSI {
    type: string
    sql: ${TABLE}.SSI ;;
  }

  dimension: SSIAmount {
    type: string
    sql: ${TABLE}.SSIAmount ;;
  }

  dimension: StateHealthIns {
    type: string
    sql: ${TABLE}.StateHealthIns ;;
  }

  dimension: TANF {
    type: string
    sql: ${TABLE}.TANF ;;
  }

  dimension: TANFAmount {
    type: string
    sql: ${TABLE}.TANFAmount ;;
  }

  dimension: TANFChildCare {
    type: string
    sql: ${TABLE}.TANFChildCare ;;
  }

  dimension: TANFTransportation {
    type: string
    sql: ${TABLE}.TANFTransportation ;;
  }

  dimension: TotalMonthlyIncome {
    type: string
    sql: ${TABLE}.TotalMonthlyIncome ;;
  }

  dimension: Unemployment {
    type: string
    sql: ${TABLE}.Unemployment ;;
  }

  dimension: UnemploymentAmount {
    type: string
    sql: ${TABLE}.UnemploymentAmount ;;
  }

  dimension: UserID {
    type: string
    sql: ${TABLE}.UserID ;;
  }

  dimension: VADisabilityNonService {
    type: string
    sql: ${TABLE}.VADisabilityNonService ;;
  }

  dimension: VADisabilityNonServiceAmount {
    type: string
    sql: ${TABLE}.VADisabilityNonServiceAmount ;;
  }

  dimension: VADisabilityService {
    type: string
    sql: ${TABLE}.VADisabilityService ;;
  }

  dimension: VADisabilityServiceAmount {
    type: string
    sql: ${TABLE}.VADisabilityServiceAmount ;;
  }

  dimension: VAMedicalServices {
    type: string
    sql: ${TABLE}.VAMedicalServices ;;
  }

  dimension: WIC {
    type: string
    sql: ${TABLE}.WIC ;;
  }

  dimension: WorkersComp {
    type: string
    sql: ${TABLE}.WorkersComp ;;
  }

  dimension: WorkersCompAmount {
    type: string
    sql: ${TABLE}.WorkersCompAmount ;;
  }

  measure: count {
    type: count
  }
}
