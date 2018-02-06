view: enrollment {

  derived_table: {
    sql:
      SELECT
        t.*,
        (
          SELECT GROUP_CONCAT(ff.name, '_' , CONCAT(lv.value, ':', lv.text ) SEPARATOR '; ')
          FROM ${list_values.SQL_TABLE_NAME} lv INNER JOIN ${file_fields.SQL_TABLE_NAME} ff ON ff.list = lv.list_code
          WHERE ff.filename = 'Enrollment.csv'
        ) AS lookup
      FROM enrollment t ;;
    indexes: ["EnrollmentID", "PersonalID"]
    sql_trigger_value: SELECT COUNT(*) FROM enrollment ;;
  }

  measure: count {
    type: count
  }

  dimension: lookup {
    type: string
    hidden: yes
    sql: ${TABLE}.lookup ;;
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
    type: string
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

  dimension: RelationshipToHoHText {
    type: string
    label: "RelationshipToHoHText"
    sql: CASE WHEN ${TABLE}.RelationshipToHoH IS NOT NULL AND ${TABLE}.RelationshipToHoH <> '' THEN SUBSTRING_INDEX(SUBSTRING_INDEX(${TABLE}.lookup, CONCAT('RelationshipToHoH_', ${TABLE}.RelationshipToHoH, ':'), -1), ';', 1) END ;;
  }

  dimension: LivingSituation {
    type: string
    label: "LivingSituation"
    sql: ${TABLE}.LivingSituation ;;
  }

  dimension: LivingSituationText {
    type: string
    label: "LivingSituationText"
    sql: CASE WHEN ${TABLE}.LivingSituation IS NOT NULL AND ${TABLE}.LivingSituation <> '' THEN SUBSTRING_INDEX(SUBSTRING_INDEX(${TABLE}.lookup, CONCAT('LivingSituation_', ${TABLE}.LivingSituation, ':'), -1), ';', 1) END ;;
  }

  dimension: LengthOfStay {
    type: string
    label: "LengthOfStay"
    sql: ${TABLE}.LengthOfStay ;;
  }

  dimension: LengthOfStayText {
    type: string
    label: "LengthOfStayText"
    sql: CASE WHEN ${TABLE}.LengthOfStay IS NOT NULL AND ${TABLE}.LengthOfStay <> '' THEN SUBSTRING_INDEX(SUBSTRING_INDEX(${TABLE}.lookup, CONCAT('LengthOfStay_', ${TABLE}.LengthOfStay, ':'), -1), ';', 1) END ;;
  }

  dimension: LOSUnderThreshold {
    type: string
    label: "LOSUnderThreshold"
    sql: ${TABLE}.LOSUnderThreshold ;;
  }

  dimension: LOSUnderThresholdText {
    type: string
    label: "LOSUnderThresholdText"
    sql: CASE WHEN ${TABLE}.LOSUnderThreshold IS NOT NULL AND ${TABLE}.LOSUnderThreshold <> '' THEN SUBSTRING_INDEX(SUBSTRING_INDEX(${TABLE}.lookup, CONCAT('LOSUnderThreshold_', ${TABLE}.LOSUnderThreshold, ':'), -1), ';', 1) END ;;
  }

  dimension: PreviousStreetESSH {
    type: string
    label: "PreviousStreetESSH"
    sql: ${TABLE}.PreviousStreetESSH ;;
  }

  dimension: PreviousStreetESSHText {
    type: string
    label: "PreviousStreetESSHText"
    sql: CASE WHEN ${TABLE}.PreviousStreetESSH IS NOT NULL AND ${TABLE}.PreviousStreetESSH <> '' THEN SUBSTRING_INDEX(SUBSTRING_INDEX(${TABLE}.lookup, CONCAT('PreviousStreetESSH_', ${TABLE}.PreviousStreetESSH, ':'), -1), ';', 1) END ;;
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

  dimension: TimesHomelessPastThreeYearsText {
    type: string
    label: "TimesHomelessPastThreeYearsText"
    sql: CASE WHEN ${TABLE}.TimesHomelessPastThreeYears IS NOT NULL AND ${TABLE}.TimesHomelessPastThreeYears <> '' THEN SUBSTRING_INDEX(SUBSTRING_INDEX(${TABLE}.lookup, CONCAT('TimesHomelessPastThreeYears_', ${TABLE}.TimesHomelessPastThreeYears, ':'), -1), ';', 1) END ;;
  }

  dimension: MonthsHomelessPastThreeYears {
    type: string
    label: "MonthsHomelessPastThreeYears"
    sql: ${TABLE}.MonthsHomelessPastThreeYears ;;
  }

  dimension: MonthsHomelessPastThreeYearsText {
    type: string
    label: "MonthsHomelessPastThreeYearsText"
    sql: CASE WHEN ${TABLE}.MonthsHomelessPastThreeYears IS NOT NULL AND ${TABLE}.MonthsHomelessPastThreeYears <> '' THEN SUBSTRING_INDEX(SUBSTRING_INDEX(${TABLE}.lookup, CONCAT('MonthsHomelessPastThreeYears_', ${TABLE}.MonthsHomelessPastThreeYears, ':'), -1), ';', 1) END ;;
  }

  dimension: DisablingCondition {
    type: string
    label: "DisablingCondition"
    sql: ${TABLE}.DisablingCondition ;;
  }

  dimension: DisablingConditionText {
    type: string
    label: "DisablingConditionText"
    sql: CASE WHEN ${TABLE}.DisablingCondition IS NOT NULL AND ${TABLE}.DisablingCondition <> '' THEN SUBSTRING_INDEX(SUBSTRING_INDEX(${TABLE}.lookup, CONCAT('DisablingCondition_', ${TABLE}.DisablingCondition, ':'), -1), ';', 1) END ;;
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

  dimension: ClientEnrolledInPATHText {
    type: string
    label: "ClientEnrolledInPATHText"
    sql: CASE WHEN ${TABLE}.ClientEnrolledInPATH IS NOT NULL AND ${TABLE}.ClientEnrolledInPATH <> '' THEN SUBSTRING_INDEX(SUBSTRING_INDEX(${TABLE}.lookup, CONCAT('ClientEnrolledInPATH_', ${TABLE}.ClientEnrolledInPATH, ':'), -1), ';', 1) END ;;
  }

  dimension: ReasonNotEnrolled {
    type: string
    label: "ReasonNotEnrolled"
    sql: ${TABLE}.ReasonNotEnrolled ;;
  }

  dimension: ReasonNotEnrolledText {
    type: string
    label: "ReasonNotEnrolledText"
    sql: CASE WHEN ${TABLE}.ReasonNotEnrolled IS NOT NULL AND ${TABLE}.ReasonNotEnrolled <> '' THEN SUBSTRING_INDEX(SUBSTRING_INDEX(${TABLE}.lookup, CONCAT('ReasonNotEnrolled_', ${TABLE}.ReasonNotEnrolled, ':'), -1), ';', 1) END ;;
  }

  dimension: WorstHousingSituation {
    type: string
    label: "WorstHousingSituation"
    sql: ${TABLE}.WorstHousingSituation ;;
  }

  dimension: WorstHousingSituationText {
    type: string
    label: "WorstHousingSituationText"
    sql: CASE WHEN ${TABLE}.WorstHousingSituation IS NOT NULL AND ${TABLE}.WorstHousingSituation <> '' THEN SUBSTRING_INDEX(SUBSTRING_INDEX(${TABLE}.lookup, CONCAT('WorstHousingSituation_', ${TABLE}.WorstHousingSituation, ':'), -1), ';', 1) END ;;
  }

  dimension: PercentAMI {
    type: string
    label: "PercentAMI"
    sql: ${TABLE}.PercentAMI ;;
  }

  dimension: PercentAMIText {
    type: string
    label: "PercentAMIText"
    sql: CASE WHEN ${TABLE}.PercentAMI IS NOT NULL AND ${TABLE}.PercentAMI <> '' THEN SUBSTRING_INDEX(SUBSTRING_INDEX(${TABLE}.lookup, CONCAT('PercentAMI_', ${TABLE}.PercentAMI, ':'), -1), ';', 1) END ;;
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

  dimension: AddressDataQualityText {
    type: string
    label: "AddressDataQualityText"
    sql: CASE WHEN ${TABLE}.AddressDataQuality IS NOT NULL AND ${TABLE}.AddressDataQuality <> '' THEN SUBSTRING_INDEX(SUBSTRING_INDEX(${TABLE}.lookup, CONCAT('AddressDataQuality_', ${TABLE}.AddressDataQuality, ':'), -1), ';', 1) END ;;
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

  dimension: EligibleForRHYText {
    type: string
    label: "EligibleForRHYText"
    sql: CASE WHEN ${TABLE}.EligibleForRHY IS NOT NULL AND ${TABLE}.EligibleForRHY <> '' THEN SUBSTRING_INDEX(SUBSTRING_INDEX(${TABLE}.lookup, CONCAT('EligibleForRHY_', ${TABLE}.EligibleForRHY, ':'), -1), ';', 1) END ;;
  }

  dimension: ReasonNoServices {
    type: string
    label: "ReasonNoServices"
    sql: ${TABLE}.ReasonNoServices ;;
  }

  dimension: ReasonNoServicesText {
    type: string
    label: "ReasonNoServicesText"
    sql: CASE WHEN ${TABLE}.ReasonNoServices IS NOT NULL AND ${TABLE}.ReasonNoServices <> '' THEN SUBSTRING_INDEX(SUBSTRING_INDEX(${TABLE}.lookup, CONCAT('ReasonNoServices_', ${TABLE}.ReasonNoServices, ':'), -1), ';', 1) END ;;
  }

  dimension: RunawayYouth {
    type: string
    label: "RunawayYouth"
    sql: ${TABLE}.RunawayYouth ;;
  }

  dimension: RunawayYouthText {
    type: string
    label: "RunawayYouthText"
    sql: CASE WHEN ${TABLE}.RunawayYouth IS NOT NULL AND ${TABLE}.RunawayYouth <> '' THEN SUBSTRING_INDEX(SUBSTRING_INDEX(${TABLE}.lookup, CONCAT('RunawayYouth_', ${TABLE}.RunawayYouth, ':'), -1), ';', 1) END ;;
  }

  dimension: SexualOrientation {
    type: string
    label: "SexualOrientation"
    sql: ${TABLE}.SexualOrientation ;;
  }

  dimension: SexualOrientationText {
    type: string
    label: "SexualOrientationText"
    sql: CASE WHEN ${TABLE}.SexualOrientation IS NOT NULL AND ${TABLE}.SexualOrientation <> '' THEN SUBSTRING_INDEX(SUBSTRING_INDEX(${TABLE}.lookup, CONCAT('SexualOrientation_', ${TABLE}.SexualOrientation, ':'), -1), ';', 1) END ;;
  }

  dimension: FormerWardChildWelfare {
    type: string
    label: "FormerWardChildWelfare"
    sql: ${TABLE}.FormerWardChildWelfare ;;
  }

  dimension: FormerWardChildWelfareText {
    type: string
    label: "FormerWardChildWelfareText"
    sql: CASE WHEN ${TABLE}.FormerWardChildWelfare IS NOT NULL AND ${TABLE}.FormerWardChildWelfare <> '' THEN SUBSTRING_INDEX(SUBSTRING_INDEX(${TABLE}.lookup, CONCAT('FormerWardChildWelfare_', ${TABLE}.FormerWardChildWelfare, ':'), -1), ';', 1) END ;;
  }

  dimension: ChildWelfareYears {
    type: string
    label: "ChildWelfareYears"
    sql: ${TABLE}.ChildWelfareYears ;;
  }

  dimension: ChildWelfareYearsText {
    type: string
    label: "ChildWelfareYearsText"
    sql: CASE WHEN ${TABLE}.ChildWelfareYears IS NOT NULL AND ${TABLE}.ChildWelfareYears <> '' THEN SUBSTRING_INDEX(SUBSTRING_INDEX(${TABLE}.lookup, CONCAT('ChildWelfareYears_', ${TABLE}.ChildWelfareYears, ':'), -1), ';', 1) END ;;
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

  dimension: FormerWardJuvenileJusticeText {
    type: string
    label: "FormerWardJuvenileJusticeText"
    sql: CASE WHEN ${TABLE}.FormerWardJuvenileJustice IS NOT NULL AND ${TABLE}.FormerWardJuvenileJustice <> '' THEN SUBSTRING_INDEX(SUBSTRING_INDEX(${TABLE}.lookup, CONCAT('FormerWardJuvenileJustice_', ${TABLE}.FormerWardJuvenileJustice, ':'), -1), ';', 1) END ;;
  }

  dimension: JuvenileJusticeYears {
    type: string
    label: "JuvenileJusticeYears"
    sql: ${TABLE}.JuvenileJusticeYears ;;
  }

  dimension: JuvenileJusticeYearsText {
    type: string
    label: "JuvenileJusticeYearsText"
    sql: CASE WHEN ${TABLE}.JuvenileJusticeYears IS NOT NULL AND ${TABLE}.JuvenileJusticeYears <> '' THEN SUBSTRING_INDEX(SUBSTRING_INDEX(${TABLE}.lookup, CONCAT('JuvenileJusticeYears_', ${TABLE}.JuvenileJusticeYears, ':'), -1), ';', 1) END ;;
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

  dimension: UnemploymentFamText {
    type: string
    label: "UnemploymentFamText"
    sql: CASE WHEN ${TABLE}.UnemploymentFam IS NOT NULL AND ${TABLE}.UnemploymentFam <> '' THEN SUBSTRING_INDEX(SUBSTRING_INDEX(${TABLE}.lookup, CONCAT('UnemploymentFam_', ${TABLE}.UnemploymentFam, ':'), -1), ';', 1) END ;;
  }

  dimension: MentalHealthIssuesFam {
    type: string
    label: "MentalHealthIssuesFam"
    sql: ${TABLE}.MentalHealthIssuesFam ;;
  }

  dimension: MentalHealthIssuesFamText {
    type: string
    label: "MentalHealthIssuesFamText"
    sql: CASE WHEN ${TABLE}.MentalHealthIssuesFam IS NOT NULL AND ${TABLE}.MentalHealthIssuesFam <> '' THEN SUBSTRING_INDEX(SUBSTRING_INDEX(${TABLE}.lookup, CONCAT('MentalHealthIssuesFam_', ${TABLE}.MentalHealthIssuesFam, ':'), -1), ';', 1) END ;;
  }

  dimension: PhysicalDisabilityFam {
    type: string
    label: "PhysicalDisabilityFam"
    sql: ${TABLE}.PhysicalDisabilityFam ;;
  }

  dimension: PhysicalDisabilityFamText {
    type: string
    label: "PhysicalDisabilityFamText"
    sql: CASE WHEN ${TABLE}.PhysicalDisabilityFam IS NOT NULL AND ${TABLE}.PhysicalDisabilityFam <> '' THEN SUBSTRING_INDEX(SUBSTRING_INDEX(${TABLE}.lookup, CONCAT('PhysicalDisabilityFam_', ${TABLE}.PhysicalDisabilityFam, ':'), -1), ';', 1) END ;;
  }

  dimension: AlcoholDrugAbuseFam {
    type: string
    label: "AlcoholDrugAbuseFam"
    sql: ${TABLE}.AlcoholDrugAbuseFam ;;
  }

  dimension: AlcoholDrugAbuseFamText {
    type: string
    label: "AlcoholDrugAbuseFamText"
    sql: CASE WHEN ${TABLE}.AlcoholDrugAbuseFam IS NOT NULL AND ${TABLE}.AlcoholDrugAbuseFam <> '' THEN SUBSTRING_INDEX(SUBSTRING_INDEX(${TABLE}.lookup, CONCAT('AlcoholDrugAbuseFam_', ${TABLE}.AlcoholDrugAbuseFam, ':'), -1), ';', 1) END ;;
  }

  dimension: InsufficientIncome {
    type: string
    label: "InsufficientIncome"
    sql: ${TABLE}.InsufficientIncome ;;
  }

  dimension: InsufficientIncomeText {
    type: string
    label: "InsufficientIncomeText"
    sql: CASE WHEN ${TABLE}.InsufficientIncome IS NOT NULL AND ${TABLE}.InsufficientIncome <> '' THEN SUBSTRING_INDEX(SUBSTRING_INDEX(${TABLE}.lookup, CONCAT('InsufficientIncome_', ${TABLE}.InsufficientIncome, ':'), -1), ';', 1) END ;;
  }

  dimension: IncarceratedParent {
    type: string
    label: "IncarceratedParent"
    sql: ${TABLE}.IncarceratedParent ;;
  }

  dimension: IncarceratedParentText {
    type: string
    label: "IncarceratedParentText"
    sql: CASE WHEN ${TABLE}.IncarceratedParent IS NOT NULL AND ${TABLE}.IncarceratedParent <> '' THEN SUBSTRING_INDEX(SUBSTRING_INDEX(${TABLE}.lookup, CONCAT('IncarceratedParent_', ${TABLE}.IncarceratedParent, ':'), -1), ';', 1) END ;;
  }

  dimension: ReferralSource {
    type: string
    label: "ReferralSource"
    sql: ${TABLE}.ReferralSource ;;
  }

  dimension: ReferralSourceText {
    type: string
    label: "ReferralSourceText"
    sql: CASE WHEN ${TABLE}.ReferralSource IS NOT NULL AND ${TABLE}.ReferralSource <> '' THEN SUBSTRING_INDEX(SUBSTRING_INDEX(${TABLE}.lookup, CONCAT('ReferralSource_', ${TABLE}.ReferralSource, ':'), -1), ';', 1) END ;;
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

  dimension: UrgentReferralText {
    type: string
    label: "UrgentReferralText"
    sql: CASE WHEN ${TABLE}.UrgentReferral IS NOT NULL AND ${TABLE}.UrgentReferral <> '' THEN SUBSTRING_INDEX(SUBSTRING_INDEX(${TABLE}.lookup, CONCAT('UrgentReferral_', ${TABLE}.UrgentReferral, ':'), -1), ';', 1) END ;;
  }

  dimension: TimeToHousingLoss {
    type: string
    label: "TimeToHousingLoss"
    sql: ${TABLE}.TimeToHousingLoss ;;
  }

  dimension: TimeToHousingLossText {
    type: string
    label: "TimeToHousingLossText"
    sql: CASE WHEN ${TABLE}.TimeToHousingLoss IS NOT NULL AND ${TABLE}.TimeToHousingLoss <> '' THEN SUBSTRING_INDEX(SUBSTRING_INDEX(${TABLE}.lookup, CONCAT('TimeToHousingLoss_', ${TABLE}.TimeToHousingLoss, ':'), -1), ';', 1) END ;;
  }

  dimension: ZeroIncome {
    type: string
    label: "ZeroIncome"
    sql: ${TABLE}.ZeroIncome ;;
  }

  dimension: ZeroIncomeText {
    type: string
    label: "ZeroIncomeText"
    sql: CASE WHEN ${TABLE}.ZeroIncome IS NOT NULL AND ${TABLE}.ZeroIncome <> '' THEN SUBSTRING_INDEX(SUBSTRING_INDEX(${TABLE}.lookup, CONCAT('ZeroIncome_', ${TABLE}.ZeroIncome, ':'), -1), ';', 1) END ;;
  }

  dimension: AnnualPercentAMI {
    type: string
    label: "AnnualPercentAMI"
    sql: ${TABLE}.AnnualPercentAMI ;;
  }

  dimension: AnnualPercentAMIText {
    type: string
    label: "AnnualPercentAMIText"
    sql: CASE WHEN ${TABLE}.AnnualPercentAMI IS NOT NULL AND ${TABLE}.AnnualPercentAMI <> '' THEN SUBSTRING_INDEX(SUBSTRING_INDEX(${TABLE}.lookup, CONCAT('AnnualPercentAMI_', ${TABLE}.AnnualPercentAMI, ':'), -1), ';', 1) END ;;
  }

  dimension: FinancialChange {
    type: string
    label: "FinancialChange"
    sql: ${TABLE}.FinancialChange ;;
  }

  dimension: FinancialChangeText {
    type: string
    label: "FinancialChangeText"
    sql: CASE WHEN ${TABLE}.FinancialChange IS NOT NULL AND ${TABLE}.FinancialChange <> '' THEN SUBSTRING_INDEX(SUBSTRING_INDEX(${TABLE}.lookup, CONCAT('FinancialChange_', ${TABLE}.FinancialChange, ':'), -1), ';', 1) END ;;
  }

  dimension: HouseholdChange {
    type: string
    label: "HouseholdChange"
    sql: ${TABLE}.HouseholdChange ;;
  }

  dimension: HouseholdChangeText {
    type: string
    label: "HouseholdChangeText"
    sql: CASE WHEN ${TABLE}.HouseholdChange IS NOT NULL AND ${TABLE}.HouseholdChange <> '' THEN SUBSTRING_INDEX(SUBSTRING_INDEX(${TABLE}.lookup, CONCAT('HouseholdChange_', ${TABLE}.HouseholdChange, ':'), -1), ';', 1) END ;;
  }

  dimension: EvictionHistory {
    type: string
    label: "EvictionHistory"
    sql: ${TABLE}.EvictionHistory ;;
  }

  dimension: EvictionHistoryText {
    type: string
    label: "EvictionHistoryText"
    sql: CASE WHEN ${TABLE}.EvictionHistory IS NOT NULL AND ${TABLE}.EvictionHistory <> '' THEN SUBSTRING_INDEX(SUBSTRING_INDEX(${TABLE}.lookup, CONCAT('EvictionHistory_', ${TABLE}.EvictionHistory, ':'), -1), ';', 1) END ;;
  }

  dimension: SubsidyAtRisk {
    type: string
    label: "SubsidyAtRisk"
    sql: ${TABLE}.SubsidyAtRisk ;;
  }

  dimension: SubsidyAtRiskText {
    type: string
    label: "SubsidyAtRiskText"
    sql: CASE WHEN ${TABLE}.SubsidyAtRisk IS NOT NULL AND ${TABLE}.SubsidyAtRisk <> '' THEN SUBSTRING_INDEX(SUBSTRING_INDEX(${TABLE}.lookup, CONCAT('SubsidyAtRisk_', ${TABLE}.SubsidyAtRisk, ':'), -1), ';', 1) END ;;
  }

  dimension: LiteralHomelessHistory {
    type: string
    label: "LiteralHomelessHistory"
    sql: ${TABLE}.LiteralHomelessHistory ;;
  }

  dimension: LiteralHomelessHistoryText {
    type: string
    label: "LiteralHomelessHistoryText"
    sql: CASE WHEN ${TABLE}.LiteralHomelessHistory IS NOT NULL AND ${TABLE}.LiteralHomelessHistory <> '' THEN SUBSTRING_INDEX(SUBSTRING_INDEX(${TABLE}.lookup, CONCAT('LiteralHomelessHistory_', ${TABLE}.LiteralHomelessHistory, ':'), -1), ';', 1) END ;;
  }

  dimension: DisabledHoH {
    type: string
    label: "DisabledHoH"
    sql: ${TABLE}.DisabledHoH ;;
  }

  dimension: DisabledHoHText {
    type: string
    label: "DisabledHoHText"
    sql: CASE WHEN ${TABLE}.DisabledHoH IS NOT NULL AND ${TABLE}.DisabledHoH <> '' THEN SUBSTRING_INDEX(SUBSTRING_INDEX(${TABLE}.lookup, CONCAT('DisabledHoH_', ${TABLE}.DisabledHoH, ':'), -1), ';', 1) END ;;
  }

  dimension: CriminalRecord {
    type: string
    label: "CriminalRecord"
    sql: ${TABLE}.CriminalRecord ;;
  }

  dimension: CriminalRecordText {
    type: string
    label: "CriminalRecordText"
    sql: CASE WHEN ${TABLE}.CriminalRecord IS NOT NULL AND ${TABLE}.CriminalRecord <> '' THEN SUBSTRING_INDEX(SUBSTRING_INDEX(${TABLE}.lookup, CONCAT('CriminalRecord_', ${TABLE}.CriminalRecord, ':'), -1), ';', 1) END ;;
  }

  dimension: SexOffender {
    type: string
    label: "SexOffender"
    sql: ${TABLE}.SexOffender ;;
  }

  dimension: SexOffenderText {
    type: string
    label: "SexOffenderText"
    sql: CASE WHEN ${TABLE}.SexOffender IS NOT NULL AND ${TABLE}.SexOffender <> '' THEN SUBSTRING_INDEX(SUBSTRING_INDEX(${TABLE}.lookup, CONCAT('SexOffender_', ${TABLE}.SexOffender, ':'), -1), ';', 1) END ;;
  }

  dimension: DependentUnder6 {
    type: string
    label: "DependentUnder6"
    sql: ${TABLE}.DependentUnder6 ;;
  }

  dimension: DependentUnder6Text {
    type: string
    label: "DependentUnder6Text"
    sql: CASE WHEN ${TABLE}.DependentUnder6 IS NOT NULL AND ${TABLE}.DependentUnder6 <> '' THEN SUBSTRING_INDEX(SUBSTRING_INDEX(${TABLE}.lookup, CONCAT('DependentUnder6_', ${TABLE}.DependentUnder6, ':'), -1), ';', 1) END ;;
  }

  dimension: SingleParent {
    type: string
    label: "SingleParent"
    sql: ${TABLE}.SingleParent ;;
  }

  dimension: SingleParentText {
    type: string
    label: "SingleParentText"
    sql: CASE WHEN ${TABLE}.SingleParent IS NOT NULL AND ${TABLE}.SingleParent <> '' THEN SUBSTRING_INDEX(SUBSTRING_INDEX(${TABLE}.lookup, CONCAT('SingleParent_', ${TABLE}.SingleParent, ':'), -1), ';', 1) END ;;
  }

  dimension: HH5Plus {
    type: string
    label: "HH5Plus"
    sql: ${TABLE}.HH5Plus ;;
  }

  dimension: HH5PlusText {
    type: string
    label: "HH5PlusText"
    sql: CASE WHEN ${TABLE}.HH5Plus IS NOT NULL AND ${TABLE}.HH5Plus <> '' THEN SUBSTRING_INDEX(SUBSTRING_INDEX(${TABLE}.lookup, CONCAT('HH5Plus_', ${TABLE}.HH5Plus, ':'), -1), ';', 1) END ;;
  }

  dimension: IraqAfghanistan {
    type: string
    label: "IraqAfghanistan"
    sql: ${TABLE}.IraqAfghanistan ;;
  }

  dimension: IraqAfghanistanText {
    type: string
    label: "IraqAfghanistanText"
    sql: CASE WHEN ${TABLE}.IraqAfghanistan IS NOT NULL AND ${TABLE}.IraqAfghanistan <> '' THEN SUBSTRING_INDEX(SUBSTRING_INDEX(${TABLE}.lookup, CONCAT('IraqAfghanistan_', ${TABLE}.IraqAfghanistan, ':'), -1), ';', 1) END ;;
  }

  dimension: FemVet {
    type: string
    label: "FemVet"
    sql: ${TABLE}.FemVet ;;
  }

  dimension: FemVetText {
    type: string
    label: "FemVetText"
    sql: CASE WHEN ${TABLE}.FemVet IS NOT NULL AND ${TABLE}.FemVet <> '' THEN SUBSTRING_INDEX(SUBSTRING_INDEX(${TABLE}.lookup, CONCAT('FemVet_', ${TABLE}.FemVet, ':'), -1), ';', 1) END ;;
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

  dimension: VAMCStationText {
    type: string
    label: "VAMCStationText"
    sql: CASE WHEN ${TABLE}.VAMCStation IS NOT NULL AND ${TABLE}.VAMCStation <> '' THEN SUBSTRING_INDEX(SUBSTRING_INDEX(${TABLE}.lookup, CONCAT('VAMCStation_', ${TABLE}.VAMCStation, ':'), -1), ';', 1) END ;;
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
    sql: ${client.PersonalID};;
  }
}
