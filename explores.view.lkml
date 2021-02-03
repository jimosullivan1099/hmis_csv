include: "views/hud/*.view.lkml"
include: "views/custom/*.view.lkml"
include: "views/hud/analysis/*.view.lkml"
include: "views/ui_elements.view"
include: "/views/hud_standards/list_values.view"
include: "/views/hud_standards/file_fields.view"

explore: client {
  join: enrollment {
    type: left_outer
    sql_on: ${client.PersonalID} = ${enrollment.PersonalID} ;;
    relationship: one_to_many
  }

  join: enrollment_household_counts {
    type:  left_outer
    sql_on: ${enrollment.HouseholdID} = ${enrollment_household_counts.HouseholdID} ;;
    relationship: one_to_one
  }

  join: enrollment_exit_counts {
    type:  left_outer
    sql_on: ${enrollment.EnrollmentID} = ${enrollment_exit_counts.EnrollmentID} ;;
    relationship: one_to_one
  }

  join: assessment {
    type:  left_outer
    sql_on: ${enrollment.EnrollmentID} = ${assessment.EnrollmentID} ;;
    relationship: one_to_many
  }

  join: assessmentquestions {
    type:  left_outer
    sql_on: ${assessment.AssessmentID} = ${assessmentquestions.AssessmentID} ;;
    relationship: one_to_many
  }

  join: assessmentresults {
    type:  left_outer
    sql_on: ${assessment.AssessmentID} = ${assessmentresults.AssessmentID} ;;
    relationship: one_to_many
  }

  join: currentlivingsituation {
    type:  left_outer
    sql_on: ${enrollment.EnrollmentID} = ${currentlivingsituation.EnrollmentID} ;;
    relationship: one_to_many
  }

  join: disabilities {
    type:  left_outer
    sql_on: ${enrollment.EnrollmentID} = ${disabilities.EnrollmentID} ;;
    relationship: one_to_many
  }

  join: disabilities_counts {
    type:  left_outer
    sql_on: ${enrollment.EnrollmentID} = ${disabilities_counts.EnrollmentID} ;;
    relationship: one_to_many
  }

  join: disability_types_counts {
    type:  left_outer
    sql_on: ${enrollment.EnrollmentID} = ${disability_types_counts.EnrollmentID} ;;
    relationship: one_to_many
  }

  join:  employmenteducation {
    type:  left_outer
    sql_on: ${enrollment.EnrollmentID} = ${employmenteducation.EnrollmentID} ;;
    relationship: one_to_many
  }

  join:  enrollmentcoc {
    type:  left_outer
    sql_on: ${enrollment.EnrollmentID} = ${enrollmentcoc.EnrollmentID} ;;
    relationship: one_to_many
  }

  join:  enrollmentcoc_at_entry {
    from: enrollmentcoc
    type:  left_outer
    sql_on: ${enrollment.EnrollmentID} = ${enrollmentcoc_at_entry.EnrollmentID} AND ${enrollmentcoc_at_entry.DataCollectionStage} = '1' ;;
    relationship: one_to_many
  }

  join: event {
    type:  left_outer
    sql_on: ${enrollment.EnrollmentID} = ${event.EnrollmentID} ;;
    relationship: one_to_many
  }

  join:  incomebenefits {
    type:  left_outer
    sql_on: ${enrollment.EnrollmentID} = ${incomebenefits.EnrollmentID} ;;
    relationship: one_to_many
  }

  join:  exit {
    type:  left_outer
    sql_on: ${enrollment.EnrollmentID} = ${exit.EnrollmentID} ;;
    relationship: one_to_one
  }

  join:  healthanddv {
    type:  left_outer
    sql_on: ${enrollment.EnrollmentID} = ${healthanddv.EnrollmentID} ;;
    relationship: one_to_many
  }

  join:  services {
    type:  left_outer
    sql_on: ${enrollment.EnrollmentID} = ${services.EnrollmentID} ;;
    relationship: one_to_many
  }

  join:  project {
    type:  inner
    sql_on: ${enrollment.ProjectID} = ${project.ProjectID} ;;
    relationship: one_to_one
  }

  join:  organization {
    type:  inner
    sql_on: ${project.OrganizationID} = ${organization.OrganizationID} ;;
    relationship: one_to_many
  }

  join:  funder {
    type:  inner
    sql_on: ${project.ProjectID} = ${funder.ProjectID} ;;
    relationship: one_to_many
  }

}

explore: enrollment  {

  join: client {
    type: left_outer
    sql_on: ${enrollment.PersonalID} = ${client.PersonalID} ;;
    relationship: one_to_many
  }

  join: enrollment_household_counts {
    type:  left_outer
    sql_on: ${enrollment.HouseholdID} = ${enrollment_household_counts.HouseholdID} ;;
    relationship: one_to_one
  }

  join: disabilities {
    type:  left_outer
    sql_on: ${enrollment.EnrollmentID} = ${disabilities.EnrollmentID} ;;
    relationship: one_to_many
  }

  join: disabilities_counts {
    type:  left_outer
    sql_on: ${enrollment.EnrollmentID} = ${disabilities_counts.EnrollmentID} ;;
    relationship: one_to_many
  }

  join: disability_types_counts {
    type:  left_outer
    sql_on: ${enrollment.EnrollmentID} = ${disability_types_counts.EnrollmentID} ;;
    relationship: one_to_many
  }

  join:  employmenteducation {
    type:  left_outer
    sql_on: ${enrollment.EnrollmentID} = ${employmenteducation.EnrollmentID} ;;
    relationship: one_to_many
  }

  join:  enrollmentcoc {
    type:  left_outer
    sql_on: ${enrollment.EnrollmentID} = ${enrollmentcoc.EnrollmentID} ;;
    relationship: one_to_many
  }

  join:  enrollmentcoc_at_entry {
    from: enrollmentcoc
    type:  left_outer
    sql_on: ${enrollment.EnrollmentID} = ${enrollmentcoc_at_entry.EnrollmentID} AND ${enrollmentcoc_at_entry.DataCollectionStage} = '1' ;;
    relationship: one_to_many
  }

  join:  incomebenefits {
    type:  left_outer
    sql_on: ${enrollment.EnrollmentID} = ${incomebenefits.EnrollmentID} ;;
    relationship: one_to_many
  }

  join:  exit {
    type:  left_outer
    sql_on: ${enrollment.EnrollmentID} = ${exit.EnrollmentID} ;;
    relationship: one_to_one
  }

  join:  healthanddv {
    type:  left_outer
    sql_on: ${enrollment.EnrollmentID} = ${healthanddv.EnrollmentID} ;;
    relationship: one_to_many
  }

  join:  services {
    type:  left_outer
    sql_on: ${enrollment.EnrollmentID} = ${services.EnrollmentID} ;;
    relationship: one_to_many
  }

  join:  project {
    type:  left_outer
    sql_on: ${enrollment.ProjectID} = ${project.ProjectID} ;;
    relationship: one_to_many
  }

  join:  funder {
    type:  left_outer
    sql_on: ${project.ProjectID} = ${funder.ProjectID} ;;
    relationship: one_to_many
  }
}

explore: affiliation {
#   hidden: yes
}

explore: assessment {
#   hidden: yes

  join: enrollment {
    type: left_outer
    sql_on: ${assessment.EnrollmentID} = ${enrollment.EnrollmentID} ;;
    relationship: many_to_one
  }

  join: client {
    type: left_outer
    sql_on: ${assessment.PersonalID} = ${client.PersonalID} ;;
    relationship: many_to_one
  }

  join:  project {
    type:  left_outer
    sql_on: ${enrollment.ProjectID} = ${project.ProjectID} ;;
    relationship: one_to_many
  }
}

explore: assessmentquestions {
#   hidden: yes

  join: enrollment {
    type: left_outer
    sql_on: ${assessmentquestions.EnrollmentID} = ${enrollment.EnrollmentID} ;;
    relationship: many_to_one
  }

  join: client {
    type: left_outer
    sql_on: ${assessmentquestions.PersonalID} = ${client.PersonalID} ;;
    relationship: many_to_one
  }

  join:  project {
    type:  left_outer
    sql_on: ${enrollment.ProjectID} = ${project.ProjectID} ;;
    relationship: one_to_many
  }
}

explore: assessmentresults {
#   hidden: yes
}

explore: currentlivingsituation {
#   hidden: yes

  join: enrollment {
    type: left_outer
    sql_on: ${currentlivingsituation.EnrollmentID} = ${enrollment.EnrollmentID} ;;
    relationship: many_to_one
  }

  join: client {
    type: left_outer
    sql_on: ${currentlivingsituation.PersonalID} = ${client.PersonalID} ;;
    relationship: many_to_one
  }

  join:  project {
    type:  left_outer
    sql_on: ${enrollment.ProjectID} = ${project.ProjectID} ;;
    relationship: one_to_many
  }
}

explore: disabilities {
#   hidden: yes

  join: enrollment {
    type: left_outer
    sql_on: ${disabilities.EnrollmentID} = ${enrollment.EnrollmentID} ;;
    relationship: many_to_one
  }

  join: client {
    type: left_outer
    sql_on: ${disabilities.PersonalID} = ${client.PersonalID} ;;
    relationship: many_to_one
  }

  join: exit {
    type: left_outer
    sql_on: ${disabilities.EnrollmentID} = ${exit.EnrollmentID} ;;
    sql_where: ${disabilities.DataCollectionStage} = 3 ;;
    relationship: many_to_one
  }

  join: disabilities_counts {
    type:  left_outer
    sql_on: ${enrollment.EnrollmentID} = ${disabilities_counts.EnrollmentID} ;;
    relationship: one_to_many
  }

  join: disability_types_counts {
    type:  left_outer
    sql_on: ${enrollment.EnrollmentID} = ${disability_types_counts.EnrollmentID} ;;
    relationship: one_to_many
  }

  join:  project {
    type:  left_outer
    sql_on: ${enrollment.ProjectID} = ${project.ProjectID} ;;
    relationship: one_to_many
  }

  join:  funder {
    type:  left_outer
    sql_on: ${project.ProjectID} = ${funder.ProjectID} ;;
    relationship: one_to_many
  }
}

explore: employmenteducation {
#   hidden: yes

  join: enrollment {
    type: left_outer
    sql_on: ${employmenteducation.EnrollmentID} = ${enrollment.EnrollmentID} ;;
    relationship: many_to_one
  }

  join: client {
    type: left_outer
    sql_on: ${employmenteducation.PersonalID} = ${client.PersonalID} ;;
    relationship: many_to_one
  }

  join: exit {
    type: left_outer
    sql_on: ${employmenteducation.EnrollmentID} = ${exit.EnrollmentID} ;;
    sql_where: ${employmenteducation.DataCollectionStage} = 3 ;;
    relationship: many_to_one
  }

  join:  project {
    type:  left_outer
    sql_on: ${enrollment.ProjectID} = ${project.ProjectID} ;;
    relationship: one_to_many
  }
}

explore: enrollmentcoc {
#   hidden: yes

  join: enrollment {
    type: left_outer
    sql_on: ${enrollmentcoc.EnrollmentID} = ${enrollment.EnrollmentID} ;;
    relationship: many_to_one
  }

  join: client {
    type: left_outer
    sql_on: ${enrollmentcoc.PersonalID} = ${client.PersonalID} ;;
    relationship: many_to_one
  }

  join: exit {
    type: left_outer
    sql_on: ${enrollmentcoc.EnrollmentID} = ${exit.EnrollmentID} ;;
    sql_where: ${enrollmentcoc.DataCollectionStage} = 3 ;;
    relationship: many_to_one
  }

  join:  project {
    type:  left_outer
    sql_on: ${enrollment.ProjectID} = ${project.ProjectID} ;;
    relationship: one_to_many
  }
}

explore: event {
#   hidden: yes

  join: enrollment {
    type: left_outer
    sql_on: ${event.EnrollmentID} = ${enrollment.EnrollmentID} ;;
    relationship: many_to_one
  }

  join: client {
    type: left_outer
    sql_on: ${event.PersonalID} = ${client.PersonalID} ;;
    relationship: many_to_one
  }

  join:  project {
    type:  left_outer
    sql_on: ${enrollment.ProjectID} = ${project.ProjectID} ;;
    relationship: one_to_many
  }
}

explore: exit {
#   hidden: yes

  join: enrollment {
    type: left_outer
    sql_on: ${exit.EnrollmentID} = ${enrollment.EnrollmentID} ;;
    relationship: many_to_one
  }

  join: client {
    type: left_outer
    sql_on: ${exit.PersonalID} = ${client.PersonalID} ;;
    relationship: many_to_one
  }

  join:  project {
    type:  left_outer
    sql_on: ${enrollment.ProjectID} = ${project.ProjectID} ;;
    relationship: one_to_many
  }
}

explore: export {
#   hidden: yes
}

explore: healthanddv {
#   hidden: yes

  join: enrollment {
    type: left_outer
    sql_on: ${healthanddv.EnrollmentID} = ${enrollment.EnrollmentID} ;;
    relationship: many_to_one
  }

  join: client {
    type: left_outer
    sql_on: ${healthanddv.PersonalID} = ${client.PersonalID} ;;
    relationship: many_to_one
  }

  join: exit {
    type: left_outer
    sql_on: ${healthanddv.EnrollmentID} = ${exit.EnrollmentID} ;;
    sql_where: ${healthanddv.DataCollectionStage} = 3 ;;
    relationship: many_to_one
  }

  join:  project {
    type:  left_outer
    sql_on: ${enrollment.ProjectID} = ${project.ProjectID} ;;
    relationship: one_to_many
  }
}

explore: incomebenefits {
#   hidden: yes

  join: enrollment {
    type: left_outer
    sql_on: ${incomebenefits.EnrollmentID} = ${enrollment.EnrollmentID} ;;
    relationship: many_to_one
  }

  join: client {
    type: left_outer
    sql_on: ${incomebenefits.PersonalID} = ${client.PersonalID} ;;
    relationship: many_to_one
  }

  join: exit {
    type: left_outer
    sql_on: ${incomebenefits.EnrollmentID} = ${exit.EnrollmentID} ;;
    sql_where: ${incomebenefits.DataCollectionStage} = 3 ;;
    relationship: many_to_one
  }

  join:  project {
    type:  left_outer
    sql_on: ${enrollment.ProjectID} = ${project.ProjectID} ;;
    relationship: one_to_many
  }
}

explore: funder {
#   hidden: yes
}

explore: inventory {
#   hidden: yes
}

explore: organization {
#   hidden: yes
}

explore: project {
#   hidden: yes
}

explore: projectcoc {
#   hidden: yes
}

explore: services {
#   hidden: yes

  join: enrollment {
    type: left_outer
    sql_on: ${services.EnrollmentID} = ${enrollment.EnrollmentID} ;;
    relationship: many_to_one
  }

  join: client {
    type: left_outer
    sql_on: ${services.PersonalID} = ${client.PersonalID} ;;
    relationship: many_to_one
  }

  join:  project {
    type:  left_outer
    sql_on: ${enrollment.ProjectID} = ${project.ProjectID} ;;
    relationship: one_to_many
  }
}

explore: user {
#   hidden: yes
}

explore: duplicate_identifiers {
#   hidden: yes
}

explore: assessment_custom {
  hidden: yes
}

explore: client_custom {
  hidden: yes
}

explore: client_files {
  hidden: yes
}

explore: client_location {
  hidden: yes
}

explore: enrollment_custom {
  hidden: yes
}

explore: notes_custom {
  hidden: yes
}

explore: roi_custom {
  hidden: yes
}

explore: services_custom {
  hidden: yes
}
