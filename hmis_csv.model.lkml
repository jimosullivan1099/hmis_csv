connection: "csv_review_dbz"

include: "affiliation.view"
include: "client.view"
include: "disabilities.view"
include: "disabilities_counts.view"
include: "dynamic.view"
include: "employmenteducation.view"
include: "enrollment.view"
include: "enrollment_household_counts.view"
include: "enrollmentcoc.view"
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

# include all the dashboards
include: "*.dashboard"

explore: client {

  persist_for: "60 minutes"

  join: enrollment {
    type: left_outer
    sql_on: ${client.PersonalID} = ${enrollment.PersonalID} ;;
    relationship: one_to_many
  }

  join: enrollment_household_counts{
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

explore: dynamic {}
