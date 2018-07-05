view: client_files {
  sql_table_name: {% parameter table_name %} ;;

  parameter: table_name {
    type: unquoted
    default_value: "_c_client_files"
  }

  dimension: FileID {
    primary_key: yes
    type: string
    label: "FileID"
    sql: ${TABLE}.FileID ;;
  }

  dimension: PersonalID {
    type: string
    label: "PersonalID"
    sql: ${TABLE}.PersonalID ;;
  }

  dimension: Category {
    type: string
    label: "Category"
    sql: ${TABLE}.Category ;;
  }

  dimension: FileName {
    type: string
    label: "FileName"
    sql: ${TABLE}.FileName ;;
  }

  dimension: OtherName {
    type: string
    label: "OtherName"
    sql: ${TABLE}.OtherName ;;
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
