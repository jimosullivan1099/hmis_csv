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
  join: disabilities {
    type:  left_outer
    sql_on: ${enrollment.project_entry_id} = ${disabilities.project_entry_id} ;;
   relationship: one_to_many
 }

  join:  employmenteducation {
    type:  left_outer
    sql_on: ${enrollment.project_entry_id} = ${employmenteducation.project_entry_id} ;;
    relationship: one_to_many
  }
  join:  incomebenefits {
    type:  left_outer
    sql_on: ${enrollment.project_entry_id} = ${incomebenefits.project_entry_id} ;;
   relationship: one_to_many
  }

  join:  exit {
    type:  left_outer
    sql_on: ${enrollment.project_entry_id} = ${exit.project_entry_id} ;;
    relationship: one_to_one
  }

  join:  healthanddv {
    type:  left_outer
    sql_on: ${enrollment.project_entry_id} = ${healthanddv.personal_id} ;;
  relationship: one_to_many
  }

  join:  services {
    type:  left_outer
    sql_on: ${enrollment.project_entry_id} = ${services.project_entry_id} ;;
   relationship: one_to_many
  }

  join:  project {
    type:  inner
    sql_on: ${enrollment.project_id} = ${project.project_id} ;;
 relationship: one_to_one
  }

  join:  organization {
    type:  inner
    sql_on: ${project.organization_id} =${organization.organization_id} ;;
  relationship: one_to_many
  }

}
