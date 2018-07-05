view: client_location {
  sql_table_name: {% parameter table_name %} ;;

  parameter: table_name {
    type: unquoted
    default_value: "_c_client_location"
  }

  dimension: LocationID {
    primary_key: yes
    type: string
    label: "LocationID"
    sql: ${TABLE}.LocationID ;;
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

  dimension: Type {
    type: string
    label: "Type"
    sql: ${TABLE}.Type ;;
  }

  dimension: Address1 {
    type: string
    label: "Address1"
    sql: ${TABLE}.Address1 ;;
  }

  dimension: Address2 {
    type: string
    label: "Address2"
    sql: ${TABLE}.Address2 ;;
  }

  dimension: City {
    type: string
    label: "City"
    sql: ${TABLE}.City ;;
  }

  dimension: State {
    type: string
    label: "State"
    sql: ${TABLE}.State ;;
  }

  dimension: Zipcode {
    type: string
    label: "Zipcode"
    sql: ${TABLE}.Zipcode ;;
  }

  dimension: Email {
    type: string
    label: "Email"
    sql: ${TABLE}.Email ;;
  }

  dimension: Phone1 {
    type: string
    label: "Phone1"
    sql: ${TABLE}.Phone1 ;;
  }

  dimension: Phone2 {
    type: string
    label: "Phone2"
    sql: ${TABLE}.Phone2 ;;
  }

  dimension: Name {
    type: string
    label: "Name"
    sql: ${TABLE}.Name ;;
  }

  dimension: Status {
    type: string
    label: "Status"
    sql: ${TABLE}.Status ;;
  }

  dimension: Latitude {
    type: string
    label: "Latitude"
    sql: ${TABLE}.Latitude ;;
  }

  dimension: Longitude {
    type: string
    label: "Longitude"
    sql: ${TABLE}.Longitude ;;
  }

  dimension: Private {
    type: string
    label: "Private"
    sql: ${TABLE}.Private ;;
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
