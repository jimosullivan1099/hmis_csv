view: exit {
  derived_table: {
    sql:
      SELECT
        t.*,
        (
          SELECT GROUP_CONCAT(ff.name, '_' , CONCAT(lv.value, ':', lv.text ) SEPARATOR '; ')
          FROM ${list_values.SQL_TABLE_NAME} lv INNER JOIN ${file_fields.SQL_TABLE_NAME} ff ON ff.list = lv.list_code
          WHERE ff.filename = 'Exit.csv'
        ) AS lookup
      FROM `exit` t ;;
    indexes: ["ExitID", "EnrollmentID", "PersonalID"]
    datagroup_trigger: client_data
  }

  dimension: lookup {
    type: string
    hidden: yes
    sql: ${TABLE}.lookup ;;
  }

  dimension: ExitID {
    type: string
    label: "ExitID"
    primary_key: yes
    sql: ${TABLE}.ExitID ;;
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

  dimension: ExitDate {
    label: "ExitDate"
    sql: ${TABLE}.ExitDate ;;
  }

  dimension_group: ExitDateGroup {
    type: time
    label: "ExitDate"
    sql: ${TABLE}.ExitDate ;;
  }

  dimension: Destination {
    type: string
    label: "Destination"
    sql: ${TABLE}.Destination ;;
  }

  dimension: DestinationText {
    type: string
    label: "DestinationText"
    sql: CASE WHEN ${TABLE}.Destination IS NOT NULL AND ${TABLE}.Destination <> '' THEN SUBSTRING_INDEX(SUBSTRING_INDEX(${TABLE}.lookup, CONCAT('Destination_', ${TABLE}.Destination, ':'), -1), ';', 1) END ;;
  }

  dimension: OtherDestination {
    type: string
    label: "OtherDestination"
    sql: ${TABLE}.OtherDestination ;;
  }

  dimension: AssessmentDisposition {
    type: string
    label: "AssessmentDisposition"
    sql: ${TABLE}.AssessmentDisposition ;;
  }

  dimension: AssessmentDispositionText {
    type: string
    label: "AssessmentDispositionText"
    sql: CASE WHEN ${TABLE}.AssessmentDisposition IS NOT NULL AND ${TABLE}.AssessmentDisposition <> '' THEN SUBSTRING_INDEX(SUBSTRING_INDEX(${TABLE}.lookup, CONCAT('AssessmentDisposition_', ${TABLE}.AssessmentDisposition, ':'), -1), ';', 1) END ;;
  }

  dimension: OtherDisposition {
    type: string
    label: "OtherDisposition"
    sql: ${TABLE}.OtherDisposition ;;
  }

  dimension: HousingAssessment {
    type: string
    label: "HousingAssessment"
    sql: ${TABLE}.HousingAssessment ;;
  }

  dimension: HousingAssessmentText {
    type: string
    label: "HousingAssessmentText"
    sql: CASE WHEN ${TABLE}.HousingAssessment IS NOT NULL AND ${TABLE}.HousingAssessment <> '' THEN SUBSTRING_INDEX(SUBSTRING_INDEX(${TABLE}.lookup, CONCAT('HousingAssessment_', ${TABLE}.HousingAssessment, ':'), -1), ';', 1) END ;;
  }

  dimension: SubsidyInformation {
    type: string
    label: "SubsidyInformation"
    sql: ${TABLE}.SubsidyInformation ;;
  }

  dimension: SubsidyInformationText {
    type: string
    label: "SubsidyInformationText"
    sql: CASE WHEN ${TABLE}.SubsidyInformation IS NOT NULL AND ${TABLE}.SubsidyInformation <> '' THEN SUBSTRING_INDEX(SUBSTRING_INDEX(${TABLE}.lookup, CONCAT('SubsidyInformation_', ${TABLE}.SubsidyInformation, ':'), -1), ';', 1) END ;;
  }

  dimension: ProjectCompletionStatus {
    type: string
    label: "ProjectCompletionStatus"
    sql: ${TABLE}.ProjectCompletionStatus ;;
  }

  dimension: ProjectCompletionStatusText {
    type: string
    label: "ProjectCompletionStatusText"
    sql: CASE WHEN ${TABLE}.ProjectCompletionStatus IS NOT NULL AND ${TABLE}.ProjectCompletionStatus <> '' THEN SUBSTRING_INDEX(SUBSTRING_INDEX(${TABLE}.lookup, CONCAT('ProjectCompletionStatus_', ${TABLE}.ProjectCompletionStatus, ':'), -1), ';', 1) END ;;
  }

  dimension: EarlyExitReason {
    type: string
    label: "EarlyExitReason"
    sql: ${TABLE}.EarlyExitReason ;;
  }

  dimension: EarlyExitReasonText {
    type: string
    label: "EarlyExitReasonText"
    sql: CASE WHEN ${TABLE}.EarlyExitReason IS NOT NULL AND ${TABLE}.EarlyExitReason <> '' THEN SUBSTRING_INDEX(SUBSTRING_INDEX(${TABLE}.lookup, CONCAT('EarlyExitReason_', ${TABLE}.EarlyExitReason, ':'), -1), ';', 1) END ;;
  }

  dimension: ExchangeForSex {
    type: string
    label: "ExchangeForSex"
    sql: ${TABLE}.ExchangeForSex ;;
  }

  dimension: ExchangeForSexText {
    type: string
    label: "ExchangeForSexText"
    sql: CASE WHEN ${TABLE}.ExchangeForSex IS NOT NULL AND ${TABLE}.ExchangeForSex <> '' THEN SUBSTRING_INDEX(SUBSTRING_INDEX(${TABLE}.lookup, CONCAT('ExchangeForSex_', ${TABLE}.ExchangeForSex, ':'), -1), ';', 1) END ;;
  }

  dimension: ExchangeForSexPastThreeMonths {
    type: string
    label: "ExchangeForSexPastThreeMonths"
    sql: ${TABLE}.ExchangeForSexPastThreeMonths ;;
  }

  dimension: ExchangeForSexPastThreeMonthsText {
    type: string
    label: "ExchangeForSexPastThreeMonthsText"
    sql: CASE WHEN ${TABLE}.ExchangeForSexPastThreeMonths IS NOT NULL AND ${TABLE}.ExchangeForSexPastThreeMonths <> '' THEN SUBSTRING_INDEX(SUBSTRING_INDEX(${TABLE}.lookup, CONCAT('ExchangeForSexPastThreeMonths_', ${TABLE}.ExchangeForSexPastThreeMonths, ':'), -1), ';', 1) END ;;
  }

  dimension: CountOfExchangeForSex {
    type: string
    label: "CountOfExchangeForSex"
    sql: ${TABLE}.CountOfExchangeForSex ;;
  }

  dimension: CountOfExchangeForSexText {
    type: string
    label: "CountOfExchangeForSexText"
    sql: CASE WHEN ${TABLE}.CountOfExchangeForSex IS NOT NULL AND ${TABLE}.CountOfExchangeForSex <> '' THEN SUBSTRING_INDEX(SUBSTRING_INDEX(${TABLE}.lookup, CONCAT('CountOfExchangeForSex_', ${TABLE}.CountOfExchangeForSex, ':'), -1), ';', 1) END ;;
  }

  dimension: AskedOrForcedToExchangeForSex {
    type: string
    label: "AskedOrForcedToExchangeForSex"
    sql: ${TABLE}.AskedOrForcedToExchangeForSex ;;
  }

  dimension: AskedOrForcedToExchangeForSexText {
    type: string
    label: "AskedOrForcedToExchangeForSexText"
    sql: CASE WHEN ${TABLE}.AskedOrForcedToExchangeForSex IS NOT NULL AND ${TABLE}.AskedOrForcedToExchangeForSex <> '' THEN SUBSTRING_INDEX(SUBSTRING_INDEX(${TABLE}.lookup, CONCAT('AskedOrForcedToExchangeForSex_', ${TABLE}.AskedOrForcedToExchangeForSex, ':'), -1), ';', 1) END ;;
  }

  dimension: AskedOrForcedToExchangeForSexPastThreeMonths {
    type: string
    label: "AskedOrForcedToExchangeForSexPastThreeMonths"
    sql: ${TABLE}.AskedOrForcedToExchangeForSexPastThreeMonths ;;
  }

  dimension: AskedOrForcedToExchangeForSexPastThreeMonthsText {
    type: string
    label: "AskedOrForcedToExchangeForSexPastThreeMonthsText"
    sql: CASE WHEN ${TABLE}.AskedOrForcedToExchangeForSexPastThreeMonths IS NOT NULL AND ${TABLE}.AskedOrForcedToExchangeForSexPastThreeMonths <> '' THEN SUBSTRING_INDEX(SUBSTRING_INDEX(${TABLE}.lookup, CONCAT('AskedOrForcedToExchangeForSexPastThreeMonths_', ${TABLE}.AskedOrForcedToExchangeForSexPastThreeMonths, ':'), -1), ';', 1) END ;;
  }

  dimension: WorkPlaceViolenceThreats {
    type: string
    label: "WorkPlaceViolenceThreats"
    sql: ${TABLE}.WorkPlaceViolenceThreats ;;
  }

  dimension: WorkPlaceViolenceThreatsText {
    type: string
    label: "WorkPlaceViolenceThreatsText"
    sql: CASE WHEN ${TABLE}.WorkPlaceViolenceThreats IS NOT NULL AND ${TABLE}.WorkPlaceViolenceThreats <> '' THEN SUBSTRING_INDEX(SUBSTRING_INDEX(${TABLE}.lookup, CONCAT('WorkPlaceViolenceThreats_', ${TABLE}.WorkPlaceViolenceThreats, ':'), -1), ';', 1) END ;;
  }

  dimension: WorkplacePromiseDifference {
    type: string
    label: "WorkplacePromiseDifference"
    sql: ${TABLE}.WorkplacePromiseDifference ;;
  }

  dimension: WorkplacePromiseDifferenceText {
    type: string
    label: "WorkplacePromiseDifferenceText"
    sql: CASE WHEN ${TABLE}.WorkplacePromiseDifference IS NOT NULL AND ${TABLE}.WorkplacePromiseDifference <> '' THEN SUBSTRING_INDEX(SUBSTRING_INDEX(${TABLE}.lookup, CONCAT('WorkplacePromiseDifference_', ${TABLE}.WorkplacePromiseDifference, ':'), -1), ';', 1) END ;;
  }

  dimension: CoercedToContinueWork {
    type: string
    label: "CoercedToContinueWork"
    sql: ${TABLE}.CoercedToContinueWork ;;
  }

  dimension: CoercedToContinueWorkText {
    type: string
    label: "CoercedToContinueWorkText"
    sql: CASE WHEN ${TABLE}.CoercedToContinueWork IS NOT NULL AND ${TABLE}.CoercedToContinueWork <> '' THEN SUBSTRING_INDEX(SUBSTRING_INDEX(${TABLE}.lookup, CONCAT('CoercedToContinueWork_', ${TABLE}.CoercedToContinueWork, ':'), -1), ';', 1) END ;;
  }

  dimension: LaborExploitPastThreeMonths {
    type: string
    label: "LaborExploitPastThreeMonths"
    sql: ${TABLE}.LaborExploitPastThreeMonths ;;
  }

  dimension: LaborExploitPastThreeMonthsText {
    type: string
    label: "LaborExploitPastThreeMonthsText"
    sql: CASE WHEN ${TABLE}.LaborExploitPastThreeMonths IS NOT NULL AND ${TABLE}.LaborExploitPastThreeMonths <> '' THEN SUBSTRING_INDEX(SUBSTRING_INDEX(${TABLE}.lookup, CONCAT('LaborExploitPastThreeMonths_', ${TABLE}.LaborExploitPastThreeMonths, ':'), -1), ';', 1) END ;;
  }

  dimension: CounselingReceived {
    type: string
    label: "CounselingReceived"
    sql: ${TABLE}.CounselingReceived ;;
  }

  dimension: CounselingReceivedText {
    type: string
    label: "CounselingReceivedText"
    sql: CASE WHEN ${TABLE}.CounselingReceived IS NOT NULL AND ${TABLE}.CounselingReceived <> '' THEN SUBSTRING_INDEX(SUBSTRING_INDEX(${TABLE}.lookup, CONCAT('CounselingReceived_', ${TABLE}.CounselingReceived, ':'), -1), ';', 1) END ;;
  }

  dimension: IndividualCounseling {
    type: string
    label: "IndividualCounseling"
    sql: ${TABLE}.IndividualCounseling ;;
  }

  dimension: IndividualCounselingText {
    type: string
    label: "IndividualCounselingText"
    sql: CASE WHEN ${TABLE}.IndividualCounseling IS NOT NULL AND ${TABLE}.IndividualCounseling <> '' THEN SUBSTRING_INDEX(SUBSTRING_INDEX(${TABLE}.lookup, CONCAT('IndividualCounseling_', ${TABLE}.IndividualCounseling, ':'), -1), ';', 1) END ;;
  }

  dimension: FamilyCounseling {
    type: string
    label: "FamilyCounseling"
    sql: ${TABLE}.FamilyCounseling ;;
  }

  dimension: FamilyCounselingText {
    type: string
    label: "FamilyCounselingText"
    sql: CASE WHEN ${TABLE}.FamilyCounseling IS NOT NULL AND ${TABLE}.FamilyCounseling <> '' THEN SUBSTRING_INDEX(SUBSTRING_INDEX(${TABLE}.lookup, CONCAT('FamilyCounseling_', ${TABLE}.FamilyCounseling, ':'), -1), ';', 1) END ;;
  }

  dimension: GroupCounseling {
    type: string
    label: "GroupCounseling"
    sql: ${TABLE}.GroupCounseling ;;
  }

  dimension: GroupCounselingText {
    type: string
    label: "GroupCounselingText"
    sql: CASE WHEN ${TABLE}.GroupCounseling IS NOT NULL AND ${TABLE}.GroupCounseling <> '' THEN SUBSTRING_INDEX(SUBSTRING_INDEX(${TABLE}.lookup, CONCAT('GroupCounseling_', ${TABLE}.GroupCounseling, ':'), -1), ';', 1) END ;;
  }

  dimension: SessionCountAtExit {
    type: string
    label: "SessionCountAtExit"
    sql: ${TABLE}.SessionCountAtExit ;;
  }

  dimension: PostExitCounselingPlan {
    type: string
    label: "PostExitCounselingPlan"
    sql: ${TABLE}.PostExitCounselingPlan ;;
  }

  dimension: PostExitCounselingPlanText {
    type: string
    label: "PostExitCounselingPlanText"
    sql: CASE WHEN ${TABLE}.PostExitCounselingPlan IS NOT NULL AND ${TABLE}.PostExitCounselingPlan <> '' THEN SUBSTRING_INDEX(SUBSTRING_INDEX(${TABLE}.lookup, CONCAT('PostExitCounselingPlan_', ${TABLE}.PostExitCounselingPlan, ':'), -1), ';', 1) END ;;
  }

  dimension: SessionsInPlan {
    type: string
    label: "SessionsInPlan"
    sql: ${TABLE}.SessionsInPlan ;;
  }

  dimension: DestinationSafeClient {
    type: string
    label: "DestinationSafeClient"
    sql: ${TABLE}.DestinationSafeClient ;;
  }

  dimension: DestinationSafeClientText {
    type: string
    label: "DestinationSafeClientText"
    sql: CASE WHEN ${TABLE}.DestinationSafeClient IS NOT NULL AND ${TABLE}.DestinationSafeClient <> '' THEN SUBSTRING_INDEX(SUBSTRING_INDEX(${TABLE}.lookup, CONCAT('DestinationSafeClient_', ${TABLE}.DestinationSafeClient, ':'), -1), ';', 1) END ;;
  }

  dimension: DestinationSafeWorker {
    type: string
    label: "DestinationSafeWorker"
    sql: ${TABLE}.DestinationSafeWorker ;;
  }

  dimension: DestinationSafeWorkerText {
    type: string
    label: "DestinationSafeWorkerText"
    sql: CASE WHEN ${TABLE}.DestinationSafeWorker IS NOT NULL AND ${TABLE}.DestinationSafeWorker <> '' THEN SUBSTRING_INDEX(SUBSTRING_INDEX(${TABLE}.lookup, CONCAT('DestinationSafeWorker_', ${TABLE}.DestinationSafeWorker, ':'), -1), ';', 1) END ;;
  }

  dimension: PosAdultConnections {
    type: string
    label: "PosAdultConnections"
    sql: ${TABLE}.PosAdultConnections ;;
  }

  dimension: PosAdultConnectionsText {
    type: string
    label: "PosAdultConnectionsText"
    sql: CASE WHEN ${TABLE}.PosAdultConnections IS NOT NULL AND ${TABLE}.PosAdultConnections <> '' THEN SUBSTRING_INDEX(SUBSTRING_INDEX(${TABLE}.lookup, CONCAT('PosAdultConnections_', ${TABLE}.PosAdultConnections, ':'), -1), ';', 1) END ;;
  }

  dimension: PosPeerConnections {
    type: string
    label: "PosPeerConnections"
    sql: ${TABLE}.PosPeerConnections ;;
  }

  dimension: PosPeerConnectionsText {
    type: string
    label: "PosPeerConnectionsText"
    sql: CASE WHEN ${TABLE}.PosPeerConnections IS NOT NULL AND ${TABLE}.PosPeerConnections <> '' THEN SUBSTRING_INDEX(SUBSTRING_INDEX(${TABLE}.lookup, CONCAT('PosPeerConnections_', ${TABLE}.PosPeerConnections, ':'), -1), ';', 1) END ;;
  }

  dimension: PosCommunityConnections {
    type: string
    label: "PosCommunityConnections"
    sql: ${TABLE}.PosCommunityConnections ;;
  }

  dimension: PosCommunityConnectionsText {
    type: string
    label: "PosCommunityConnectionsText"
    sql: CASE WHEN ${TABLE}.PosCommunityConnections IS NOT NULL AND ${TABLE}.PosCommunityConnections <> '' THEN SUBSTRING_INDEX(SUBSTRING_INDEX(${TABLE}.lookup, CONCAT('PosCommunityConnections_', ${TABLE}.PosCommunityConnections, ':'), -1), ';', 1) END ;;
  }

  dimension: AftercareDate {
    type: string
    label: "AftercareDate"
    sql: ${TABLE}.AftercareDate ;;
  }

  dimension: AftercareProvided {
    type: string
    label: "AftercareProvided"
    sql: ${TABLE}.AftercareProvided ;;
  }

  dimension: AftercareProvidedText {
    type: string
    label: "AftercareProvidedText"
    sql: CASE WHEN ${TABLE}.AftercareProvided IS NOT NULL AND ${TABLE}.AftercareProvided <> '' THEN SUBSTRING_INDEX(SUBSTRING_INDEX(${TABLE}.lookup, CONCAT('AftercareProvided_', ${TABLE}.AftercareProvided, ':'), -1), ';', 1) END ;;
  }

  dimension: EmailSocialMedia {
    type: string
    label: "EmailSocialMedia"
    sql: ${TABLE}.EmailSocialMedia ;;
  }

  dimension: EmailSocialMediaText {
    type: string
    label: "EmailSocialMediaText"
    sql: CASE WHEN ${TABLE}.EmailSocialMedia IS NOT NULL AND ${TABLE}.EmailSocialMedia <> '' THEN SUBSTRING_INDEX(SUBSTRING_INDEX(${TABLE}.lookup, CONCAT('EmailSocialMedia_', ${TABLE}.EmailSocialMedia, ':'), -1), ';', 1) END ;;
  }

  dimension: Telephone {
    type: string
    label: "Telephone"
    sql: ${TABLE}.Telephone ;;
  }

  dimension: TelephoneText {
    type: string
    label: "TelephoneText"
    sql: CASE WHEN ${TABLE}.Telephone IS NOT NULL AND ${TABLE}.Telephone <> '' THEN SUBSTRING_INDEX(SUBSTRING_INDEX(${TABLE}.lookup, CONCAT('Telephone_', ${TABLE}.Telephone, ':'), -1), ';', 1) END ;;
  }

  dimension: InPersonIndividual {
    type: string
    label: "InPersonIndividual"
    sql: ${TABLE}.InPersonIndividual ;;
  }

  dimension: InPersonIndividualText {
    type: string
    label: "InPersonIndividualText"
    sql: CASE WHEN ${TABLE}.InPersonIndividual IS NOT NULL AND ${TABLE}.InPersonIndividual <> '' THEN SUBSTRING_INDEX(SUBSTRING_INDEX(${TABLE}.lookup, CONCAT('InPersonIndividual_', ${TABLE}.InPersonIndividual, ':'), -1), ';', 1) END ;;
  }

  dimension: InPersonGroup {
    type: string
    label: "InPersonGroup"
    sql: ${TABLE}.InPersonGroup ;;
  }

  dimension: InPersonGroupText {
    type: string
    label: "InPersonGroupText"
    sql: CASE WHEN ${TABLE}.InPersonGroup IS NOT NULL AND ${TABLE}.InPersonGroup <> '' THEN SUBSTRING_INDEX(SUBSTRING_INDEX(${TABLE}.lookup, CONCAT('InPersonGroup_', ${TABLE}.InPersonGroup, ':'), -1), ';', 1) END ;;
  }

  dimension: CMExitReason {
    type: string
    label: "CMExitReason"
    sql: ${TABLE}.CMExitReason ;;
  }

  dimension: CMExitReasonText {
    type: string
    label: "CMExitReasonText"
    sql: CASE WHEN ${TABLE}.CMExitReason IS NOT NULL AND ${TABLE}.CMExitReason <> '' THEN SUBSTRING_INDEX(SUBSTRING_INDEX(${TABLE}.lookup, CONCAT('CMExitReason_', ${TABLE}.CMExitReason, ':'), -1), ';', 1) END ;;
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
