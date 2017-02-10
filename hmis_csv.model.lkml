connection: "csv_review_dbz"

# include all the views
include: "*.view"

# include all the dashboards
include: "*.dashboard"



explore: client  {

  join: enrollment {
    type: left_outer
    sql_on: ${client.personal_id} = ${enrollment.personal_id} ;;
    relationship: one_to_many
  }
  join: disabilities {
    type:  left_outer
    sql_on: ${enrollment.project_entry_id} = ${disabilities.project_entry_id} ;;
  }

  join:  employmenteducation {
    type:  left_outer
    sql_on: ${enrollment.project_entry_id} = ${employmenteducation.project_entry_id} ;;

  }
  join:  incomebenefits {
    type:  left_outer
    sql_on: ${enrollment.project_entry_id} = ${incomebenefits.project_entry_id} ;;

  }

  join:  exit {
    type:  left_outer
    sql_on: ${enrollment.project_entry_id} = ${exit.project_entry_id} ;;

  }

  join:  healthanddv {
    type:  left_outer
    sql_on: ${enrollment.project_entry_id} = ${healthanddv.personal_id} ;;

  }

  join:  services {
    type:  left_outer
    sql_on: ${enrollment.project_entry_id} = ${services.project_entry_id} ;;

  }

  join:  project {
    type:  inner
    sql_on: ${enrollment.project_id} = ${project.project_id} ;;

  }

  join:  organization {
    type:  inner
    sql_on: ${project.organization_id} =${organization.organization_id} ;;

  }

}
