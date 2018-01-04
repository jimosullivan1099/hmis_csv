view: servicemappings {
  sql_table_name: servicemappings ;;

  dimension: Activity {
    type: string
    sql: ${TABLE}.Activity ;;
  }

  dimension: ActivityType {
    type: string
    sql: ${TABLE}.ActivityType ;;
  }

  dimension: Cost {
    type: string
    sql: ${TABLE}.Cost ;;
  }

  dimension: DateCreated {
    type: string
    sql: ${TABLE}.DateCreated ;;
  }

  dimension: DateDeleted {
    type: string
    sql: ${TABLE}.DateDeleted ;;
  }

  dimension: DateEnded {
    type: string
    sql: ${TABLE}.DateEnded ;;
  }

  dimension: DateProvided {
    type: string
    sql: ${TABLE}.DateProvided ;;
  }

  dimension: DateUpdated {
    type: string
    sql: ${TABLE}.DateUpdated ;;
  }

  dimension: ExportID {
    type: string
    # hidden: yes
    sql: ${TABLE}.ExportID ;;
  }

  dimension: FAAmount {
    type: string
    sql: ${TABLE}.FAAmount ;;
  }

  dimension: OrganizationID {
    type: string
    # hidden: yes
    sql: ${TABLE}.OrganizationID ;;
  }

  dimension: OtherTypeProvided {
    type: string
    sql: ${TABLE}.OtherTypeProvided ;;
  }

  dimension: PersonalID {
    type: string
    sql: ${TABLE}.PersonalID ;;
  }

  dimension: ProjectEntryID {
    type: string
    sql: ${TABLE}.ProjectEntryID ;;
  }

  dimension: ProjectID {
    type: string
    sql: ${TABLE}.ProjectID ;;
  }

  dimension: RecordType {
    type: string
    sql: ${TABLE}.RecordType ;;
  }

  dimension: ReferralOutcome {
    type: string
    sql: ${TABLE}.ReferralOutcome ;;
  }

  dimension: ServicesID {
    type: string
    sql: ${TABLE}.ServicesID ;;
  }

  dimension: SubTypeProvided {
    type: string
    sql: ${TABLE}.SubTypeProvided ;;
  }

  dimension: TypeProvided {
    type: string
    sql: ${TABLE}.TypeProvided ;;
  }

  dimension: UnitAmount {
    type: string
    sql: ${TABLE}.UnitAmount ;;
  }

  dimension: UnitType {
    type: string
    sql: ${TABLE}.UnitType ;;
  }

  dimension: UserID {
    type: string
    sql: ${TABLE}.UserID ;;
  }

  measure: count {
    type: count
  }
}
