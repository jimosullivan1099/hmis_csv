view: project {
  sql_table_name: project ;;

  dimension: ProjectID {
    primary_key: yes
    type: string
    label: "ProjectID"
    sql: ${TABLE}.ProjectID ;;
  }

  dimension: ContinuumProject {
    type: string
    label: "ContinuumProject"
    sql: ${TABLE}.ContinuumProject ;;
  }

  dimension: DateCreated {
    type: string
    label: "DateCreated"
    sql: ${TABLE}.DateCreated ;;
  }

  dimension: DateDeleted {
    type: string
    label: "DateDeleted"
    sql: ${TABLE}.DateDeleted ;;
  }

  dimension: DateUpdated {
    type: string
    label: "DateUpdated"
    sql: ${TABLE}.DateUpdated ;;
  }

  dimension: ExportID {
    type: string
    label: "ExportID"
    sql: ${TABLE}.ExportID ;;
  }

  dimension: OrganizationID {
    type: string
    label: "OrganizationID"
    sql: ${TABLE}.OrganizationID ;;
  }

  dimension: PITCount {
    type: string
    label: "PITCount"
    sql: ${TABLE}.PITCount ;;
  }

  dimension: ProjectCommonName {
    type: string
    label: "ProjectCommonName"
    sql: ${TABLE}.ProjectCommonName ;;
  }

  dimension: ProjectName {
    type: string
    label: "ProjectName"
    sql: ${TABLE}.ProjectName ;;
  }

  dimension: ProjectType {
    type: string
    label: "ProjectType"
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
    label: "ResidentialAffiliation"
    sql: ${TABLE}.ResidentialAffiliation ;;
  }

  dimension: TargetPopulation {
    type: string
    label: "PersonalID"
    sql: ${TABLE}.TargetPopulation ;;
  }

  dimension: TrackingMethod {
    type: string
    label: "PersonalID"
    sql: ${TABLE}.TrackingMethod ;;
  }

  dimension: HMISParticipatingProject {
    type: string
    label: "HMISParticipatingProject"
    sql: ${TABLE}.HMISParticipatingProject ;;
  }

  dimension: UserID {
    type: string
    label: "UserID"
    sql: ${TABLE}.UserID ;;
  }

  measure: count {
    type: count
  }
}
