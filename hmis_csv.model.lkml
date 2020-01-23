connection: "csv_review_dbz"

include: "affiliation.view"
include: "assessment.view"
include: "assessmentquestions.view"
include: "assessmentresults.view"
include: "client.view"
include: "currentlivingsituation.view"
include: "disabilities.view"
include: "disabilities_counts.view"
include: "disability_types_counts.view"
include: "dynamic.view"
include: "employmenteducation.view"
include: "enrollment.view"
include: "enrollment_household_counts.view"
include: "enrollment_exit_counts.view"
include: "enrollmentcoc.view"
include: "event.view"
include: "exit.view"
include: "export.view"
include: "funder.view"
include: "healthanddv.view"
include: "incomebenefits.view"
include: "inventory.view"
include: "organization.view"
include: "project.view"
include: "projectcoc.view"
include: "services.view"
include: "site.view"
include: "user.view"

include: "assessment_custom.view"
include: "client_custom.view"
include: "client_files.view"
include: "client_location.view"
include: "enrollment_custom.view"
include: "notes_custom.view"
include: "roi_custom.view"
include: "services_custom.view"

datagroup: client_data {
  sql_trigger: SELECT 1 ;;
  max_cache_age: "24 hours"
}

explore: client {

  persist_for: "60 minutes"

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
  persist_for: " 60 minutes"

  join: client {
    type: left_outer
    sql_on: ${enrollment.PersonalID} = ${client.PersonalID} ;;
    relationship: one_to_many
  }

  join: disabilities {
    type:  left_outer
    sql_on: ${enrollment.EnrollmentID} = ${disabilities.EnrollmentID} ;;
    relationship: one_to_many
  }

  join:  employmenteducation {
    type:  left_outer
    sql_on: ${enrollment.EnrollmentID} = ${employmenteducation.EnrollmentID} ;;
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
}

explore: affiliation {
  hidden: yes
}

explore: currentlivingsituation {
  hidden: yes
}

explore: disabilities {
  hidden: yes
}

explore: employmenteducation {
  hidden: yes
}

explore: enrollmentcoc {
  hidden: yes
}

explore: event {
  hidden: yes
}

explore: exit {
  hidden: yes
}

explore: healthanddv {
  hidden: yes
}

explore: incomebenefits {
  hidden: yes
}

explore: funder {
  hidden: yes
}

explore: inventory {
  hidden: yes
}

explore: organization {
  hidden: yes
}

explore: project {
  hidden: yes
}

explore: projectcoc {
  hidden: yes
}

explore: services {
  hidden: yes
}

explore: user {
  hidden: yes
}

explore: dynamic {}

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
