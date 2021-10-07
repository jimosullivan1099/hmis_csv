include: "/views/custom/client_location.view"

view: +client_location {

  measure: roi_count {
    group_label: "Counts"
    view_label: "Analysis - Custom"
    label: "Client Location Count"
    type: count_distinct
    drill_fields: [client_location_drill_fields*]

    sql: ${LocationID} ;;
  }

  measure: type_null_or_empty_value_count {
    group_label: "Counts"
    view_label: "Analysis - Custom"
    label: "Type is Null or Empty Count"
    type: count_distinct
    filters: [
      Type: "NULL,EMPTY"
    ]
    drill_fields: [client_location_drill_fields*]
    sql: ${LocationID} ;;
  }

  measure: type_invalid_value_count {
    group_label: "Counts"
    view_label: "Analysis - Custom"
    label: "Type not Allowed Count"
    type: count_distinct
    filters: [
      Type: "-0,-1,-2,-3,-4,-5,-6,-7,-8,-9,-10,-11,-12,-13,-14,-NULL,-EMPTY"
    ]
    drill_fields: [client_location_drill_fields*]
    sql: ${LocationID} ;;
  }

  measure: address1_null_or_empty_value_count {
    group_label: "Counts"
    view_label: "Analysis - Custom"
    label: "Address1 is Null or Empty Count"
    type: count_distinct
    filters: [
      Address1: "NULL,EMPTY"
    ]
    drill_fields: [client_location_drill_fields*]
    sql: ${LocationID} ;;
  }


  measure: city_null_or_empty_value_count {
    group_label: "Counts"
    view_label: "Analysis - Custom"
    label: "City is Null or Empty Count"
    type: count_distinct
    filters: [
      City: "NULL,EMPTY"
    ]
    drill_fields: [client_location_drill_fields*]
    sql: ${LocationID} ;;
  }

  measure: city_null_or_empty_value_count {
    group_label: "Counts"
    view_label: "Analysis - Custom"
    label: "City is Null or Empty Count"
    type: count_distinct
    filters: [
      City: "NULL,EMPTY"
    ]
    drill_fields: [client_location_drill_fields*]
    sql: ${LocationID} ;;
  }

  measure: state_null_or_empty_value_count {
    group_label: "Counts"
    view_label: "Analysis - Custom"
    label: "State is Null or Empty Count"
    type: count_distinct
    filters: [
      State: "NULL,EMPTY"
    ]
    drill_fields: [client_location_drill_fields*]
    sql: ${LocationID} ;;
  }

  measure: state_null_or_empty_value_count {
    group_label: "Counts"
    view_label: "Analysis - Custom"
    label: "State is Null or Empty Count"
    type: count_distinct
    filters: [
      State: "-AK,-AL,-AR,-AS,-AZ,-CA,-CO,-CT,-DC,-DE,-FL,-GA,
              -GU,-HI,-IA,-ID,-IL,-IN,-KS,-KY,-LA,-MA,-MD,-ME,-MI,
              -MN,-MO,-MR,-MS,-MT,-NC,-ND,-NE,-NH,-NJ,-NM,-NV,-NY,
              -OH,-OK,-OR,-PA,-PR,-RI,-SC,-SD,-TN,-TX,-UT,-VA,-VI,
              -VT,-WA,-WI,-WV,-WY,-NULL,-EMPTY"
    ]
    drill_fields: [client_location_drill_fields*]
    sql: ${LocationID} ;;
  }

  measure: emails_with_invalid_format_count {
    group_label: "Counts"
    view_label: "Analysis - Custom"
    label: "Email with Invalid Format Count"
    type: number
    drill_fields: [client_location_drill_fields*]
    sql:
        COUNT(DISTINCT CASE WHEN ${Email} NOT LIKE '%@%.%' AND ${Email} <> ''
                            THEN ${LocationID}
                            ELSE NULL
                       END
        )
    ;;
  }

  measure: emails_with_invalid_format_count {
    group_label: "Counts"
    view_label: "Analysis - Custom"
    label: "Zipcode is longer than 5 digits Count"
    type: number
    drill_fields: [client_location_drill_fields*]
    sql:
        COUNT(DISTINCT CASE WHEN LENGTH(${Zipcode}) > 5
                            THEN ${LocationID}
                            ELSE NULL
                       END
        )
    ;;
  }

  measure: zipcode_with_non_numeric_value_count {
    group_label: "Counts"
    view_label: "Analysis - Custom"
    label: "Zipcode in Non-numeric Format Count"
    type: number
    drill_fields: [client_location_drill_fields*]
    sql:
        COUNT(DISTINCT CASE WHEN ${Zipcode} NOT REGEXP '^[0-9]*$'
                            THEN ${LocationID}
                            ELSE NULL
                       END
        )
    ;;
  }

  measure: phone1_with_invalid_format_count {
    group_label: "Counts"
    view_label: "Analysis - Custom"
    label: "Phone1 in Non-numeric Format Count"
    type: number
    drill_fields: [client_location_drill_fields*]
    sql:
        COUNT(DISTINCT CASE WHEN ${Phone1} <> '' AND ${Phone1} REGEXP '^[a-zA-Z/@.\` ]*$'
                            THEN ${LocationID}
                            ELSE NULL
                       END
        )
    ;;
  }

  measure: status_null_or_empty_value_count {
    group_label: "Counts"
    view_label: "Analysis - Custom"
    label: "Status is Null or Empty Count"
    type: count_distinct
    filters: [
      Status: "NULL,EMPTY"
    ]
    drill_fields: [client_location_drill_fields*]
    sql: ${LocationID} ;;
  }

  measure: status_invalid_value_count {
    group_label: "Counts"
    view_label: "Analysis - Custom"
    label: "Status not Allowed Count"
    type: count_distinct
    filters: [
      Status: "-0,-1,-NULL,-EMPTY"
    ]
    drill_fields: [client_location_drill_fields*]
    sql: ${LocationID} ;;
  }

  set: client_location_drill_fields {
    fields: [
      LocationID,
      PersonalID
    ]
  }
}
