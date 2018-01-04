view: project {
  sql_table_name: project ;;

  dimension: ProjectID {
    primary_key: yes
    type: string
    sql: ${TABLE}.ProjectID ;;
  }

  dimension: ContinuumProject {
    type: string
    sql: ${TABLE}.ContinuumProject ;;
  }

  dimension: DateCreated {
    type: string
    sql: ${TABLE}.DateCreated ;;
  }

  dimension: DateDeleted {
    type: string
    sql: ${TABLE}.DateDeleted ;;
  }

  dimension: DateUpdated {
    type: string
    sql: ${TABLE}.DateUpdated ;;
  }

  dimension: ExportID {
    type: string
    # hidden: yes
    sql: ${TABLE}.ExportID ;;
  }

  dimension: OrganizationID {
    type: string
    # hidden: yes
    sql: ${TABLE}.OrganizationID ;;
  }

  dimension: PITCount {
    type: string
    sql: ${TABLE}.PITCount ;;
  }

  dimension: ProjectCommonName {
    type: string
    sql: ${TABLE}.ProjectCommonName ;;
  }

  dimension: ProjectName {
    type: string
    sql: ${TABLE}.ProjectName ;;
  }

  dimension: ProjectType {
    type: string
    sql: ${TABLE}.ProjectType ;;
  }

  dimension: project_type_description {
    type:  string
    case:   {
      when: {
        sql: ${ProjectType} = 1;;
        label: "Emergency Shelter"
      }
      when: {
        sql: ${ProjectType} = 2;;
        label: "Transitional Housing"
      }
      when: {
        sql: ${ProjectType} = 3;;
        label: "PH - Permanent Supportive Housing (disability required)"
      }
      when: {
        sql: ${ProjectType} = 4;;
        label: "Street Outreach"
      }
      when: {
        sql: ${ProjectType} = 6;;
        label: "Services Only"
      }
      when: {
        sql: ${ProjectType} = 7;;
        label: "Other"
      }
      when: {
        sql: ${ProjectType} = 8;;
        label: "Safe Haven"
      }
      when: {
        sql: ${ProjectType} = 9;;
        label: "PH - Housing Only"
      }
      when: {
        sql: ${ProjectType} = 10;;
        label: "PH - Housing with Services (no disability required)"
      }
      when: {
        sql: ${ProjectType} = 11;;
        label: "Day Shelter"
      }
      when: {
        sql: ${ProjectType} = 12;;
        label: "Homeless Prevention"
      }
      when: {
        sql: ${ProjectType} = 13;;
        label: "PH - Rapid Re-Housing"
      }
      when: {
        sql: ${ProjectType} = 14;;
        label: "Coordinated Assessment"
      }
    }
  }

  dimension: ResidentialAffiliation {
    type: string
    sql: ${TABLE}.ResidentialAffiliation ;;
  }

  dimension: TargetPopulation {
    type: string
    sql: ${TABLE}.TargetPopulation ;;
  }

  dimension: TrackingMethod {
    type: string
    sql: ${TABLE}.TrackingMethod ;;
  }

  dimension: UserID {
    type: string
    sql: ${TABLE}.UserID ;;
  }

  measure: count {
    type: count
  }
}
