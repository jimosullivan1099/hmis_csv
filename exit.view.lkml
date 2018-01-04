view: exit {
  sql_table_name: `exit` ;;

  dimension: ExitID {
    primary_key: yes
    type: string
    sql: ${TABLE}.ExitID ;;
  }

  dimension: AssessmentDisposition {
    type: string
    sql: ${TABLE}.AssessmentDisposition ;;
  }

  dimension: AssistanceMainstreamBenefits {
    type: string
    sql: ${TABLE}.AssistanceMainstreamBenefits ;;
  }

  dimension: ConnectionWithSOAR {
    type: string
    sql: ${TABLE}.ConnectionWithSOAR ;;
  }

  dimension: DateCreated {
    type: date
    sql: ${TABLE}.DateCreated ;;
  }

  dimension: DateDeleted {
    type: date
    sql: ${TABLE}.DateDeleted ;;
  }

  dimension: DateUpdated {
    type: date
    sql: ${TABLE}.DateUpdated ;;
  }

  dimension: Destination {
    type: string
    sql: ${TABLE}.Destination ;;
  }

  dimension: EarlyExitReason {
    type: string
    sql: ${TABLE}.EarlyExitReason ;;
  }

  dimension: ExitCounseling {
    type: string
    sql: ${TABLE}.ExitCounseling ;;
  }

  dimension: ExitDate {
    type: date
    sql: ${TABLE}.ExitDate ;;
  }

  dimension: ExportID {
    type: string
    sql: ${TABLE}.ExportID ;;
  }

  dimension: FamilyReunificationAchieved {
    type: string
    sql: ${TABLE}.FamilyReunificationAchieved ;;
  }

  dimension: FurtherFollowUpServices {
    type: string
    sql: ${TABLE}.FurtherFollowUpServices ;;
  }

  dimension: HousingAssessment {
    type: string
    sql: ${TABLE}.HousingAssessment ;;
  }

  dimension: OtherAftercarePlanOrAction {
    type: string
    sql: ${TABLE}.OtherAftercarePlanOrAction ;;
  }

  dimension: OtherDestination {
    type: string
    sql: ${TABLE}.OtherDestination ;;
  }

  dimension: OtherDisposition {
    type: string
    sql: ${TABLE}.OtherDisposition ;;
  }

  dimension: PermanentHousingPlacement {
    type: string
    sql: ${TABLE}.PermanentHousingPlacement ;;
  }

  dimension: PersonalID {
    type: string
    sql: ${TABLE}.PersonalID ;;
  }

  dimension: ProjectCompletionStatus {
    type: string
    sql: ${TABLE}.ProjectCompletionStatus ;;
  }

  dimension: EnrollmentID {
    type: string
    sql: ${TABLE}.EnrollmentID ;;
  }

  dimension: ResourcePackage {
    type: string
    sql: ${TABLE}.ResourcePackage ;;
  }

  dimension: ScheduledFollowUpContacts {
    type: string
    sql: ${TABLE}.ScheduledFollowUpContacts ;;
  }

  dimension: SubsidyInformation {
    type: string
    sql: ${TABLE}.SubsidyInformation ;;
  }

  dimension: TemporaryShelterPlacement {
    type: string
    sql: ${TABLE}.TemporaryShelterPlacement ;;
  }

  dimension: UserID {
    type: string
    sql: ${TABLE}.UserID ;;
  }

  dimension: WrittenAftercarePlan {
    type: string
    sql: ${TABLE}.WrittenAftercarePlan ;;
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

  dimension: CounselingReceived {
    type: string
    sql: ${TABLE}.CounselingReceived ;;
  }

  dimension: IndividualCounseling {
    type: string
    sql: ${TABLE}.IndividualCounseling ;;
  }

  dimension: FamilyCounseling {
    type: string
    sql: ${TABLE}.FamilyCounseling ;;
  }

  dimension: GroupCounseling {
    type: string
    sql: ${TABLE}.GroupCounseling ;;
  }

  dimension: SessionCountAtExit {
    type: string
    sql: ${TABLE}.SessionCountAtExit ;;
  }

  dimension: PostExitCounselingPlan {
    type: string
    sql: ${TABLE}.PostExitCounselingPlan ;;
  }

  dimension: SessionsInPlan {
    type: string
    sql: ${TABLE}.SessionsInPlan ;;
  }

  dimension: DestinationSafeClient {
    type: string
    sql: ${TABLE}.DestinationSafeClient ;;
  }

  dimension: DestinationSafeWorker {
    type: string
    sql: ${TABLE}.DestinationSafeWorker ;;
  }

  dimension: PosAdultConnections {
    type: string
    sql: ${TABLE}.PosAdultConnections ;;
  }

  dimension: PosPeerConnections {
    type: string
    sql: ${TABLE}.PosPeerConnections ;;
  }

  dimension: PosCommunityConnections {
    type: string
    sql: ${TABLE}.PosCommunityConnections ;;
  }

  dimension: AftercareDate {
    type: string
    sql: ${TABLE}.AftercareDate ;;
  }

  dimension: AftercareProvided {
    type: string
    sql: ${TABLE}.AftercareProvided ;;
  }

  dimension: EmailSocialMedia {
    type: string
    sql: ${TABLE}.EmailSocialMedia ;;
  }

  dimension: Telephone {
    type: string
    sql: ${TABLE}.Telephone ;;
  }

  dimension: InPersonIndividual {
    type: string
    sql: ${TABLE}.InPersonIndividual ;;
  }

  dimension: InPersonGroup {
    type: string
    sql: ${TABLE}.InPersonGroup ;;
  }

  dimension: CMExitReason {
    type: string
    sql: ${TABLE}.CMExitReason ;;
  }

  measure: count {
    type: count
  }
}
