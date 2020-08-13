include: "/views/hud/enrollment.view"

view: +enrollment {
  measure: enrollment_count {
    group_label: "Counts"
    view_label: "Analysis - General"
    label: "Enrollment count"
    type: count_distinct


    drill_fields: [enrollment_queries_drill_fields*]
    sql: ${EnrollmentID} ;;
  }

  measure: enrollments_that_reference_an_invalid_client {
    group_label: "Invalid Reference"
    view_label: "Analysis - Major"
    label: "Enrollments that reference an invalid client"
    type: count_distinct

    filters: [
      client.PersonalID: "NULL,EMPTY"
    ]

    drill_fields: [enrollment_queries_drill_fields*]
    sql: ${EnrollmentID} ;;
  }

  measure: non_hud_addressdataquality {
    group_label: "NonHUD"
    view_label: "Analysis - Minor"
    label: "Non HUD AddressDataQuality"
    type: count_distinct

    filters: [
      enrollment.AddressDataQuality: "-1,-2,-8,-9,-99,-NULL,-EMPTY"
    ]

    drill_fields: [enrollment_queries_drill_fields*]
    sql: ${EnrollmentID} ;;
  }

  measure: non_hud_alcoholdrugabusefam {
    group_label: "NonHUD"
    view_label: "Analysis - Minor"
    label: "Non HUD AlcoholDrugAbuseFam"
    type: count_distinct

    filters: [
      enrollment.AlcoholDrugAbuseFam: "-0,-1,-99,-NULL,-EMPTY"
    ]

    drill_fields: [enrollment_queries_drill_fields*]
    sql: ${EnrollmentID} ;;
  }

  measure: non_hud_annualpercentami {
    group_label: "NonHUD"
    view_label: "Analysis - Minor"
    label: "Non HUD AnnualPercentAMI"
    type: count_distinct

    filters: [
      enrollment.AnnualPercentAMI: "-0,-1,-2,-99,-NULL,-EMPTY"
    ]

    drill_fields: [enrollment_queries_drill_fields*]
    sql: ${EnrollmentID} ;;
  }

  measure: non_hud_childwelfareyears {
    group_label: "NonHUD"
    view_label: "Analysis - Minor"
    label: "Non HUD ChildWelfareYears"
    type: count_distinct

    filters: [
      enrollment.ChildWelfareYears: "-1,-2,-3,-99,-NULL,-EMPTY"
    ]

    drill_fields: [enrollment_queries_drill_fields*]
    sql: ${EnrollmentID} ;;
  }

  measure: non_hud_clientenrolledinpath {
    group_label: "NonHUD"
    view_label: "Analysis - Minor"
    label: "Non HUD ClientEnrolledInPATH"
    type: count_distinct

    filters: [
      enrollment.ClientEnrolledInPATH: "-0,-1,-99,-NULL,-EMPTY"
    ]

    drill_fields: [enrollment_queries_drill_fields*]
    sql: ${EnrollmentID} ;;
  }

  measure: non_hud_criminalrecord {
    group_label: "NonHUD"
    view_label: "Analysis - Minor"
    label: "Non HUD CriminalRecord"
    type: count_distinct

    filters: [
      enrollment.CriminalRecord: "-0,-1,-99,-NULL,-EMPTY"
    ]

    drill_fields: [enrollment_queries_drill_fields*]
    sql: ${EnrollmentID} ;;
  }

  measure: non_hud_dependentunder6 {
    group_label: "NonHUD"
    view_label: "Analysis - Minor"
    label: "Non HUD DependentUnder6"
    type: count_distinct

    filters: [
      enrollment.DependentUnder6: "-0,-1,-99,-NULL,-EMPTY"
    ]

    drill_fields: [enrollment_queries_drill_fields*]
    sql: ${EnrollmentID} ;;
  }

  measure: non_hud_disabledhoh {
    group_label: "NonHUD"
    view_label: "Analysis - Minor"
    label: "Non HUD DisabledHoH"
    type: count_distinct

    filters: [
      enrollment.DisabledHoH: "-0,-1,-99,-NULL,-EMPTY"
    ]

    drill_fields: [enrollment_queries_drill_fields*]
    sql: ${EnrollmentID} ;;
  }

  measure: non_hud_disablingcondition {
    group_label: "NonHUD"
    view_label: "Analysis - Major"
    label: "Non HUD DisablingCondition"
    type: count_distinct

    filters: [
      enrollment.DisablingCondition: "-0,-1,-8,-9,-99,-NULL,-EMPTY"
    ]

    drill_fields: [enrollment_queries_drill_fields*]
    sql: ${EnrollmentID} ;;
  }

  measure: non_hud_eligibleforrhy {
    group_label: "NonHUD"
    view_label: "Analysis - Minor"
    label: "Non HUD EligibleForRHY"
    type: count_distinct

    filters: [
      enrollment.EligibleForRHY: "-0,-1,-99,-NULL,-EMPTY"
    ]

    drill_fields: [enrollment_queries_drill_fields*]
    sql: ${EnrollmentID} ;;
  }

  measure: non_hud_evictionhistory {
    group_label: "NonHUD"
    view_label: "Analysis - Minor"
    label: "Non HUD EvictionHistory"
    type: count_distinct

    filters: [
      enrollment.EvictionHistory: "-0,-1,-2,-3,-99,-NULL,-EMPTY"
    ]

    drill_fields: [enrollment_queries_drill_fields*]
    sql: ${EnrollmentID} ;;
  }

  measure: non_hud_femvet {
    group_label: "NonHUD"
    view_label: "Analysis - Minor"
    label: "Non HUD FemVet"
    type: count_distinct

    filters: [
      enrollment.FemVet: "-0,-1,-99,-NULL,-EMPTY"
    ]

    drill_fields: [enrollment_queries_drill_fields*]
    sql: ${EnrollmentID} ;;
  }

  measure: non_hud_financialchange {
    group_label: "NonHUD"
    view_label: "Analysis - Minor"
    label: "Non HUD FinancialChange"
    type: count_distinct

    filters: [
      enrollment.FinancialChange: "-0,-1,-99,-NULL,-EMPTY"
    ]

    drill_fields: [enrollment_queries_drill_fields*]
    sql: ${EnrollmentID} ;;
  }

  measure: non_hud_formerwardchildwelfare {
    group_label: "NonHUD"
    view_label: "Analysis - Minor"
    label: "Non HUD FormerWardChildWelfare"
    type: count_distinct

    filters: [
      enrollment.FormerWardChildWelfare: "-0,-1,-8,-9,-99,-NULL,-EMPTY"
    ]

    drill_fields: [enrollment_queries_drill_fields*]
    sql: ${EnrollmentID} ;;
  }

  measure: non_hud_formerwardjuvenilejustice {
    group_label: "NonHUD"
    view_label: "Analysis - Minor"
    label: "Non HUD FormerWardJuvenileJustice"
    type: count_distinct

    filters: [
      enrollment.FormerWardJuvenileJustice: "-0,-1,-8,-9,-99,-NULL,-EMPTY"
    ]

    drill_fields: [enrollment_queries_drill_fields*]
    sql: ${EnrollmentID} ;;
  }

  measure: non_hud_hh5plus {
    group_label: "NonHUD"
    view_label: "Analysis - Minor"
    label: "Non HUD HH5Plus"
    type: count_distinct

    filters: [
      enrollment.HH5Plus: "-0,-1,-99,-NULL,-EMPTY"
    ]

    drill_fields: [enrollment_queries_drill_fields*]
    sql: ${EnrollmentID} ;;
  }

  measure: non_hud_householdchange {
    group_label: "NonHUD"
    view_label: "Analysis - Minor"
    label: "Non HUD HouseholdChange"
    type: count_distinct

    filters: [
      enrollment.HouseholdChange: "-0,-1,-99,-NULL,-EMPTY"
    ]

    drill_fields: [enrollment_queries_drill_fields*]
    sql: ${EnrollmentID} ;;
  }

  measure: non_hud_incarceratedparent {
    group_label: "NonHUD"
    view_label: "Analysis - Minor"
    label: "Non HUD IncarceratedParent"
    type: count_distinct

    filters: [
      enrollment.IncarceratedParent: "-0,-1,-99,-NULL,-EMPTY"
    ]

    drill_fields: [enrollment_queries_drill_fields*]
    sql: ${EnrollmentID} ;;
  }

  measure: non_hud_insufficientincome {
    group_label: "NonHUD"
    view_label: "Analysis - Minor"
    label: "Non HUD InsufficientIncome"
    type: count_distinct

    filters: [
      enrollment.InsufficientIncome: "-0,-1,-99,-NULL,-EMPTY"
    ]

    drill_fields: [enrollment_queries_drill_fields*]
    sql: ${EnrollmentID} ;;
  }

  measure: non_hud_iraqafghanistan {
    group_label: "NonHUD"
    view_label: "Analysis - Minor"
    label: "Non HUD IraqAfghanistan"
    type: count_distinct

    filters: [
      enrollment.IraqAfghanistan: "-0,-1,-99,-NULL,-EMPTY"
    ]

    drill_fields: [enrollment_queries_drill_fields*]
    sql: ${EnrollmentID} ;;
  }

  measure: non_hud_juvenilejusticeyears {
    group_label: "NonHUD"
    view_label: "Analysis - Minor"
    label: "Non HUD JuvenileJusticeYears"
    type: count_distinct

    filters: [
      enrollment.JuvenileJusticeYears: "-1,-2,-3,-99,-NULL,-EMPTY"
    ]

    drill_fields: [enrollment_queries_drill_fields*]
    sql: ${EnrollmentID} ;;
  }

  measure: non_hud_lengthofstay {
    group_label: "NonHUD"
    view_label: "Analysis - Major"
    label: "Non HUD LengthOfStay"
    type: count_distinct

    filters: [
      enrollment.LengthOfStay: "-2,-3,-4,-5,-8,-9,-10,-11,-99,-NULL,-EMPTY"
    ]

    drill_fields: [enrollment_queries_drill_fields*]
    sql: ${EnrollmentID} ;;
  }

  measure: non_hud_literalhomelesshistory {
    group_label: "NonHUD"
    view_label: "Analysis - Minor"
    label: "Non HUD LiteralHomelessHistory"
    type: count_distinct

    filters: [
      enrollment.LiteralHomelessHistory: "-0,-1,-2,-3,-99,-NULL,-EMPTY"
    ]

    drill_fields: [enrollment_queries_drill_fields*]
    sql: ${EnrollmentID} ;;
  }

  measure: non_hud_livingsituation {
    group_label: "NonHUD"
    view_label: "Analysis - Major"
    label: "Non HUD LivingSituation"
    type: count_distinct

    filters: [
      enrollment.LivingSituation: "-16,-1,-18,-15,-6,-7,-25,-4,-5,-29,-14,-2,-32,-36,-35,-28,-19,-3,-31,-33,-34,-10,-20,-21,-11,-8,-9,-99,-NULL,-EMPTY"
    ]

    drill_fields: [enrollment_queries_drill_fields*]
    sql: ${EnrollmentID} ;;
  }

  measure: non_hud_losunderthreshold {
    group_label: "NonHUD"
    view_label: "Analysis - Major"
    label: "Non HUD LOSUnderThreshold"
    type: count_distinct

    filters: [
      enrollment.LOSUnderThreshold: "-0,-1,-99,-NULL,-EMPTY"
    ]

    drill_fields: [enrollment_queries_drill_fields*]
    sql: ${EnrollmentID} ;;
  }

  measure: non_hud_mentalhealthissuesfam {
    group_label: "NonHUD"
    view_label: "Analysis - Minor"
    label: "Non HUD MentalHealthIssuesFam"
    type: count_distinct

    filters: [
      enrollment.MentalHealthIssuesFam: "-0,-1,-99,-NULL,-EMPTY"
    ]

    drill_fields: [enrollment_queries_drill_fields*]
    sql: ${EnrollmentID} ;;
  }

  measure: non_hud_monthshomelesspastthreeyears {
    group_label: "NonHUD"
    view_label: "Analysis - Major"
    label: "Non HUD MonthsHomelessPastThreeYears"
    type: count_distinct

    filters: [
      enrollment.MonthsHomelessPastThreeYears: "-8,-9,-99,-101,-102,-103,-104,-105,-106,-107,-108,-109,-110,-111,-112,-113,-NULL,-EMPTY"
    ]

    drill_fields: [enrollment_queries_drill_fields*]
    sql: ${EnrollmentID} ;;
  }

  measure: non_hud_percentami {
    group_label: "NonHUD"
    view_label: "Analysis - Minor"
    label: "Non HUD PercentAMI"
    type: count_distinct

    filters: [
      enrollment.PercentAMI: "-1,-2,-3,-99,-NULL,-EMPTY"
    ]

    drill_fields: [enrollment_queries_drill_fields*]
    sql: ${EnrollmentID} ;;
  }

  measure: non_hud_physicaldisabilityfam {
    group_label: "NonHUD"
    view_label: "Analysis - Minor"
    label: "Non HUD PhysicalDisabilityFam"
    type: count_distinct

    filters: [
      enrollment.PhysicalDisabilityFam: "-0,-1,-99,-NULL,-EMPTY"
    ]

    drill_fields: [enrollment_queries_drill_fields*]
    sql: ${EnrollmentID} ;;
  }

  measure: non_hud_previousstreetessh {
    group_label: "NonHUD"
    view_label: "Analysis - Major"
    label: "Non HUD PreviousStreetESSH"
    type: count_distinct

    filters: [
      enrollment.PreviousStreetESSH: "-0,-1,-99,-NULL,-EMPTY"
    ]

    drill_fields: [enrollment_queries_drill_fields*]
    sql: ${EnrollmentID} ;;
  }

  measure: non_hud_reasonnoservices {
    group_label: "NonHUD"
    view_label: "Analysis - Minor"
    label: "Non HUD ReasonNoServices"
    type: count_distinct

    filters: [
      enrollment.ReasonNoServices: "-1,-2,-3,-4,-NULL,-EMPTY"
    ]

    drill_fields: [enrollment_queries_drill_fields*]
    sql: ${EnrollmentID} ;;
  }

  measure: non_hud_reasonnotenrolled {
    group_label: "NonHUD"
    view_label: "Analysis - Minor"
    label: "Non HUD ReasonNotEnrolled"
    type: count_distinct

    filters: [
      enrollment.ReasonNotEnrolled: "-1,-2,-NULL,-EMPTY"
    ]

    drill_fields: [enrollment_queries_drill_fields*]
    sql: ${EnrollmentID} ;;
  }

  measure: non_hud_referralsource {
    group_label: "NonHUD"
    view_label: "Analysis - Minor"
    label: "Non HUD ReferralSource"
    type: count_distinct

    filters: [
      enrollment.ReferralSource: "-1,-2,-7,-11,-18,-28,-30,-34,-35,-37,-38,-39,-8,-9,-99,-NULL,-EMPTY"
    ]

    drill_fields: [enrollment_queries_drill_fields*]
    sql: ${EnrollmentID} ;;
  }

  measure: non_hud_relationshiptohoh {
    group_label: "NonHUD"
    view_label: "Analysis - Major"
    label: "Non HUD RelationshipToHoH"
    type: count_distinct

    filters: [
      enrollment.RelationshipToHoH: "-1,-2,-3,-4,-5,-99,-NULL,-EMPTY"
    ]

    drill_fields: [enrollment_queries_drill_fields*]
    sql: ${EnrollmentID} ;;
  }

  measure: non_hud_runawayyouth {
    group_label: "NonHUD"
    view_label: "Analysis - Minor"
    label: "Non HUD RunawayYouth"
    type: count_distinct

    filters: [
      enrollment.RunawayYouth: "-0,-1,-8,-9,-99,-NULL,-EMPTY"
    ]

    drill_fields: [enrollment_queries_drill_fields*]
    sql: ${EnrollmentID} ;;
  }

  measure: non_hud_sexoffender {
    group_label: "NonHUD"
    view_label: "Analysis - Minor"
    label: "Non HUD SexOffender"
    type: count_distinct

    filters: [
      enrollment.SexOffender: "-0,-1,-99,-NULL,-EMPTY"
    ]

    drill_fields: [enrollment_queries_drill_fields*]
    sql: ${EnrollmentID} ;;
  }

  measure: non_hud_sexualorientation {
    group_label: "NonHUD"
    view_label: "Analysis - Minor"
    label: "Non HUD SexualOrientation"
    type: count_distinct

    filters: [
      enrollment.SexualOrientation: "-1,-2,-3,-4,-5,-6,-8,-9,-99,-NULL,-EMPTY"
    ]

    drill_fields: [enrollment_queries_drill_fields*]
    sql: ${EnrollmentID} ;;
  }

  measure: non_hud_singleparent {
    group_label: "NonHUD"
    view_label: "Analysis - Minor"
    label: "Non HUD SingleParent"
    type: count_distinct

    filters: [
      enrollment.SingleParent: "-0,-1,-99,-NULL,-EMPTY"
    ]

    drill_fields: [enrollment_queries_drill_fields*]
    sql: ${EnrollmentID} ;;
  }

  measure: non_hud_subsidyatrisk {
    group_label: "NonHUD"
    view_label: "Analysis - Minor"
    label: "Non HUD SubsidyAtRisk"
    type: count_distinct

    filters: [
      enrollment.SubsidyAtRisk: "-0,-1,-99,-NULL,-EMPTY"
    ]

    drill_fields: [enrollment_queries_drill_fields*]
    sql: ${EnrollmentID} ;;
  }

  measure: non_hud_timeshomelesspastthreeyears {
    group_label: "NonHUD"
    view_label: "Analysis - Major"
    label: "Non HUD TimesHomelessPastThreeYears"
    type: count_distinct

    filters: [
      enrollment.TimesHomelessPastThreeYears: "-1,-2,-3,-4,-8,-9,-99,-NULL,-EMPTY"
    ]

    drill_fields: [enrollment_queries_drill_fields*]
    sql: ${EnrollmentID} ;;
  }

  measure: non_hud_timetohousingloss {
    group_label: "NonHUD"
    view_label: "Analysis - Minor"
    label: "Non HUD TimeToHousingLoss"
    type: count_distinct

    filters: [
      enrollment.TimeToHousingLoss: "-0,-1,-2,-3,-99,-NULL,-EMPTY"
    ]

    drill_fields: [enrollment_queries_drill_fields*]
    sql: ${EnrollmentID} ;;
  }

  measure: non_hud_unemploymentfam {
    group_label: "NonHUD"
    view_label: "Analysis - Minor"
    label: "Non HUD UnemploymentFam"
    type: count_distinct

    filters: [
      enrollment.UnemploymentFam: "-0,-1,-99,-NULL,-EMPTY"
    ]

    drill_fields: [enrollment_queries_drill_fields*]
    sql: ${EnrollmentID} ;;
  }

  measure: non_hud_urgentreferral {
    group_label: "NonHUD"
    view_label: "Analysis - Minor"
    label: "Non HUD UrgentReferral"
    type: count_distinct

    filters: [
      enrollment.UrgentReferral: "-0,-1,-99,-NULL,-EMPTY"
    ]

    drill_fields: [enrollment_queries_drill_fields*]
    sql: ${EnrollmentID} ;;
  }

  measure: non_hud_vamcstation {
    group_label: "NonHUD"
    view_label: "Analysis - Minor"
    label: "Non HUD VAMCStation"
    type: count_distinct

    filters: [
      enrollment.VAMCStation: "-402,-405,-436,-437,-438,-442,-459,-460,-463,-501,-502,-503,-504,-506,-508,-509,-512,-515,-516,-517,-518,-519,-520,-521,-523,-526,-528,-529,-531,-534,-537,-538,-539,-540,-541,-542,-544,-546,-548,-549,-550,-552,-553,-554,-556,-557,-558,-561,-562,-564,-565,-568,-570,-573,-575,-578,-580,-581,-583,-585,-586,-589,-590,-593,-595,-596,-598,-600,-603,-605,-607,-608,-610,-612,-613,-614,-618,-619,-620,-621,-623,-626,-629,-630,-631,-632,-635,-636,-637,-640,-642,-644,-646,-648,-649,-650,-652,-653,-654,-655,-656,-657,-658,-659,-660,-662,-663,-664,-666,-667,-668,-671,-672,-673,-674,-675,-676,-678,-679,-687,-688,-689,-691,-692,-693,-695,-740,-756,-757,-459GE,-528A5,-528A6,-528A7,-528A8,-589A4,-589A5,-589A6,-589A7,-636A6,-636A8,-657A4,-657A5,-99,-NULL,-EMPTY"
    ]

    drill_fields: [enrollment_queries_drill_fields*]
    sql: ${EnrollmentID} ;;
  }

  measure: non_hud_worsthousingsituation {
    group_label: "NonHUD"
    view_label: "Analysis - Minor"
    label: "Non HUD WorstHousingSituation"
    type: count_distinct

    filters: [
      enrollment.WorstHousingSituation: "-0,-1,-8,-9,-99,-NULL,-EMPTY"
    ]

    drill_fields: [enrollment_queries_drill_fields*]
    sql: ${EnrollmentID} ;;
  }

  measure: non_hud_zeroincome {
    group_label: "NonHUD"
    view_label: "Analysis - Minor"
    label: "Non HUD ZeroIncome"
    type: count_distinct

    filters: [
      enrollment.ZeroIncome: "-0,-1,-99,-NULL,-EMPTY"
    ]

    drill_fields: [enrollment_queries_drill_fields*]
    sql: ${EnrollmentID} ;;
  }

  measure: null_datecreated {
    group_label: "Null"
    view_label: "Analysis - Major"
    label: "Null DateCreated"
    type: count_distinct

    filters: [
      enrollment.DateCreated: "NULL,EMPTY"
    ]

    drill_fields: [enrollment_queries_drill_fields*]
    sql: ${EnrollmentID} ;;
  }

  measure: null_dateupdated {
    group_label: "Null"
    view_label: "Analysis - Major"
    label: "Null DateUpdated"
    type: count_distinct

    filters: [
      enrollment.DateUpdated: "NULL,EMPTY"
    ]

    drill_fields: [enrollment_queries_drill_fields*]
    sql: ${EnrollmentID} ;;
  }

  measure: null_disablingcondition {
    group_label: "Null"
    view_label: "Analysis - Major"
    label: "Null DisablingCondition"
    type: count_distinct

    filters: [
      enrollment.DisablingCondition: "NULL,EMPTY"
    ]

    drill_fields: [enrollment_queries_drill_fields*]
    sql: ${EnrollmentID} ;;
  }

  measure: null_enrollmentid {
    group_label: "Null"
    view_label: "Analysis - Major"
    label: "Null EnrollmentID"
    type: count_distinct

    filters: [
      enrollment.EnrollmentID: "NULL,EMPTY"
    ]

    drill_fields: [enrollment_queries_drill_fields*]
    sql: ${EnrollmentID} ;;
  }

  measure: null_entrydate {
    group_label: "Null"
    view_label: "Analysis - Major"
    label: "Null EntryDate"
    type: count_distinct

    filters: [
      enrollment.EntryDate: "NULL,EMPTY"
    ]

    drill_fields: [enrollment_queries_drill_fields*]
    sql: ${EnrollmentID} ;;
  }

  measure: null_exportid {
    group_label: "Null"
    view_label: "Analysis - Dq"
    label: "Null ExportID"
    type: count_distinct

    filters: [
      enrollment.ExportID: "NULL,EMPTY"
    ]

    drill_fields: [enrollment_queries_drill_fields*]
    sql: ${EnrollmentID} ;;
  }

  measure: null_householdid {
    group_label: "Null"
    view_label: "Analysis - Major"
    label: "Null HouseholdID"
    type: count_distinct

    filters: [
      enrollment.HouseholdID: "NULL,EMPTY"
    ]

    drill_fields: [enrollment_queries_drill_fields*]
    sql: ${EnrollmentID} ;;
  }

  measure: null_personalid {
    group_label: "Null"
    view_label: "Analysis - Major"
    label: "Null PersonalID"
    type: count_distinct

    filters: [
      enrollment.PersonalID: "NULL,EMPTY"
    ]

    drill_fields: [enrollment_queries_drill_fields*]
    sql: ${EnrollmentID} ;;
  }

  measure: null_projectid {
    group_label: "Null"
    view_label: "Analysis - Major"
    label: "Null ProjectID"
    type: count_distinct

    filters: [
      enrollment.ProjectID: "NULL,EMPTY"
    ]

    drill_fields: [enrollment_queries_drill_fields*]
    sql: ${EnrollmentID} ;;
  }

  measure: null_relationshiptohoh {
    group_label: "Null"
    view_label: "Analysis - Major"
    label: "Null RelationshipToHoH"
    type: count_distinct

    filters: [
      enrollment.RelationshipToHoH: "NULL,EMPTY"
    ]

    drill_fields: [enrollment_queries_drill_fields*]
    sql: ${EnrollmentID} ;;
  }

  measure: null_userid {
    group_label: "Null"
    view_label: "Analysis - Dq"
    label: "Null UserID"
    type: count_distinct

    filters: [
      enrollment.UserID: "NULL,EMPTY"
    ]

    drill_fields: [enrollment_queries_drill_fields*]
    sql: ${EnrollmentID} ;;
  }

  measure: clientenrolledinpath_is_not_no_and_reasonnotenrolled_not_null {
    group_label: "dqEnrollment"
    view_label: "Analysis - Dq"
    label: "ClientEnrolledInPATH is not No and ReasonNotEnrolled not null"
    type: count_distinct

    filters: [
      enrollment.ClientEnrolledInPATH: "-0",
      enrollment.ReasonNotEnrolled: "-NULL,-EMPTY"
    ]

    drill_fields: [enrollment_queries_drill_fields*]
    sql: ${EnrollmentID} ;;
  }

  measure: enrollments_where_eligibleforrhy_is_not_no_and_reasonnoservices_is_not_null {
    group_label: "dqEnrollment"
    view_label: "Analysis - Dq"
    label: "Enrollments where EligibleForRHY is not No and ReasonNoServices is not null"
    type: count_distinct

    filters: [
      enrollment.EligibleForRHY: "-0",
      enrollment.ReasonNoServices: "-NULL,-EMPTY"
    ]

    drill_fields: [enrollment_queries_drill_fields*]
    sql: ${EnrollmentID} ;;
  }

  measure: enrollments_where_eligibleforrhy_is_yes_and_runawayyouth_is_not_null {
    group_label: "dqEnrollment"
    view_label: "Analysis - Dq"
    label: "Enrollments where EligibleForRHY is Yes and RunawayYouth is not null"
    type: count_distinct

    filters: [
      enrollment.EligibleForRHY: "-1",
      enrollment.RunawayYouth: "-NULL,-EMPTY"
    ]

    drill_fields: [enrollment_queries_drill_fields*]
    sql: ${EnrollmentID} ;;
  }

  measure: invalid_date_formatting_for_datetostreetessh_in_enrollment.csv {
    group_label: "DateFormatting"
    view_label: "Analysis - Major"
    label: "Invalid Date Formatting for DateToStreetESSH in Enrollment.csv"
    type: count_distinct

    filters: [
      enrollment.DateToStreetESSH: "-____-__-__"
    ]

    drill_fields: [enrollment_queries_drill_fields*]
    sql: ${EnrollmentID} ;;
  }

  measure: invalid_date_formatting_for_entrydate_in_enrollment.csv {
    group_label: "DateFormatting"
    view_label: "Analysis - Major"
    label: "Invalid Date Formatting for EntryDate in Enrollment.csv"
    type: count_distinct

    filters: [
      enrollment.EntryDate: "-____-__-__"
    ]

    drill_fields: [enrollment_queries_drill_fields*]
    sql: ${EnrollmentID} ;;
  }

  measure: invalid_date_formatting_for_datecreated_in_enrollment.csv {
    group_label: "DateFormatting"
    view_label: "Analysis - Major"
    label: "Invalid Date Formatting for DateCreated in Enrollment.csv"
    type: count_distinct

    filters: [
      enrollment.DateCreated: "-____-__-__ __:__:__"
    ]

    drill_fields: [enrollment_queries_drill_fields*]
    sql: ${EnrollmentID} ;;
  }

  measure: invalid_date_formatting_for_dateupdated_in_enrollment.csv {
    group_label: "DateFormatting"
    view_label: "Analysis - Major"
    label: "Invalid Date Formatting for DateUpdated in Enrollment.csv"
    type: count_distinct

    filters: [
      enrollment.DateUpdated: "-____-__-__ __:__:__"
    ]

    drill_fields: [enrollment_queries_drill_fields*]
    sql: ${EnrollmentID} ;;
  }

  set: enrollment_queries_drill_fields {
    fields: [
      EnrollmentID
    ]
  }
}
