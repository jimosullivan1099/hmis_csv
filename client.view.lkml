view: client {

  sql_table_name: client ;;


  dimension: afghanistan_oef {
    type: string
    sql: ${TABLE}.AfghanistanOEF ;;
  }

  dimension: am_ind_aknative {
    type: string
    sql: ${TABLE}.AmIndAKNative ;;
  }

  dimension: asian {
    type: string
    sql: ${TABLE}.Asian ;;
  }

  dimension: black_af_american {
    type: string
    sql: ${TABLE}.BlackAfAmerican ;;
  }

  dimension: date_created {
    type: string
    sql: ${TABLE}.DateCreated ;;
  }

  dimension: date_deleted {
    type: string
    sql: ${TABLE}.DateDeleted ;;
  }

  dimension: date_updated {
    type: string
    sql: ${TABLE}.DateUpdated ;;
  }

  dimension: desert_storm {
    type: string
    sql: ${TABLE}.DesertStorm ;;
  }

  dimension: discharge_status {
    type: string
    sql: ${TABLE}.DischargeStatus ;;
  }

  dimension: dob {
    type: string
    sql: ${TABLE}.DOB ;;
  }

  dimension: dobdata_quality {
    type: string
    sql: ${TABLE}.DOBDataQuality ;;
  }

  dimension: ethnicity {
    type: string
    drill_fields: [count_details*]
    sql: ${TABLE}.Ethnicity ;;
  }

  dimension: export_id {
    type: string
    # hidden: yes
    sql: ${TABLE}.ExportID ;;
  }

  dimension: first_name {
    type: string
    sql: ${TABLE}.FirstName ;;
  }

  dimension: gender {
    type: string
    drill_fields: [count_details*]
    sql: ${TABLE}.Gender ;;
  }

  dimension: iraq_oif {
    type: string
    sql: ${TABLE}.IraqOIF ;;
  }

  dimension: iraq_ond {
    type: string
    sql: ${TABLE}.IraqOND ;;
  }

  dimension: korean_war {
    type: string
    sql: ${TABLE}.KoreanWar ;;
  }

  dimension: last_name {
    type: string
    sql: ${TABLE}.LastName ;;
  }

  dimension: middlename {
    type: string
    sql: ${TABLE}.Middlename ;;
  }

  dimension: military_branch {
    type: string
    sql: ${TABLE}.MilitaryBranch ;;
  }

  dimension: name_data_quality {
    type: string
    sql: ${TABLE}.NameDataQuality ;;
  }

  dimension: name_suffix {
    type: string
    sql: ${TABLE}.NameSuffix ;;
  }

  dimension: native_hiother_pacific {
    type: string
    sql: ${TABLE}.NativeHIOtherPacific ;;
  }

  dimension: other_gender {
    type: string
    sql: ${TABLE}.OtherGender ;;
  }

  dimension: other_theater {
    type: string
    sql: ${TABLE}.OtherTheater ;;
  }

  dimension: personal_id {
    type: string
    primary_key: yes
    sql: ${TABLE}.PersonalID ;;
  }

  dimension: race_none {
    type: string
    sql: ${TABLE}.RaceNone ;;
  }

  dimension: ssn {
    type: string
    sql: ${TABLE}.SSN ;;
  }

  dimension: ssndata_quality {
    type: string
    sql: ${TABLE}.SSNDataQuality ;;
  }

  dimension: user_id {
    type: string
    sql: ${TABLE}.UserID ;;
  }

  dimension: veteran_status {
    type: string
    sql: ${TABLE}.VeteranStatus ;;
  }

  dimension: vietnam_war {
    type: string
    sql: ${TABLE}.VietnamWar ;;
  }

  dimension: white {
    type: string
    sql: ${TABLE}.White ;;
  }

  dimension: world_war_ii {
    type: string
    sql: ${TABLE}.WorldWarII ;;
  }

  dimension: year_entered_service {
    type: string
    sql: ${TABLE}.YearEnteredService ;;
  }

  dimension: year_separated {
    type: string
    sql: ${TABLE}.YearSeparated ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  measure: distinct_count {
    type:  count_distinct
    sql:  ${personal_id} ;;
  }

  measure: count_distinct_difference {
    type: number
    sql:  ${count} - ${distinct_count} ;;
  }

  measure:  clients_with_invalid_name_dq {
    type: count_distinct
    sql: ${personal_id} ;;
    filters: {
      field: name_data_quality
      value: "-1,-2,-8,-9,-99,-NULL"
    }
  }

  measure:  clients_with_null_name_dq {
    type: count_distinct
    sql: ${personal_id} ;;
    filters: {
      field: name_data_quality
      value: "NULL"
    }
  }

  measure:  clients_with_invalid_ssn_dq {
    type: count_distinct
    sql: ${personal_id} ;;
    filters: {
      field: ssndata_quality
      value: "-1,-2,-8,-9,-99,-NULL"
    }
  }

  measure:  clients_with_null_ssn_dq {
    type: count_distinct
    sql: ${personal_id} ;;
    filters: {
      field: ssndata_quality
      value: "NULL"
    }
  }

  measure:  clients_with_invalid_dob_dq {
    type: count_distinct
    sql: ${personal_id} ;;
    filters: {
      field: dobdata_quality
      value: "-1,-2,-8,-9,-99,-NULL"
    }
  }

  measure:  clients_with_null_dob_dq {
    type: count_distinct
    sql: ${personal_id} ;;
    filters: {
      field: dobdata_quality
      value: "NULL"
    }
  }

  measure:  clients_with_invalid_race_none {
    type: count_distinct
    sql: ${personal_id} ;;
    filters: {
      field: race_none
      value: "-8,-9,-99,-NULL"
    }
  }

  measure:  clients_with_unknown_race_none {
    type: count_distinct
    sql: ${personal_id} ;;
    filters: {
      field: race_none
      value: "8,9,99"
    }
  }

  measure:  clients_with_unknown_race_none_dq_check {
    type: count_distinct
    sql: ${personal_id} ;;
    filters: {
      field: race_none
      value: "8,9,99"
    }
    filters: {
      field: am_ind_aknative
      value: "0"
    }
    filters: {
      field: asian
      value: "0"
    }
    filters: {
      field: black_af_american
      value: "0"
    }
    filters: {
      field: native_hiother_pacific
      value: "0"
    }
    filters: {
      field: white
      value: "0"
    }
  }

  measure:  clients_with_invalid_ethnicity {
    type: count_distinct
    sql: ${personal_id} ;;
    filters: {
      field: ethnicity
      value: "-0,-1,-8,-9,-99"
    }
  }

  measure:  clients_with_invalid_gender {
    type: count_distinct
    sql: ${personal_id} ;;
    filters: {
      field: gender
      value: "-0,-1,-2,-3,-4,-8,-9,-99"
    }
  }

  measure:  clients_with_invalid_veteran_status {
    type: count_distinct
    sql: ${personal_id} ;;
    filters: {
      field: gender
      value: "-0,-1,-8,-9,-99"
    }
  }

  # ----- Sets of fields for drilling ------
  set: detail {
    fields: [
      first_name,
      middlename,
      last_name
    ]
  }

  set: count_details {
    fields: [personal_id, enrollment.project_id]
  }
}
