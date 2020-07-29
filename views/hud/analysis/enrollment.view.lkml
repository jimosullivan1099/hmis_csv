include: "/views/hud/enrollment.view"
include: "/views/hud/enrollment_household_counts.view"

view: +enrollment {
#   measure: reused_household_id_values {
#     group_label: "Household"
#     label: "Reused HouseholdID Values"
#     type: count_distinct
#
#     sql:  CASE
#             WHEN (
#               ${enrollment_household_counts.count_distinct_clients} != ${enrollment_household_counts.enrollment_count}
#               AND ${enrollment_household_counts.HouseholdID} IS NOT NULL
#               AND ${enrollment_household_counts.HouseholdID} != ""
#             ) THEN ${enrollment_household_counts.HouseholdID}
#             ELSE NULL
#           END ;;
#   }
#
#   measure: count_hoh_without_enrollment_coc_at_entry {
#     group_label: "Household"
#     label: "Count HoH Without Enrollment COC at Entry"
#     type: count_distinct
#
#     filters: [
#       enrollment.RelationshipToHoH: "1",
#       enrollmentcoc_at_entry.EnrollmentCoCID: "EMPTY,NULL"
#     ]
#
#     sql: ${EnrollmentID} ;;
#   }
}
