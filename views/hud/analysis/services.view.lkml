include: "/views/hud/services.view"

view: +services {
  measure: services_count {
    group_label: "Counts"
    view_label: "Analysis - General"
    label: "Services count"
    type: count_distinct


    drill_fields: [services_queries_drill_fields*]
    sql: ${ServicesID} ;;
  }

  measure: non_hud_recordtype {
    group_label: "NonHUD"
    view_label: "Analysis - Minor"
    label: "Non HUD RecordType"
    type: count_distinct

    filters: [
      services.RecordType: "-141,-142,-143,-144,-151,-152,-161,-200,-210,-NULL,-EMPTY"
    ]

    drill_fields: [services_queries_drill_fields*]
    sql: ${ServicesID} ;;
  }

  measure: non_hud_service_typeprovided_with_a_path_services_141_recordtype {
    group_label: "NonHUD"
    view_label: "Analysis - Minor"
    label: "Non HUD Service TypeProvided with a PATH Services (141) RecordType"
    type: count_distinct

    filters: [
      services.TypeProvided: "-1,-2,-3,-4,-5,-6,-7,-8,-9,-10,-11,-12,-14,-NULL,-EMPTY",
      services.RecordType: "141"
    ]

    drill_fields: [services_queries_drill_fields*]
    sql: ${ServicesID} ;;
  }

  measure: non_hud_service_typeprovided_with_a_rhy_services_connections_142_recordtype {
    group_label: "NonHUD"
    view_label: "Analysis - Minor"
    label: "Non HUD Service TypeProvided with a RHY Services connections (142) RecordType"
    type: count_distinct

    filters: [
      services.TypeProvided: "-2,-5,-6,-7,-8,-10,-12,-13,-14,-17,-18,-26,-27,-28,-29,-NULL,-EMPTY",
      services.RecordType: "142"
    ]

    drill_fields: [services_queries_drill_fields*]
    sql: ${ServicesID} ;;
  }

  measure: non_hud_service_typeprovided_with_a_hopwa_services_143_recordtype {
    group_label: "NonHUD"
    view_label: "Analysis - Minor"
    label: "Non HUD Service TypeProvided with a HOPWA Services (143) RecordType"
    type: count_distinct

    filters: [
      services.TypeProvided: "-1,-2,-3,-4,-5,-6,-7,-8,-9,-10,-11,-12,-13,-14,-NULL,-EMPTY",
      services.RecordType: "143"
    ]

    drill_fields: [services_queries_drill_fields*]
    sql: ${ServicesID} ;;
  }

  measure: non_hud_service_typeprovided_with_a_ssvf_services_144_recordtype {
    group_label: "NonHUD"
    view_label: "Analysis - Minor"
    label: "Non HUD Service TypeProvided with a SSVF Services (144) RecordType"
    type: count_distinct

    filters: [
      services.TypeProvided: "-1,-2,-3,-4,-5,-6,-7,-8,-9,-NULL,-EMPTY",
      services.RecordType: "144"
    ]

    drill_fields: [services_queries_drill_fields*]
    sql: ${ServicesID} ;;
  }

  measure: non_hud_service_typeprovided_with_a_hopwa_financial_assistance_151_recordtype {
    group_label: "NonHUD"
    view_label: "Analysis - Minor"
    label: "Non HUD Service TypeProvided with a HOPWA Financial Assistance (151) RecordType"
    type: count_distinct

    filters: [
      services.TypeProvided: "-1,-2,-3,-4,-7,-NULL,-EMPTY",
      services.RecordType: "151"
    ]

    drill_fields: [services_queries_drill_fields*]
    sql: ${ServicesID} ;;
  }

  measure: non_hud_service_typeprovided_with_a_ssvf_financial_assistance_152_recordtype {
    group_label: "NonHUD"
    view_label: "Analysis - Minor"
    label: "Non HUD Service TypeProvided with a SSVF Financial Assistance (152) RecordType"
    type: count_distinct

    filters: [
      services.TypeProvided: "-1,-2,-3,-4,-5,-8,-9,-10,-11,-12,-14,-15,-NULL,-EMPTY",
      services.RecordType: "152"
    ]

    drill_fields: [services_queries_drill_fields*]
    sql: ${ServicesID} ;;
  }

  measure: non_hud_service_typeprovided_with_a_path_referral_161_recordtype {
    group_label: "NonHUD"
    view_label: "Analysis - Minor"
    label: "Non HUD Service TypeProvided with a PATH referral (161) RecordType"
    type: count_distinct

    filters: [
      services.TypeProvided: "-1,-2,-3,-4,-5,-6,-7,-8,-9,-10,-11,-NULL,-EMPTY",
      services.RecordType: "161"
    ]

    drill_fields: [services_queries_drill_fields*]
    sql: ${ServicesID} ;;
  }

  measure: non_hud_service_typeprovided_with_a_bed_night_200_recordtype {
    group_label: "NonHUD"
    view_label: "Analysis - Minor"
    label: "Non HUD Service TypeProvided with a Bed night  (200) RecordType"
    type: count_distinct

    filters: [
      services.TypeProvided: "-200,-NULL,-EMPTY",
      services.RecordType: "200"
    ]

    drill_fields: [services_queries_drill_fields*]
    sql: ${ServicesID} ;;
  }

  measure: non_hud_service_typeprovided_with_a_hud_vash_oth_voucher_tracking_210_recordtype {
    group_label: "NonHUD"
    view_label: "Analysis - Minor"
    label: "Non HUD Service TypeProvided with a HUD-VASH OTH voucher tracking  (210) RecordType"
    type: count_distinct

    filters: [
      services.TypeProvided: "-1,-2,-3,-4,-5,-6,-7,-8,-9,-10,-11,-12,-NULL,-EMPTY",
      services.RecordType: "210"
    ]

    drill_fields: [services_queries_drill_fields*]
    sql: ${ServicesID} ;;
  }

  measure: non_hud_service_subtypeprovided {
    group_label: "NonHUD"
    view_label: "Analysis - Minor"
    label: "Non HUD Service SubTypeProvided"
    type: count_distinct

    filters: [
      services.SubTypeProvided: "-1,-2,-3,-4,-5,-6,-7,-8,-9,-10,-11,-12,-13,-NULL,-EMPTY"
    ]

    drill_fields: [services_queries_drill_fields*]
    sql: ${ServicesID} ;;
  }

  measure: non_hud_referraloutcome {
    group_label: "NonHUD"
    view_label: "Analysis - Minor"
    label: "Non HUD ReferralOutcome"
    type: count_distinct

    filters: [
      services.ReferralOutcome: "-1,-2,-3,-NULL,-EMPTY"
    ]

    drill_fields: [services_queries_drill_fields*]
    sql: ${ServicesID} ;;
  }

  measure: null_datecreated {
    group_label: "Null"
    view_label: "Analysis - Major"
    label: "Null DateCreated"
    type: count_distinct

    filters: [
      services.DateCreated: "NULL,EMPTY"
    ]

    drill_fields: [services_queries_drill_fields*]
    sql: ${ServicesID} ;;
  }

  measure: null_dateprovided {
    group_label: "Null"
    view_label: "Analysis - Major"
    label: "Null DateProvided"
    type: count_distinct

    filters: [
      services.DateProvided: "NULL,EMPTY"
    ]

    drill_fields: [services_queries_drill_fields*]
    sql: ${ServicesID} ;;
  }

  measure: null_dateupdated {
    group_label: "Null"
    view_label: "Analysis - Major"
    label: "Null DateUpdated"
    type: count_distinct

    filters: [
      services.DateUpdated: "NULL,EMPTY"
    ]

    drill_fields: [services_queries_drill_fields*]
    sql: ${ServicesID} ;;
  }

  measure: null_enrollmentid {
    group_label: "Null"
    view_label: "Analysis - Major"
    label: "Null EnrollmentID"
    type: count_distinct

    filters: [
      services.EnrollmentID: "NULL,EMPTY"
    ]

    drill_fields: [services_queries_drill_fields*]
    sql: ${ServicesID} ;;
  }

  measure: null_exportid {
    group_label: "Null"
    view_label: "Analysis - Dq"
    label: "Null ExportID"
    type: count_distinct

    filters: [
      services.ExportID: "NULL,EMPTY"
    ]

    drill_fields: [services_queries_drill_fields*]
    sql: ${ServicesID} ;;
  }

  measure: null_personalid {
    group_label: "Null"
    view_label: "Analysis - Major"
    label: "Null PersonalID"
    type: count_distinct

    filters: [
      services.PersonalID: "NULL,EMPTY"
    ]

    drill_fields: [services_queries_drill_fields*]
    sql: ${ServicesID} ;;
  }

  measure: null_recordtype {
    group_label: "Null"
    view_label: "Analysis - Major"
    label: "Null RecordType"
    type: count_distinct

    filters: [
      services.RecordType: "NULL,EMPTY"
    ]

    drill_fields: [services_queries_drill_fields*]
    sql: ${ServicesID} ;;
  }

  measure: null_servicesid {
    group_label: "Null"
    view_label: "Analysis - Major"
    label: "Null ServicesID"
    type: count_distinct

    filters: [
      services.ServicesID: "NULL,EMPTY"
    ]

    drill_fields: [services_queries_drill_fields*]
    sql: ${ServicesID} ;;
  }

  measure: null_typeprovided {
    group_label: "Null"
    view_label: "Analysis - Major"
    label: "Null TypeProvided"
    type: count_distinct

    filters: [
      services.TypeProvided: "NULL,EMPTY"
    ]

    drill_fields: [services_queries_drill_fields*]
    sql: ${ServicesID} ;;
  }

  measure: null_userid {
    group_label: "Null"
    view_label: "Analysis - Dq"
    label: "Null UserID"
    type: count_distinct

    filters: [
      services.UserID: "NULL,EMPTY"
    ]

    drill_fields: [services_queries_drill_fields*]
    sql: ${ServicesID} ;;
  }

  measure: services_where_recordtype_is_144_and_typeprovided_is_6_but_there_is_no_value_for_othertypeprovided {
    group_label: "dqServices"
    view_label: "Analysis - Dq"
    label: "Services where RecordType is 144 and TypeProvided is 6, but there is no value for OtherTypeProvided"
    type: count_distinct

    filters: [
      services.RecordType: "144",
      services.TypeProvided: "6",
      services.OtherTypeProvided: "NULL,EMPTY"
    ]

    drill_fields: [services_queries_drill_fields*]
    sql: ${ServicesID} ;;
  }

  measure: services_where_recordtype_is_144_and_typeprovided_is_either_3_4_or_5_but_there_is_no_value_for_subtypeprovided {
    group_label: "dqServices"
    view_label: "Analysis - Dq"
    label: "Services where RecordType is 144 and TypeProvided is either 3, 4, or 5, but there is no value for SubTypeProvided"
    type: count_distinct

    filters: [
      services.RecordType: "144",
      services.TypeProvided: "3,4,5",
      services.SubTypeProvided: "NULL,EMPTY"
    ]

    drill_fields: [services_queries_drill_fields*]
    sql: ${ServicesID} ;;
  }

  measure: services_where_recordtype_is_151_or_152_but_there_is_no_value_for_faamount {
    group_label: "dqServices"
    view_label: "Analysis - Dq"
    label: "Services where RecordType is 151 or 152 but there is no value for FAAmount"
    type: count_distinct

    filters: [
      services.RecordType: "151,152",
      services.FAAmount: "NULL,EMPTY"
    ]

    drill_fields: [services_queries_drill_fields*]
    sql: ${ServicesID} ;;
  }

  measure: services_where_recordtype_is_161_but_there_is_no_value_for_referraloutcome {
    group_label: "dqServices"
    view_label: "Analysis - Dq"
    label: "Services where RecordType is 161 but there is no value for ReferralOutcome"
    type: count_distinct

    filters: [
      services.RecordType: "161",
      services.ReferralOutcome: "NULL,EMPTY"
    ]

    drill_fields: [services_queries_drill_fields*]
    sql: ${ServicesID} ;;
  }

  measure: invalid_date_formatting_for_dateprovided_in_services_csv {
    group_label: "DateFormatting"
    view_label: "Analysis - Major"
    label: "Invalid Date Formatting for DateProvided in Services.csv"
    type: count_distinct

    filters: [
      services.DateProvided: "-____-__-__"
    ]

    drill_fields: [services_queries_drill_fields*]
    sql: ${ServicesID} ;;
  }

  measure: invalid_date_formatting_for_datecreated_in_services_csv {
    group_label: "DateFormatting"
    view_label: "Analysis - Major"
    label: "Invalid Date Formatting for DateCreated in Services.csv"
    type: count_distinct

    filters: [
      services.DateCreated: "-____-__-__ __:__:__"
    ]

    drill_fields: [services_queries_drill_fields*]
    sql: ${ServicesID} ;;
  }

  measure: invalid_date_formatting_for_dateupdated_in_services_csv {
    group_label: "DateFormatting"
    view_label: "Analysis - Major"
    label: "Invalid Date Formatting for DateUpdated in Services.csv"
    type: count_distinct

    filters: [
      services.DateUpdated: "-____-__-__ __:__:__"
    ]

    drill_fields: [services_queries_drill_fields*]
    sql: ${ServicesID} ;;
  }

  measure: total_major_null_values {
    group_label: "Null"
    view_label: "Analysis - Major"
    label: "Total Major Null Values"
    type: number

    drill_fields: [
      null_datecreated,
      null_dateprovided,
      null_dateupdated,
      null_enrollmentid,
      null_personalid,
      null_recordtype,
      null_servicesid,
      null_typeprovided
    ]
    sql:  ${null_datecreated}
          + ${null_dateprovided}
          + ${null_dateupdated}
          + ${null_enrollmentid}
          + ${null_personalid}
          + ${null_recordtype}
          + ${null_servicesid}
          + ${null_typeprovided}
      ;;
  }

  measure: total_date_formatting_values {
    group_label: "DateFormatting"
    view_label: "Analysis - Major"
    label: "Total DateFormatting Values"
    type: number

    drill_fields: [
      invalid_date_formatting_for_dateprovided_in_services_csv,
      invalid_date_formatting_for_datecreated_in_services_csv,
      invalid_date_formatting_for_dateupdated_in_services_csv
    ]
    sql:  ${invalid_date_formatting_for_dateprovided_in_services_csv}
          + ${invalid_date_formatting_for_datecreated_in_services_csv}
          + ${invalid_date_formatting_for_dateupdated_in_services_csv}
      ;;
  }

  set: services_queries_drill_fields {
    fields: [
      services.ServicesID
    ]
  }

}
