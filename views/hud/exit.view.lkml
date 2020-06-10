view: exit {
  sql_table_name: exit ;;

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

  dimension: OtherDestination {
    type: string
    label: "OtherDestination"
    sql: ${TABLE}.OtherDestination ;;
  }

  dimension: HousingAssessment {
    type: string
    label: "HousingAssessment"
    sql: ${TABLE}.HousingAssessment ;;
  }

  dimension: SubsidyInformation {
    type: string
    label: "SubsidyInformation"
    sql: ${TABLE}.SubsidyInformation ;;
  }

  dimension: ProjectCompletionStatus {
    type: string
    label: "ProjectCompletionStatus"
    sql: ${TABLE}.ProjectCompletionStatus ;;
  }

  dimension: EarlyExitReason {
    type: string
    label: "EarlyExitReason"
    sql: ${TABLE}.EarlyExitReason ;;
  }

  dimension: ExchangeForSex {
    type: string
    label: "ExchangeForSex"
    sql: ${TABLE}.ExchangeForSex ;;
  }

  dimension: ExchangeForSexPastThreeMonths {
    type: string
    label: "ExchangeForSexPastThreeMonths"
    sql: ${TABLE}.ExchangeForSexPastThreeMonths ;;
  }

  dimension: CountOfExchangeForSex {
    type: string
    label: "CountOfExchangeForSex"
    sql: ${TABLE}.CountOfExchangeForSex ;;
  }

  dimension: AskedOrForcedToExchangeForSex {
    type: string
    label: "AskedOrForcedToExchangeForSex"
    sql: ${TABLE}.AskedOrForcedToExchangeForSex ;;
  }

  dimension: AskedOrForcedToExchangeForSexPastThreeMonths {
    type: string
    label: "AskedOrForcedToExchangeForSexPastThreeMonths"
    sql: ${TABLE}.AskedOrForcedToExchangeForSexPastThreeMonths ;;
  }

  dimension: WorkPlaceViolenceThreats {
    type: string
    label: "WorkPlaceViolenceThreats"
    sql: ${TABLE}.WorkPlaceViolenceThreats ;;
  }

  dimension: WorkplacePromiseDifference {
    type: string
    label: "WorkplacePromiseDifference"
    sql: ${TABLE}.WorkplacePromiseDifference ;;
  }

  dimension: CoercedToContinueWork {
    type: string
    label: "CoercedToContinueWork"
    sql: ${TABLE}.CoercedToContinueWork ;;
  }

  dimension: LaborExploitPastThreeMonths {
    type: string
    label: "LaborExploitPastThreeMonths"
    sql: ${TABLE}.LaborExploitPastThreeMonths ;;
  }

  dimension: CounselingReceived {
    type: string
    label: "CounselingReceived"
    sql: ${TABLE}.CounselingReceived ;;
  }

  dimension: IndividualCounseling {
    type: string
    label: "IndividualCounseling"
    sql: ${TABLE}.IndividualCounseling ;;
  }

  dimension: FamilyCounseling {
    type: string
    label: "FamilyCounseling"
    sql: ${TABLE}.FamilyCounseling ;;
  }

  dimension: GroupCounseling {
    type: string
    label: "GroupCounseling"
    sql: ${TABLE}.GroupCounseling ;;
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

  dimension: DestinationSafeWorker {
    type: string
    label: "DestinationSafeWorker"
    sql: ${TABLE}.DestinationSafeWorker ;;
  }

  dimension: PosAdultConnections {
    type: string
    label: "PosAdultConnections"
    sql: ${TABLE}.PosAdultConnections ;;
  }

  dimension: PosPeerConnections {
    type: string
    label: "PosPeerConnections"
    sql: ${TABLE}.PosPeerConnections ;;
  }

  dimension: PosCommunityConnections {
    type: string
    label: "PosCommunityConnections"
    sql: ${TABLE}.PosCommunityConnections ;;
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

  dimension: EmailSocialMedia {
    type: string
    label: "EmailSocialMedia"
    sql: ${TABLE}.EmailSocialMedia ;;
  }

  dimension: Telephone {
    type: string
    label: "Telephone"
    sql: ${TABLE}.Telephone ;;
  }

  dimension: InPersonIndividual {
    type: string
    label: "InPersonIndividual"
    sql: ${TABLE}.InPersonIndividual ;;
  }

  dimension: InPersonGroup {
    type: string
    label: "InPersonGroup"
    sql: ${TABLE}.InPersonGroup ;;
  }

  dimension: CMExitReason {
    type: string
    label: "CMExitReason"
    sql: ${TABLE}.CMExitReason ;;
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
