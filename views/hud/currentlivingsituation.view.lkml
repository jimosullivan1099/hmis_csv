view: currentlivingsituation {
  sql_table_name: currentlivingsituation ;;

  dimension: CurrentLivingSitID {
    primary_key: yes
    type: string
    sql: ${TABLE}.CurrentLivingSitID ;;
  }

  dimension: CurrentLivingSituation {
    type: string
    sql: ${TABLE}.CurrentLivingSituation ;;
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

  dimension: EnrollmentID {
    type: string
    sql: ${TABLE}.EnrollmentID ;;
  }

  dimension: ExportID {
    type: string
    sql: ${TABLE}.ExportID ;;
  }

  dimension: InformationDate {
    type: string
    sql: ${TABLE}.InformationDate ;;
  }

  dimension: LeaseOwn60Day {
    type: string
    sql: ${TABLE}.LeaseOwn60Day ;;
  }

  dimension: LeaveSituation14Days {
    type: string
    sql: ${TABLE}.LeaveSituation14Days ;;
  }

  dimension: LocationDetails {
    type: string
    sql: ${TABLE}.LocationDetails ;;
  }

  dimension: MovedTwoOrMore {
    type: string
    sql: ${TABLE}.MovedTwoOrMore ;;
  }

  dimension: PersonalID {
    type: string
    sql: ${TABLE}.PersonalID ;;
  }

  dimension: ResourcesToObtain {
    type: string
    sql: ${TABLE}.ResourcesToObtain ;;
  }

  dimension: SubsequentResidence {
    type: string
    sql: ${TABLE}.SubsequentResidence ;;
  }

  dimension: UserID {
    type: string
    # hidden: yes
    sql: ${TABLE}.UserID ;;
  }

  dimension: VerifiedBy {
    type: string
    sql: ${TABLE}.VerifiedBy ;;
  }

  measure: count {
    type: count
  }
}
