view: notes_custom {
  sql_table_name: {% parameter table_name %} ;;

  parameter: table_name {
    type: unquoted
    default_value: "_c_notes"
  }

  dimension: NoteID {
    primary_key: yes
    type: string
    label: "NoteID"
    sql: ${TABLE}.NoteID ;;
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

  dimension: ServicesID {
    type: string
    label: "ServicesID"
    sql: ${TABLE}.ServicesID ;;
  }

  dimension: Title {
    type: string
    label: "Title"
    sql: ${TABLE}.Title ;;
  }

  dimension: Note {
    type: string
    label: "Note"
    sql: ${TABLE}.Note ;;
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
