view: event {
  derived_table: {
    sql: SELECT * FROM event ;;
  }

  dimension: EventID {
    primary_key: yes
    type: string
    sql: ${TABLE}.EventID ;;
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

  dimension: Event {
    type: string
    sql: ${TABLE}.Event ;;
  }

  dimension: EventDate {
    type: string
    sql: ${TABLE}.EventDate ;;
  }

  dimension: ExportID {
    type: string
    sql: ${TABLE}.ExportID ;;
  }

  dimension: LocationCrisisorPHHousing {
    type: string
    sql: ${TABLE}.LocationCrisisorPHHousing ;;
  }

  dimension: PersonalID {
    type: string
    sql: ${TABLE}.PersonalID ;;
  }

  dimension: ProbSolDivRRResult {
    type: string
    sql: ${TABLE}.ProbSolDivRRResult ;;
  }

  dimension: ReferralCaseManageAfter {
    type: string
    sql: ${TABLE}.ReferralCaseManageAfter ;;
  }

  dimension: ReferralResult {
    type: string
    sql: ${TABLE}.ReferralResult ;;
  }

  dimension: ResultDate {
    type: string
    sql: ${TABLE}.ResultDate ;;
  }

  dimension: UserID {
    type: string
    # hidden: yes
    sql: ${TABLE}.UserID ;;
  }

  measure: count {
    type: count
  }
}
