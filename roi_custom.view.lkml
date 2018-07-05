view: roi_custom {
  sql_table_name: {% parameter table_name %} ;;

  parameter: table_name {
    type: unquoted
    default_value: "_c_roi"
  }

  dimension: ROIID {
    primary_key: yes
    type: string
    label: "ROIID"
    sql: ${TABLE}.ROIID ;;
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

  dimension: Permission {
    type: string
    label: "Permission"
    sql: ${TABLE}.Permission ;;
  }

  dimension: StartDate {
    type: string
    label: "StartDate"
    sql: ${TABLE}.StartDate ;;
  }

  dimension: EndDate {
    type: string
    label: "EndDate"
    sql: ${TABLE}.EndDate ;;
  }

  dimension: Documentation {
    type: string
    label: "Documentation"
    sql: ${TABLE}.Documentation ;;
  }

  dimension: Location {
    type: string
    label: "Location"
    sql: ${TABLE}.Location ;;
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
