view: enrollment {
  sql_table_name: enrollment ;;

  measure: count {
    type: count
  }

  dimension: EnrollmentID {
    type: string
    label: "EnrollmentID"
    primary_key: yes
    sql: ${TABLE}.EnrollmentID ;;
  }

  dimension: PersonalID {
    type: string
    label: "PersonalID"
    sql: ${TABLE}.PersonalID ;;
  }

  dimension: ProjectID {
    type: string
    label: "ProjectID"
    sql: ${TABLE}.ProjectID ;;
  }

  dimension: EntryDate {
    label: "EntryDate"
    sql: ${TABLE}.EntryDate ;;
  }

  dimension_group: EntryDateGroup {
    type: time
    label: "EntryDate"
    sql: ${TABLE}.EntryDate ;;
  }

  dimension: HouseholdID {
    type: string
    label: "HouseholdID"
    sql: ${TABLE}.HouseholdID ;;
  }

  dimension: RelationshipToHoH {
    type: string
    label: "RelationshipToHoH"
    sql: ${TABLE}.RelationshipToHoH ;;
  }

  dimension: LivingSituation {
    type: string
    label: "LivingSituation"
    sql: ${TABLE}.LivingSituation ;;
  }

  dimension: LengthOfStay {
    type: string
    label: "LengthOfStay"
    sql: ${TABLE}.LengthOfStay ;;
  }

  dimension: LOSUnderThreshold {
    type: string
    label: "LOSUnderThreshold"
    sql: ${TABLE}.LOSUnderThreshold ;;
  }

  dimension: PreviousStreetESSH {
    type: string
    label: "PreviousStreetESSH"
    sql: ${TABLE}.PreviousStreetESSH ;;
  }

  dimension: DateToStreetESSH {
    type: string
    label: "DateToStreetESSH"
    sql: ${TABLE}.DateToStreetESSH ;;
  }

  dimension: TimesHomelessPastThreeYears {
    type: string
    label: "TimesHomelessPastThreeYears"
    sql: ${TABLE}.TimesHomelessPastThreeYears ;;
  }

  dimension: MonthsHomelessPastThreeYears {
    type: string
    label: "MonthsHomelessPastThreeYears"
    sql: ${TABLE}.MonthsHomelessPastThreeYears ;;
  }

  dimension: DisablingCondition {
    type: string
    label: "DisablingCondition"
    sql: ${TABLE}.DisablingCondition ;;
  }

  dimension: DateOfEngagement {
    type: string
    label: "DateOfEngagement"
    sql: ${TABLE}.DateOfEngagement ;;
  }

  dimension: MoveInDate {
    type: string
    label: "MoveInDate"
    sql: ${TABLE}.MoveInDate ;;
  }

  dimension: DateOfPATHStatus {
    type: string
    label: "DateOfPATHStatus"
    sql: ${TABLE}.DateOfPATHStatus ;;
  }

  dimension: ClientEnrolledInPATH {
    type: string
    label: "ClientEnrolledInPATH"
    sql: ${TABLE}.ClientEnrolledInPATH ;;
  }

  dimension: ReasonNotEnrolled {
    type: string
    label: "ReasonNotEnrolled"
    sql: ${TABLE}.ReasonNotEnrolled ;;
  }

  dimension: WorstHousingSituation {
    type: string
    label: "WorstHousingSituation"
    sql: ${TABLE}.WorstHousingSituation ;;
  }

  dimension: PercentAMI {
    type: string
    label: "PercentAMI"
    sql: ${TABLE}.PercentAMI ;;
  }

  dimension: LastPermanentStreet {
    type: string
    label: "LastPermanentStreet"
    sql: ${TABLE}.LastPermanentStreet ;;
  }

  dimension: LastPermanentCity {
    type: string
    label: "LastPermanentCity"
    sql: ${TABLE}.LastPermanentCity ;;
  }

  dimension: LastPermanentState {
    type: string
    label: "LastPermanentState"
    sql: ${TABLE}.LastPermanentState ;;
  }

  dimension: LastPermanentZIP {
    type: string
    label: "LastPermanentZIP"
    sql: ${TABLE}.LastPermanentZIP ;;
  }

  dimension: AddressDataQuality {
    type: string
    label: "AddressDataQuality"
    sql: ${TABLE}.AddressDataQuality ;;
  }

  dimension: DateOfBCPStatus {
    type: string
    label: "DateOfBCPStatus"
    sql: ${TABLE}.DateOfBCPStatus ;;
  }

  dimension: EligibleForRHY {
    type: string
    label: "EligibleForRHY"
    sql: ${TABLE}.EligibleForRHY ;;
  }

  dimension: ReasonNoServices {
    type: string
    label: "ReasonNoServices"
    sql: ${TABLE}.ReasonNoServices ;;
  }

  dimension: RunawayYouth {
    type: string
    label: "RunawayYouth"
    sql: ${TABLE}.RunawayYouth ;;
  }

  dimension: SexualOrientation {
    type: string
    label: "SexualOrientation"
    sql: ${TABLE}.SexualOrientation ;;
  }

  dimension: SexualOrientationOther {
    type: string
    label: "SexualOrientationOther"
    sql: ${TABLE}.SexualOrientationOther ;;
  }

  dimension: FormerWardChildWelfare {
    type: string
    label: "FormerWardChildWelfare"
    sql: ${TABLE}.FormerWardChildWelfare ;;
  }

  dimension: ChildWelfareYears {
    type: string
    label: "ChildWelfareYears"
    sql: ${TABLE}.ChildWelfareYears ;;
  }

  dimension: ChildWelfareMonths {
    type: string
    label: "ChildWelfareMonths"
    sql: ${TABLE}.ChildWelfareMonths ;;
  }

  dimension: FormerWardJuvenileJustice {
    type: string
    label: "FormerWardJuvenileJustice"
    sql: ${TABLE}.FormerWardJuvenileJustice ;;
  }

  dimension: JuvenileJusticeYears {
    type: string
    label: "JuvenileJusticeYears"
    sql: ${TABLE}.JuvenileJusticeYears ;;
  }

  dimension: JuvenileJusticeMonths {
    type: string
    label: "JuvenileJusticeMonths"
    sql: ${TABLE}.JuvenileJusticeMonths ;;
  }

  dimension: UnemploymentFam {
    type: string
    label: "UnemploymentFam"
    sql: ${TABLE}.UnemploymentFam ;;
  }

  dimension: MentalHealthIssuesFam {
    type: string
    label: "MentalHealthIssuesFam"
    sql: ${TABLE}.MentalHealthIssuesFam ;;
  }

  dimension: PhysicalDisabilityFam {
    type: string
    label: "PhysicalDisabilityFam"
    sql: ${TABLE}.PhysicalDisabilityFam ;;
  }

  dimension: AlcoholDrugAbuseFam {
    type: string
    label: "AlcoholDrugAbuseFam"
    sql: ${TABLE}.AlcoholDrugAbuseFam ;;
  }

  dimension: InsufficientIncome {
    type: string
    label: "InsufficientIncome"
    sql: ${TABLE}.InsufficientIncome ;;
  }

  dimension: IncarceratedParent {
    type: string
    label: "IncarceratedParent"
    sql: ${TABLE}.IncarceratedParent ;;
  }

  dimension: ReferralSource {
    type: string
    label: "ReferralSource"
    sql: ${TABLE}.ReferralSource ;;
  }

  dimension: CountOutreachReferralApproaches {
    type: string
    label: "CountOutreachReferralApproaches"
    sql: ${TABLE}.CountOutreachReferralApproaches ;;
  }

  dimension: UrgentReferral {
    type: string
    label: "UrgentReferral"
    sql: ${TABLE}.UrgentReferral ;;
  }

  dimension: TimeToHousingLoss {
    type: string
    label: "TimeToHousingLoss"
    sql: ${TABLE}.TimeToHousingLoss ;;
  }

  dimension: ZeroIncome {
    type: string
    label: "ZeroIncome"
    sql: ${TABLE}.ZeroIncome ;;
  }

  dimension: AnnualPercentAMI {
    type: string
    label: "AnnualPercentAMI"
    sql: ${TABLE}.AnnualPercentAMI ;;
  }

  dimension: FinancialChange {
    type: string
    label: "FinancialChange"
    sql: ${TABLE}.FinancialChange ;;
  }

  dimension: HouseholdChange {
    type: string
    label: "HouseholdChange"
    sql: ${TABLE}.HouseholdChange ;;
  }

  dimension: EvictionHistory {
    type: string
    label: "EvictionHistory"
    sql: ${TABLE}.EvictionHistory ;;
  }

  dimension: SubsidyAtRisk {
    type: string
    label: "SubsidyAtRisk"
    sql: ${TABLE}.SubsidyAtRisk ;;
  }

  dimension: LiteralHomelessHistory {
    type: string
    label: "LiteralHomelessHistory"
    sql: ${TABLE}.LiteralHomelessHistory ;;
  }

  dimension: DisabledHoH {
    type: string
    label: "DisabledHoH"
    sql: ${TABLE}.DisabledHoH ;;
  }

  dimension: CriminalRecord {
    type: string
    label: "CriminalRecord"
    sql: ${TABLE}.CriminalRecord ;;
  }

  dimension: SexOffender {
    type: string
    label: "SexOffender"
    sql: ${TABLE}.SexOffender ;;
  }

  dimension: DependentUnder6 {
    type: string
    label: "DependentUnder6"
    sql: ${TABLE}.DependentUnder6 ;;
  }

  dimension: SingleParent {
    type: string
    label: "SingleParent"
    sql: ${TABLE}.SingleParent ;;
  }

  dimension: HH5Plus {
    type: string
    label: "HH5Plus"
    sql: ${TABLE}.HH5Plus ;;
  }

  dimension: IraqAfghanistan {
    type: string
    label: "IraqAfghanistan"
    sql: ${TABLE}.IraqAfghanistan ;;
  }

  dimension: FemVet {
    type: string
    label: "FemVet"
    sql: ${TABLE}.FemVet ;;
  }

  dimension: HPScreeningScore {
    type: string
    label: "HPScreeningScore"
    sql: ${TABLE}.HPScreeningScore ;;
  }

  dimension: ThresholdScore {
    type: string
    label: "ThresholdScore"
    sql: ${TABLE}.ThresholdScore ;;
  }

  dimension: VAMCStation {
    type: string
    label: "VAMCStation"
    sql: ${TABLE}.VAMCStation ;;
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

  measure: count_distinct_clients {
    type:  count_distinct
    sql: ${client.PersonalID} ;;
  }

  measure: count_distinct_households {
    type:  count_distinct
    sql: ${TABLE}.HouseholdID ;;
  }
}
