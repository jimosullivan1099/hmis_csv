include: "/views/custom/notes_custom.view"

view: +notes_custom {

  measure: notes_count {
    group_label: "Counts"
    view_label: "Analysis - Custom"
    label: "Notes Count"
    type: count_distinct
    drill_fields: [notes_custom_drill_fields*]

    sql: ${NoteID} ;;
  }

  measure: title_null_or_empty_value_count {
    group_label: "Counts"
    view_label: "Analysis - Custom"
    label: "Title is Null or Empty Count"
    type: count_distinct
    filters: [
      Title: "NULL,EMPTY"
    ]
    drill_fields: [notes_custom_drill_fields*]
    sql: ${NoteID} ;;
  }

  measure: note_null_or_empty_value_count {
    group_label: "Counts"
    view_label: "Analysis - Custom"
    label: "Note is Null or Empty Count"
    type: count_distinct
    filters: [
      Note: "NULL,EMPTY"
    ]
    drill_fields: [notes_custom_drill_fields*]
    sql: ${NoteID} ;;
  }

  measure: custom_note_without_key_in_services_count {
    group_label: "Counts"
    view_label: "Analysis - Custom"
    label: "Count of Custom NoteID without Key in Services Count"
    type: number
    sql:
        COUNT(DISTINCT CASE WHEN ${NoteID} NOT IN (SELECT NoteID FROM services)
                   THEN ${NoteID}
                   ELSE NULL
              END)
    ;;
  }

  set: notes_custom_drill_fields {
    fields: [
      NoteID,
      PersonalID
    ]
  }
}
