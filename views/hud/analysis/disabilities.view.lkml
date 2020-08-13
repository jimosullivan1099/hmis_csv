include: "/views/hud/disabilities.view"
include: "/views/hud/disabilities_counts.view"
include: "/views/hud/disability_types_counts.view"

view: +disabilities {
  measure: disabilities_count {
    group_label: "Counts"
    view_label: "Analysis - General"
    label: "Disabilities count"
    type: count_distinct


    drill_fields: [disabilities_queries_drill_fields*]
    sql: ${DisabilitiesID} ;;
  }

  measure: non_hud_datacollectionstage {
    group_label: "NonHUD"
    view_label: "Analysis - Major"
    label: "Non HUD DataCollectionStage"
    type: count_distinct

    filters: [
      disabilities.DataCollectionStage: "-1,-2,-3,-5,-NULL,-EMPTY"
    ]

    drill_fields: [disabilities_queries_drill_fields*]
    sql: ${DisabilitiesID} ;;
  }

  measure: non_hud_disabilityresponse {
    group_label: "NonHUD"
    view_label: "Analysis - Major"
    label: "Non HUD DisabilityResponse"
    type: count_distinct

    filters: [
      disabilities.DisabilityResponse: "-0,-1,-2,-3,-8,-9,-99,-NULL,-EMPTY"
    ]

    drill_fields: [disabilities_queries_drill_fields*]
    sql: ${DisabilitiesID} ;;
  }

  measure: non_hud_disabilitytype {
    group_label: "NonHUD"
    view_label: "Analysis - Major"
    label: "Non HUD DisabilityType"
    type: count_distinct

    filters: [
      disabilities.DisabilityType: "-5,-6,-7,-8,-9,-10,-NULL,-EMPTY"
    ]

    drill_fields: [disabilities_queries_drill_fields*]
    sql: ${DisabilitiesID} ;;
  }

  measure: non_hud_indefiniteandimpairs {
    group_label: "NonHUD"
    view_label: "Analysis - Major"
    label: "Non HUD IndefiniteAndImpairs"
    type: count_distinct

    filters: [
      disabilities.IndefiniteAndImpairs: "-0,-1,-8,-9,-99,-NULL,-EMPTY"
    ]

    drill_fields: [disabilities_queries_drill_fields*]
    sql: ${DisabilitiesID} ;;
  }

  measure: non_hud_tcellcountavailable {
    group_label: "NonHUD"
    view_label: "Analysis - Minor"
    label: "Non HUD TCellCountAvailable"
    type: count_distinct

    filters: [
      disabilities.TCellCountAvailable: "-0,-1,-8,-9,-99,-NULL,-EMPTY"
    ]

    drill_fields: [disabilities_queries_drill_fields*]
    sql: ${DisabilitiesID} ;;
  }

  measure: non_hud_tcellsource {
    group_label: "NonHUD"
    view_label: "Analysis - Minor"
    label: "Non HUD TCellSource"
    type: count_distinct

    filters: [
      disabilities.TCellSource: "-1,-2,-3,-NULL,-EMPTY"
    ]

    drill_fields: [disabilities_queries_drill_fields*]
    sql: ${DisabilitiesID} ;;
  }

  measure: non_hud_viralloadavailable {
    group_label: "NonHUD"
    view_label: "Analysis - Minor"
    label: "Non HUD ViralLoadAvailable"
    type: count_distinct

    filters: [
      disabilities.ViralLoadAvailable: "-0,-1,-2,-8,-9,-99,-NULL,-EMPTY"
    ]

    drill_fields: [disabilities_queries_drill_fields*]
    sql: ${DisabilitiesID} ;;
  }

  measure: non_hud_viralloadsource {
    group_label: "NonHUD"
    view_label: "Analysis - Minor"
    label: "Non HUD ViralLoadSource"
    type: count_distinct

    filters: [
      disabilities.ViralLoadSource: "-1,-2,-3,-NULL,-EMPTY"
    ]

    drill_fields: [disabilities_queries_drill_fields*]
    sql: ${DisabilitiesID} ;;
  }

  measure: null_datacollectionstage {
    group_label: "Null"
    view_label: "Analysis - Major"
    label: "Null DataCollectionStage"
    type: count_distinct

    filters: [
      disabilities.DataCollectionStage: "NULL,EMPTY"
    ]

    drill_fields: [disabilities_queries_drill_fields*]
    sql: ${DisabilitiesID} ;;
  }

  measure: null_datecreated {
    group_label: "Null"
    view_label: "Analysis - Major"
    label: "Null DateCreated"
    type: count_distinct

    filters: [
      disabilities.DateCreated: "NULL,EMPTY"
    ]

    drill_fields: [disabilities_queries_drill_fields*]
    sql: ${DisabilitiesID} ;;
  }

  measure: null_dateupdated {
    group_label: "Null"
    view_label: "Analysis - Major"
    label: "Null DateUpdated"
    type: count_distinct

    filters: [
      disabilities.DateUpdated: "NULL,EMPTY"
    ]

    drill_fields: [disabilities_queries_drill_fields*]
    sql: ${DisabilitiesID} ;;
  }

  measure: null_disabilitiesid {
    group_label: "Null"
    view_label: "Analysis - Major"
    label: "Null DisabilitiesID"
    type: count_distinct

    filters: [
      disabilities.DisabilitiesID: "NULL,EMPTY"
    ]

    drill_fields: [disabilities_queries_drill_fields*]
    sql: ${DisabilitiesID} ;;
  }

  measure: null_disabilityresponse {
    group_label: "Null"
    view_label: "Analysis - Major"
    label: "Null DisabilityResponse"
    type: count_distinct

    filters: [
      disabilities.DisabilityResponse: "NULL,EMPTY"
    ]

    drill_fields: [disabilities_queries_drill_fields*]
    sql: ${DisabilitiesID} ;;
  }

  measure: null_disabilitytype {
    group_label: "Null"
    view_label: "Analysis - Major"
    label: "Null DisabilityType"
    type: count_distinct

    filters: [
      disabilities.DisabilityType: "NULL,EMPTY"
    ]

    drill_fields: [disabilities_queries_drill_fields*]
    sql: ${DisabilitiesID} ;;
  }

  measure: null_enrollmentid {
    group_label: "Null"
    view_label: "Analysis - Major"
    label: "Null EnrollmentID"
    type: count_distinct

    filters: [
      disabilities.EnrollmentID: "NULL,EMPTY"
    ]

    drill_fields: [disabilities_queries_drill_fields*]
    sql: ${DisabilitiesID} ;;
  }

  measure: null_exportid {
    group_label: "Null"
    view_label: "Analysis - Dq"
    label: "Null ExportID"
    type: count_distinct

    filters: [
      disabilities.ExportID: "NULL,EMPTY"
    ]

    drill_fields: [disabilities_queries_drill_fields*]
    sql: ${DisabilitiesID} ;;
  }

  measure: null_informationdate {
    group_label: "Null"
    view_label: "Analysis - Major"
    label: "Null InformationDate"
    type: count_distinct

    filters: [
      disabilities.InformationDate: "NULL,EMPTY"
    ]

    drill_fields: [disabilities_queries_drill_fields*]
    sql: ${DisabilitiesID} ;;
  }

  measure: null_personalid {
    group_label: "Null"
    view_label: "Analysis - Major"
    label: "Null PersonalID"
    type: count_distinct

    filters: [
      disabilities.PersonalID: "NULL,EMPTY"
    ]

    drill_fields: [disabilities_queries_drill_fields*]
    sql: ${DisabilitiesID} ;;
  }

  measure: null_userid {
    group_label: "Null"
    view_label: "Analysis - Dq"
    label: "Null UserID"
    type: count_distinct

    filters: [
      disabilities.UserID: "NULL,EMPTY"
    ]

    drill_fields: [disabilities_queries_drill_fields*]
    sql: ${DisabilitiesID} ;;
  }

  measure: clients_with_invalid_number_of_disabilities_at_entry {
    group_label: "Disabilities"
    view_label: "Analysis - Major"
    label: "Clients with invalid number of Disabilities at entry"
    type: count_distinct

    filters: [
      disabilities_counts.DataCollectionStage: "1",
      disabilities_counts.disability_count_by_enrollment_and_dcs: ">0",
      disabilities_counts.disability_count_by_enrollment_and_dcs: "-6"
    ]

    drill_fields: [disabilities_queries_drill_fields*]
    sql: ${DisabilitiesID} ;;
  }

  measure: clients_with_invalid_number_of_disabilities_at_exit {
    group_label: "Disabilities"
    view_label: "Analysis - Major"
    label: "Clients with invalid number of Disabilities at exit"
    type: count_distinct

    filters: [
      disabilities_counts.DataCollectionStage: "3",
      disabilities_counts.disability_count_by_enrollment_and_dcs: ">0",
      disabilities_counts.disability_count_by_enrollment_and_dcs: "-6"
    ]

    drill_fields: [disabilities_queries_drill_fields*]
    sql: ${DisabilitiesID} ;;
  }

  measure: clients_with_invalid_number_of_disabilities_at_update {
    group_label: "Disabilities"
    view_label: "Analysis - Major"
    label: "Clients with invalid number of Disabilities at update"
    type: count_distinct

    filters: [
      disabilities_counts.DataCollectionStage: "2",
      disabilities_counts.count_mod_6: ">0"
    ]

    drill_fields: [disabilities_queries_drill_fields*]
    sql: ${DisabilitiesID} ;;
  }

  measure: clients_with_invalid_number_of_disabilities_at_annual_assessment {
    group_label: "Disabilities"
    view_label: "Analysis - Major"
    label: "Clients with invalid number of Disabilities at annual assessment"
    type: count_distinct

    filters: [
      disabilities_counts.DataCollectionStage: "5",
      disabilities_counts.count_mod_6: ">0"
    ]

    drill_fields: [disabilities_queries_drill_fields*]
    sql: ${DisabilitiesID} ;;
  }

  measure: clients_with_multiple_records_for_the_same_disabilitytype_at_entry {
    group_label: "Disabilities"
    view_label: "Analysis - Major"
    label: "Clients with multiple records for the same DisabilityType at entry"
    type: count_distinct

    filters: [
      disability_types_counts.DataCollectionStage: "1",
      disability_types_counts.disabilities_count: ">1"
    ]

    drill_fields: [disabilities_queries_drill_fields*]
    sql: ${DisabilitiesID} ;;
  }

  measure: clients_with_multiple_records_for_the_same_disabilitytype_at_exit {
    group_label: "Disabilities"
    view_label: "Analysis - Major"
    label: "Clients with multiple records for the same DisabilityType at exit"
    type: count_distinct

    filters: [
      disability_types_counts.DataCollectionStage: "3",
      disability_types_counts.disabilities_count: ">1"
    ]

    drill_fields: [disabilities_queries_drill_fields*]
    sql: ${DisabilitiesID} ;;
  }

  measure: clients_with_0_disabilities_at_entry {
    group_label: "Disabilities"
    view_label: "Analysis - Minor"
    label: "Clients with 0 Disabilities at entry"
    type: count_distinct

    filters: [
      disabilities_counts.DataCollectionStage: "1",
      disabilities_counts.disability_count_by_enrollment_and_dcs: "0"
    ]

    drill_fields: [disabilities_queries_drill_fields*]
    sql: ${DisabilitiesID} ;;
  }

  measure: clients_with_0_disabilities_at_exit {
    group_label: "Disabilities"
    view_label: "Analysis - Minor"
    label: "Clients with 0 Disabilities at exit"
    type: count_distinct

    filters: [
      disabilities_counts.DataCollectionStage: "3",
      disabilities_counts.disability_count_by_enrollment_and_dcs: "0"
    ]

    drill_fields: [disabilities_queries_drill_fields*]
    sql: ${DisabilitiesID} ;;
  }

  measure: hiv_aids_disabilities_without_tcellcountavailable_values {
    group_label: "dqDisabilities"
    view_label: "Analysis - Dq"
    label: "HIV/AIDS Disabilities without TCellCountAvailable values"
    type: count_distinct

    filters: [
      disabilities.DisabilityType: "8",
      disabilities.DisabilityResponse: "1",
      disabilities.TCellCountAvailable: "NULL,EMPTY",
      funder.Funder: "13,14,15,16,17,18,19"
    ]

    drill_fields: [disabilities_queries_drill_fields*]
    sql: ${DisabilitiesID} ;;
  }

  measure: disabilities_with_tcellcountavailable_as_yes_but_no_value_for_tcellcount {
    group_label: "dqDisabilities"
    view_label: "Analysis - Dq"
    label: "Disabilities with TCellCountAvailable as Yes but no value for TCellCount"
    type: count_distinct

    filters: [
      disabilities.TCellCountAvailable: "1",
      disabilities.TCellCount: "NULL,EMPTY"
    ]

    drill_fields: [disabilities_queries_drill_fields*]
    sql: ${DisabilitiesID} ;;
  }

  measure: disabilities_with_a_value_for_tcellcount_but_no_value_for_tcellsource {
    group_label: "dqDisabilities"
    view_label: "Analysis - Dq"
    label: "Disabilities with a value for TCellCount but no value for TCellSource"
    type: count_distinct

    filters: [
      disabilities.TCellCount: "-NULL,-EMPTY",
      disabilities.TCellSource: "NULL,EMPTY"
    ]

    drill_fields: [disabilities_queries_drill_fields*]
    sql: ${DisabilitiesID} ;;
  }

  measure: hiv_aids_disabilities_without_viralloadavailable_values {
    group_label: "dqDisabilities"
    view_label: "Analysis - Dq"
    label: "HIV/AIDS Disabilities without ViralLoadAvailable values"
    type: count_distinct

    filters: [
      disabilities.DisabilityType: "8",
      disabilities.DisabilityResponse: "1",
      disabilities.ViralLoadAvailable: "NULL,EMPTY",
      funder.Funder: "13,14,15,16,17,18,19"
    ]

    drill_fields: [disabilities_queries_drill_fields*]
    sql: ${DisabilitiesID} ;;
  }

  measure: disabilities_with_viralloadavailable_as_yes_but_no_value_for_viralload {
    group_label: "dqDisabilities"
    view_label: "Analysis - Dq"
    label: "Disabilities with ViralLoadAvailable as Yes but no value for ViralLoad"
    type: count_distinct

    filters: [
      disabilities.ViralLoadAvailable: "1",
      disabilities.ViralLoad: "NULL,EMPTY"
    ]

    drill_fields: [disabilities_queries_drill_fields*]
    sql: ${DisabilitiesID} ;;
  }

  measure: disabilities_with_a_value_for_viralload_but_no_value_for_viralloadsource {
    group_label: "dqDisabilities"
    view_label: "Analysis - Dq"
    label: "Disabilities with a value for ViralLoad but no value for ViralLoadSource"
    type: count_distinct

    filters: [
      disabilities.ViralLoad: "-NULL,-EMPTY",
      disabilities.ViralLoadSource: "NULL,EMPTY"
    ]

    drill_fields: [disabilities_queries_drill_fields*]
    sql: ${DisabilitiesID} ;;
  }

  measure: invalid_date_formatting_for_informationdate_in_disabilities_csv {
    group_label: "DateFormatting"
    view_label: "Analysis - Major"
    label: "Invalid Date Formatting for InformationDate in Disabilities.csv"
    type: count_distinct

    filters: [
      disabilities.InformationDate: "-____-__-__"
    ]

    drill_fields: [disabilities_queries_drill_fields*]
    sql: ${DisabilitiesID} ;;
  }

  measure: invalid_date_formatting_for_datecreated_in_disabilities_csv {
    group_label: "DateFormatting"
    view_label: "Analysis - Major"
    label: "Invalid Date Formatting for DateCreated in Disabilities.csv"
    type: count_distinct

    filters: [
      disabilities.DateCreated: "-____-__-__ __:__:__"
    ]

    drill_fields: [disabilities_queries_drill_fields*]
    sql: ${DisabilitiesID} ;;
  }

  measure: invalid_date_formatting_for_dateupdated_in_disabilities_csv {
    group_label: "DateFormatting"
    view_label: "Analysis - Major"
    label: "Invalid Date Formatting for DateUpdated in Disabilities.csv"
    type: count_distinct

    filters: [
      disabilities.DateUpdated: "-____-__-__ __:__:__"
    ]

    drill_fields: [disabilities_queries_drill_fields*]
    sql: ${DisabilitiesID} ;;
  }

  measure: disability_response_of_1_for_development_hiv_aids_but_disablingcondition_is_not_1_on_enrollment {
    group_label: "dqDisabilities"
    view_label: "Analysis - Dq"
    label: "Disability Response of 1 for Development and/or HIV/AIDS but DisablingCondition is not 1 on Enrollment"
    type: count_distinct

    filters: [
      disabilities.DisabilityType: "6,8",
      disabilities.DisabilityResponse: "1",
      enrollment.DisablingCondition: "-1"
    ]

    drill_fields: [disabilities_queries_drill_fields*]
    sql: ${DisabilitiesID} ;;
  }

  measure: disabilityresponse_and_indefiniteandimpairs_is_1_for_5_7_9_or_10_but_disablingcondition_is_not_1_on_enrollment {
    group_label: "dqDisabilities"
    view_label: "Analysis - Dq"
    label: "DisabilityResponse of 1 and IndefiniteAndImpairs of 1 for Physical disability (5), Chronic health condition (7), Mental health problem (9), or Substance abuse (10), but DisablingCondition is not 1 on Enrollment"
    type: count_distinct

    filters: [
      disabilities.DisabilityType: "5,7,9,10",
      disabilities.DisabilityResponse: "1,2,3",
      disabilities.IndefiniteAndImpairs: "1",
      enrollment.DisablingCondition: "-1"
    ]

    drill_fields: [disabilities_queries_drill_fields*]
    sql: ${DisabilitiesID} ;;
  }

  set: disabilities_queries_drill_fields {
    fields: [
      disabilities.DisabilitiesID
    ]
  }
}
