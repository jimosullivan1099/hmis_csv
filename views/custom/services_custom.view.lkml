view: services_custom {
  sql_table_name: {% parameter table_name %} ;;

  parameter: table_name {
    type: unquoted
    default_value: "_c_services"
  }

  dimension: ServicesID {
    primary_key: yes
    type: string
    label: "ServicesID"
    sql: ${TABLE}.ServicesID ;;
  }

  dimension: PersonalID {
    type: string
    label: "PersonalID"
    sql: ${TABLE}.PersonalID ;;
  }

  dimension: AgencyID {
    type: string
    label: "AgencyID"
    sql: ${TABLE}.AgencyID ;;
  }

  dimension: EnrollmentID {
    type: string
    label: "EnrollmentID"
    sql: ${TABLE}.EnrollmentID ;;
  }

  dimension: ServiceItemID {
    type: string
    label: "ServiceItemID"
    sql: ${TABLE}.ServiceItemID ;;
  }

  dimension: DateProvided {
    type: string
    label: "DateProvided"
    sql: ${TABLE}.DateProvided ;;
  }

  dimension: FAAmount {
    type: string
    label: "FAAmount"
    sql: ${TABLE}.FAAmount ;;
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
