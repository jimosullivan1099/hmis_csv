connection: "csv_review_dbz"

# include all the views
include: "*.view"

# include all the dashboards
include: "*.dashboard"



explore: client  {
  persist_for: " 60 minutes"

  join: enrollment {
    type: left_outer
    sql_on: ${client.personal_id} = ${enrollment.personal_id} ;;
    relationship: one_to_many
  }

  join: enrollment_household_counts{
    type:  left_outer
    sql_on: ${enrollment.household_id} = ${enrollment_household_counts.household_id} ;;
    relationship: one_to_one
  }

  join: disabilities {
    type:  left_outer
    sql_on: ${enrollment.enrollment_id} = ${disabilities.enrollment_id} ;;
    relationship: one_to_many
  }

  join: disabilities_counts {
    type:  left_outer
    sql_on: ${enrollment.enrollment_id} = ${disabilities_counts.enrollment_id} ;;
    relationship: one_to_many
  }

  join:  employmenteducation {
    type:  left_outer
    sql_on: ${enrollment.enrollment_id} = ${employmenteducation.enrollment_id} ;;
    relationship: one_to_many
  }
  join:  incomebenefits {
    type:  left_outer
    sql_on: ${enrollment.enrollment_id} = ${incomebenefits.enrollment_id} ;;
    relationship: one_to_many
  }

  join:  exit {
    type:  left_outer
    sql_on: ${enrollment.enrollment_id} = ${exit.enrollment_id} ;;
    relationship: one_to_one
  }

  join:  healthanddv {
    type:  left_outer
    sql_on: ${enrollment.enrollment_id} = ${healthanddv.enrollment_id} ;;
    relationship: one_to_many
  }

  join:  services {
    type:  left_outer
    sql_on: ${enrollment.enrollment_id} = ${services.enrollment_id} ;;
    relationship: one_to_many
  }

  join:  project {
    type:  inner
    sql_on: ${enrollment.project_id} = ${project.project_id} ;;
    relationship: one_to_one
  }

  join:  organization {
    type:  inner
    sql_on: ${project.organization_id} = ${organization.organization_id} ;;
    relationship: one_to_many
  }

  join:  funder {
    type:  inner
    sql_on: ${project.project_id} = ${funder.project_id} ;;
    relationship: one_to_many
  }

}

explore: enrollment  {
  persist_for: " 60 minutes"
  join: client {
    type: left_outer
    sql_on: ${enrollment.personal_id} = ${client.personal_id} ;;
    relationship: one_to_many
  }

  join: disabilities {
    type:  left_outer
    sql_on: ${enrollment.enrollment_id} = ${disabilities.enrollment_id} ;;
    relationship: one_to_many
  }

  join:  employmenteducation {
    type:  left_outer
    sql_on: ${enrollment.enrollment_id} = ${employmenteducation.enrollment_id} ;;
    relationship: one_to_many
  }

  join:  incomebenefits {
    type:  left_outer
    sql_on: ${enrollment.enrollment_id} = ${incomebenefits.enrollment_id} ;;
    relationship: one_to_many
  }

  join:  exit {
    type:  left_outer
    sql_on: ${enrollment.enrollment_id} = ${exit.enrollment_id} ;;
    relationship: one_to_one
  }

  join:  healthanddv {
    type:  left_outer
    sql_on: ${enrollment.enrollment_id} = ${healthanddv.enrollment_id} ;;
    relationship: one_to_many
  }

  join:  services {
    type:  left_outer
    sql_on: ${enrollment.enrollment_id} = ${services.enrollment_id} ;;
    relationship: one_to_many
  }

  join:  project {
    type:  left_outer
    sql_on: ${enrollment.project_id} = ${project.project_id} ;;
    relationship: one_to_many
  }
}
