view: enrollment {

  derived_table: {
    sql: SELECT * FROM enrollment ;;
    indexes: ["EnrollmentID", "PersonalID"]
    sql_trigger_value: SELECT COUNT(*) FROM enrollment ;;
  }

  measure: count {
    type: count
  }

  dimension: EnrollmentID {
    type: string
    primary_key: yes
    sql: ${TABLE}.EnrollmentID ;;
  }

  dimension: PersonalID {
    type: string
    sql: ${TABLE}.PersonalID ;;
  }

  dimension: ProjectID {
    type: string
    sql: ${TABLE}.ProjectID ;;
  }

  dimension_group: EntryDate {
    type: time
    sql: ${TABLE}.EntryDate ;;
  }

  dimension: HouseholdID {
    type: string
    sql: ${TABLE}.HouseholdID ;;
  }

  dimension: RelationshipToHoH {
    type: string
    sql: ${TABLE}.RelationshipToHoH ;;
  }

  dimension: ResidencePrior {
    type: string
    sql: ${TABLE}.ResidencePrior ;;
  }

  dimension: OtherResidencePrior {
    type: string
    sql: ${TABLE}.OtherResidencePrior ;;
  }

  dimension: ResidencePriorLengthOfStay {
    type: string
    sql: ${TABLE}.ResidencePriorLengthOfStay ;;
  }

  dimension: DisablingCondition {
    type: string
    sql: ${TABLE}.DisablingCondition ;;
  }

  dimension: EntryFromStreetESSH {
    type: string
    sql: ${TABLE}.EntryFromStreetESSH ;;
  }

  dimension: DateToStreetESSH {
    type: string
    sql: ${TABLE}.DateToStreetESSH ;;
  }

  dimension: TimesHomelessPastThreeYears {
    type: string
    sql: ${TABLE}.TimesHomelessPastThreeYears ;;
  }

  dimension: MonthsHomelessPastThreeYears {
    type: string
    sql: ${TABLE}.MonthsHomelessPastThreeYears ;;
  }

  dimension: HousingStatus {
    type: string
    sql: ${TABLE}.HousingStatus ;;
  }

  dimension: DateOfEngagement {
    type: string
    sql: ${TABLE}.DateOfEngagement ;;
  }

  dimension: InPermanentHousing {
    type: string
    sql: ${TABLE}.InPermanentHousing ;;
  }

  dimension: ResidentialMoveInDate {
    type: string
    sql: ${TABLE}.ResidentialMoveInDate ;;
  }

  dimension: DateOfPATHStatus {
    type: string
    sql: ${TABLE}.DateOfPATHStatus ;;
  }

  dimension: ClientEnrolledInPATH {
    type: string
    sql: ${TABLE}.ClientEnrolledInPATH ;;
  }

  dimension: ReasonNotEnrolled {
    type: string
    sql: ${TABLE}.ReasonNotEnrolled ;;
  }

  dimension: WorstHousingSituation {
    type: string
    sql: ${TABLE}.WorstHousingSituation ;;
  }

  dimension: PercentAMI {
    type: string
    sql: ${TABLE}.PercentAMI ;;
  }

  dimension: LastPermanentStreet {
    type: string
    sql: ${TABLE}.LastPermanentStreet ;;
  }

  dimension: LastPermanentCity {
    type: string
    sql: ${TABLE}.LastPermanentCity ;;
  }

  dimension: LastPermanentState {
    type: string
    sql: ${TABLE}.LastPermanentState ;;
  }

  dimension: LastPermanentZIP {
    type: string
    sql: ${TABLE}.LastPermanentZIP ;;
  }

  dimension: AddressDataQuality {
    type: string
    sql: ${TABLE}.AddressDataQuality ;;
  }

  dimension: DateOfBCPStatus {
    type: string
    sql: ${TABLE}.DateOfBCPStatus ;;
  }

  dimension: FYSBYouth {
    type: string
    sql: ${TABLE}.FYSBYouth ;;
  }

  dimension: ReasonNoServices {
    type: string
    sql: ${TABLE}.ReasonNoServices ;;
  }

  dimension: SexualOrientation {
    type: string
    sql: ${TABLE}.SexualOrientation ;;
  }

  dimension: FormerWardChildWelfare {
    type: string
    sql: ${TABLE}.FormerWardChildWelfare ;;
  }

  dimension: ChildWelfareYears {
    type: string
    sql: ${TABLE}.ChildWelfareYears ;;
  }

  dimension: ChildWelfareMonths {
    type: string
    sql: ${TABLE}.ChildWelfareMonths ;;
  }

  dimension: FormerWardJuvenileJustice {
    type: string
    sql: ${TABLE}.FormerWardJuvenileJustice ;;
  }

  dimension: JuvenileJusticeYears {
    type: string
    sql: ${TABLE}.JuvenileJusticeYears ;;
  }

  dimension: JuvenileJusticeMonths {
    type: string
    sql: ${TABLE}.JuvenileJusticeMonths ;;
  }

  dimension: HouseholdDynamics {
    type: string
    sql: ${TABLE}.HouseholdDynamics ;;
  }

  dimension: SexualOrientationGenderIDYouth {
    type: string
    sql: ${TABLE}.SexualOrientationGenderIDYouth ;;
  }

  dimension: SexualOrientationGenderIDFam {
    type: string
    sql: ${TABLE}.SexualOrientationGenderIDFam ;;
  }

  dimension: HousingIssuesYouth {
    type: string
    sql: ${TABLE}.HousingIssuesYouth ;;
  }

  dimension: HousingIssuesFam {
    type: string
    sql: ${TABLE}.HousingIssuesFam ;;
  }

  dimension: SchoolEducationalIssuesYouth {
    type: string
    sql: ${TABLE}.SchoolEducationalIssuesYouth ;;
  }

  dimension: SchoolEducationalIssuesFam {
    type: string
    sql: ${TABLE}.SchoolEducationalIssuesFam ;;
  }

  dimension: UnemploymentYouth {
    type: string
    sql: ${TABLE}.UnemploymentYouth ;;
  }

  dimension: UnemploymentFam {
    type: string
    sql: ${TABLE}.UnemploymentFam ;;
  }

  dimension: MentalHealthIssuesYouth {
    type: string
    sql: ${TABLE}.MentalHealthIssuesYouth ;;
  }

  dimension: MentalHealthIssuesFam {
    type: string
    sql: ${TABLE}.MentalHealthIssuesFam ;;
  }

  dimension: HealthIssuesYouth {
    type: string
    sql: ${TABLE}.HealthIssuesYouth ;;
  }

  dimension: HealthIssuesFam {
    type: string
    sql: ${TABLE}.HealthIssuesFam ;;
  }

  dimension: PhysicalDisabilityYouth {
    type: string
    sql: ${TABLE}.PhysicalDisabilityYouth ;;
  }

  dimension: PhysicalDisabilityFam {
    type: string
    sql: ${TABLE}.PhysicalDisabilityFam ;;
  }

  dimension: MentalDisabilityYouth {
    type: string
    sql: ${TABLE}.MentalDisabilityYouth ;;
  }

  dimension: MentalDisabilityFam {
    type: string
    sql: ${TABLE}.MentalDisabilityFam ;;
  }

  dimension: AbuseAndNeglectYouth {
    type: string
    sql: ${TABLE}.AbuseAndNeglectYouth ;;
  }

  dimension: AbuseAndNeglectFam {
    type: string
    sql: ${TABLE}.AbuseAndNeglectFam ;;
  }

  dimension: AlcoholDrugAbuseYouth {
    type: string
    sql: ${TABLE}.AlcoholDrugAbuseYouth ;;
  }

  dimension: AlcoholDrugAbuseFam {
    type: string
    sql: ${TABLE}.AlcoholDrugAbuseFam ;;
  }

  dimension: InsufficientIncome {
    type: string
    sql: ${TABLE}.InsufficientIncome ;;
  }

  dimension: ActiveMilitaryParent {
    type: string
    sql: ${TABLE}.ActiveMilitaryParent ;;
  }

  dimension: IncarceratedParent {
    type: string
    sql: ${TABLE}.IncarceratedParent ;;
  }

  dimension: IncarceratedParentStatus {
    type: string
    sql: ${TABLE}.IncarceratedParentStatus ;;
  }

  dimension: ReferralSource {
    type: string
    sql: ${TABLE}.ReferralSource ;;
  }

  dimension: CountOutreachReferralApproaches {
    type: string
    sql: ${TABLE}.CountOutreachReferralApproaches ;;
  }

  dimension: ExchangeForSex {
    type: string
    sql: ${TABLE}.ExchangeForSex ;;
  }

  dimension: ExchangeForSexPastThreeMonths {
    type: string
    sql: ${TABLE}.ExchangeForSexPastThreeMonths ;;
  }

  dimension: CountOfExchangeForSex {
    type: string
    sql: ${TABLE}.CountOfExchangeForSex ;;
  }

  dimension: AskedOrForcedToExchangeForSex {
    type: string
    sql: ${TABLE}.AskedOrForcedToExchangeForSex ;;
  }

  dimension: AskedOrForcedToExchangeForSexPastThreeMonths {
    type: string
    sql: ${TABLE}.AskedOrForcedToExchangeForSexPastThreeMonths ;;
  }

  dimension: WorkPlaceViolenceThreats {
    type: string
    sql: ${TABLE}.WorkPlaceViolenceThreats ;;
  }

  dimension: WorkplacePromiseDifference {
    type: string
    sql: ${TABLE}.WorkplacePromiseDifference ;;
  }

  dimension: CoercedToContinueWork {
    type: string
    sql: ${TABLE}.CoercedToContinueWork ;;
  }

  dimension: LaborExploitPastThreeMonths {
    type: string
    sql: ${TABLE}.LaborExploitPastThreeMonths ;;
  }

  dimension: HPScreeningScore {
    type: string
    sql: ${TABLE}.HPScreeningScore ;;
  }

  dimension: VAMCStation {
    type: string
    sql: ${TABLE}.VAMCStation ;;
  }

  dimension: LivingSituation {
    type: string
    sql: ${TABLE}.LivingSituation ;;
  }

  dimension: LengthOfStay {
    type: string
    sql: ${TABLE}.LengthOfStay ;;
  }

  dimension: LOSUnderThreshold {
    type: string
    sql: ${TABLE}.LOSUnderThreshold ;;
  }

  dimension: PreviousStreetESSH {
    type: string
    sql: ${TABLE}.PreviousStreetESSH ;;
  }

  dimension: MoveInDate {
    type: string
    sql: ${TABLE}.MoveInDate ;;
  }

  dimension: EligibleForRHY {
    type: string
    sql: ${TABLE}.EligibleForRHY ;;
  }

  dimension: RunawayYouth {
    type: string
    sql: ${TABLE}.RunawayYouth ;;
  }

  dimension: UrgentReferral {
    type: string
    sql: ${TABLE}.UrgentReferral ;;
  }

  dimension: TimeToHousingLoss {
    type: string
    sql: ${TABLE}.TimeToHousingLoss ;;
  }

  dimension: ZeroIncome {
    type: string
    sql: ${TABLE}.ZeroIncome ;;
  }

  dimension: AnnualPercentAMI {
    type: string
    sql: ${TABLE}.AnnualPercentAMI ;;
  }

  dimension: FinancialChange {
    type: string
    sql: ${TABLE}.FinancialChange ;;
  }

  dimension: HouseholdChange {
    type: string
    sql: ${TABLE}.HouseholdChange ;;
  }

  dimension: EvictionHistory {
    type: string
    sql: ${TABLE}.EvictionHistory ;;
  }

  dimension: SubsidyAtRisk {
    type: string
    sql: ${TABLE}.SubsidyAtRisk ;;
  }

  dimension: LiteralHomelessHistory {
    type: string
    sql: ${TABLE}.LiteralHomelessHistory ;;
  }

  dimension: DisabledHoH {
    type: string
    sql: ${TABLE}.DisabledHoH ;;
  }

  dimension: CriminalRecord {
    type: string
    sql: ${TABLE}.CriminalRecord ;;
  }

  dimension: SexOffender {
    type: string
    sql: ${TABLE}.SexOffender ;;
  }

  dimension: DependentUnder6 {
    type: string
    sql: ${TABLE}.DependentUnder6 ;;
  }

  dimension: SingleParent {
    type: string
    sql: ${TABLE}.SingleParent ;;
  }

  dimension: HH5Plus {
    type: string
    sql: ${TABLE}.HH5Plus ;;
  }

  dimension: IraqAfghanistan {
    type: string
    sql: ${TABLE}.IraqAfghanistan ;;
  }

  dimension: FemVet {
    type: string
    sql: ${TABLE}.FemVet ;;
  }

  dimension: ThresholdScore {
    type: string
    sql: ${TABLE}.ThresholdScore ;;
  }

  dimension_group: DateCreated {
    type: time
    sql: ${TABLE}.DateCreated ;;
  }

  dimension_group: DateUpdated {
    type: time
    sql: ${TABLE}.DateUpdated ;;
  }

  dimension: UserID {
    type: string
    sql: ${TABLE}.UserID ;;
  }

  dimension: DateDeleted {
    type: string
    sql: ${TABLE}.DateDeleted ;;
  }

  dimension: ExportID {
    type: string
    sql: ${TABLE}.ExportID ;;
  }

  measure: count_distinct_clients {
    type:  count_distinct
    sql: ${client.PersonalID};;
  }
}
