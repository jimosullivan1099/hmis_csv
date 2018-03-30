view: enrollment_exit_counts {
  derived_table: {
    sql:
      SELECT e.EnrollmentID, ex.ExitID, COUNT(*) AS count
      FROM enrollment e
      INNER JOIN `exit` ex ON e.EnrollmentID = ex.EnrollmentID
      GROUP BY e.EnrollmentID
      ;;
    indexes: ["EnrollmentID", "ExitID"]
    sql_trigger_value: SELECT COUNT(*) FROM enrollment ;;
  }

  dimension: EnrollmentID {
    type: string
    sql: ${TABLE}.EnrollmentID ;;
  }

  dimension: ExitID {
    type: string
    sql: ${TABLE}.ExitID ;;
  }

  dimension: count {
    type: number
    sql: ${TABLE}.count ;;
  }
}
