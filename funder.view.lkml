view: funder {
  sql_table_name: funder ;;

  dimension: funder_id {
    primary_key: yes
    type: string
    sql: ${TABLE}.FunderID ;;
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

  dimension: end_date {
    type: string
    sql: ${TABLE}.EndDate ;;
  }

  dimension: export_id {
    type: string
    # hidden: yes
    sql: ${TABLE}.ExportID ;;
  }

  dimension: funder {
    type: string
    sql: ${TABLE}.Funder ;;
  }

  dimension: funder_description {
    type:  string
    case:   {
      when: {
        sql: ${funder} = 1;;
        label: "HUD:CoC – Homelessness Prevention (High Performing Comm. Only)"
      }
      when: {
        sql: ${funder} = 2;;
        label: "HUD:CoC – Permanent Supportive Housing"
      }
      when: {
        sql: ${funder} = 3;;
        label: "HUD:CoC – Rapid Re-Housing"
      }
      when: {
        sql: ${funder} = 4;;
        label: "HUD:CoC – Supportive Services Only"
      }
      when: {
        sql: ${funder} = 5;;
        label: "HUD:CoC – Transitional Housing"
      }
      when: {
        sql: ${funder} = 6;;
        label: "HUD:CoC – Safe Haven"
      }
      when: {
        sql: ${funder} = 7;;
        label: "HUD:CoC – Single Room Occupancy (SRO)"
      }
      when: {
        sql: ${funder} = 8;;
        label: "HUD:ESG – Emergency Shelter (operating and/or essential services)"
      }
      when: {
        sql: ${funder} = 9;;
        label: "HUD:ESG – Homelessness Prevention"
      }
      when: {
        sql: ${funder} = 10;;
        label: "HUD:ESG – Rapid Rehousing"
      }
      when: {
        sql: ${funder} = 11;;
        label: "HUD:ESG – Street Outreach"
      }
      when: {
        sql: ${funder} = 12;;
        label: "HUD:Rural Housing Stability Assistance Program"
      }
      when: {
        sql: ${funder} = 13;;
        label: "HUD:HOPWA – Hotel/Motel Vouchers"
      }
      when: {
        sql: ${funder} = 14;;
        label: "HUD:HOPWA – Housing Information"
      }
      when: {
        sql: ${funder} = 15;;
        label: "HUD:HOPWA – Permanent Housing (facility based or TBRA)"
      }
      when: {
        sql: ${funder} = 16;;
        label: "HUD:HOPWA – Permanent Housing Placement"
      }
      when: {
        sql: ${funder} = 17;;
        label: "HUD:HOPWA – Short-Term Rent, Mortgage, Utility assistance"
      }
      when: {
        sql: ${funder} = 18;;
        label: "HUD:HOPWA – Short-Term Supportive Facility"
      }
      when: {
        sql: ${funder} = 19;;
        label: "HUD:HOPWA – Transitional Housing (facility based or TBRA)"
      }
      when: {
        sql: ${funder} = 20;;
        label: "HUD:HUD/VASH"
      }
      when: {
        sql: ${funder} = 21;;
        label: "HHS:PATH – Street Outreach & Supportive Services Only"
      }
      when: {
        sql: ${funder} = 22;;
        label: "HHS:RHY – Basic Center Program (prevention and shelter)"
      }
      when: {
        sql: ${funder} = 23;;
        label: "HHS:RHY – Maternity Group Home for Pregnant and Parenting Youth"
      }
      when: {
        sql: ${funder} = 24;;
        label: "HHS:RHY – Transitional Living Program"
      }
      when: {
        sql: ${funder} = 25;;
        label: "HHS:RHY – Street Outreach Project"
      }
      when: {
        sql: ${funder} = 26;;
        label: "HHS:RHY – Demonstration Project"
      }
      when: {
        sql: ${funder} = 27;;
        label: "VA: CRS Contract Residential Services"
      }
      when: {
        sql: ${funder} = 29;;
        label: "VA:Domiciliary Care"
      }
      when: {
        sql: ${funder} = 30;;
        label: "VA:Community Contract Safe Haven Program"
      }
      when: {
        sql: ${funder} = 32;;
        label: "VA:Compensated Work Therapy Transitional Residence"
      }
      when: {
        sql: ${funder} = 33;;
        label: "VA:Supportive Services for Veteran Families"
      }
      when: {
        sql: ${funder} = 34;;
        label: "Other (N/A)"
      }
      when: {
        sql: ${funder} = 35;;
        label: "HUD: Pay for Success"
      }
      when: {
        sql: ${funder} = 36;;
        label: "HUD: Public and Indian Housing (PIH) Programs"
      }
      when: {
        sql: ${funder} = 37;;
        label: "VA:Grant Per Diem – Bridge Housing"
      }
      when: {
        sql: ${funder} = 38;;
        label: "VA:Grant Per Diem – Low Demand"
      }
      when: {
        sql: ${funder} = 39;;
        label: "VA:Grant Per Diem – Hospital to Housing"
      }
      when: {
        sql: ${funder} = 40;;
        label: "VA:Grant Per Diem – Clinical Treatment"
      }
      when: {
        sql: ${funder} = 41;;
        label: "VA:Grant Per Diem – Service Intensive Transitional Housing"
      }
      when: {
        sql: ${funder} = 42;;
        label: "VA:Grant Per Diem – Transition in Place"
      }
    }
  }

  dimension: grant_id {
    type: string
    sql: ${TABLE}.GrantID ;;
  }

  dimension: project_id {
    type: string
    # hidden: yes
    sql: ${TABLE}.ProjectID ;;
  }

  dimension: start_date {
    type: string
    sql: ${TABLE}.StartDate ;;
  }

  dimension: user_id {
    type: string
    sql: ${TABLE}.UserID ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  # ----- Sets of fields for drilling ------
  set: detail {
    fields: [
      funder_id,
      project.project_id,
      project.project_common_name,
      project.project_name,
      export.export_id,
      export.source_name,
      export.software_name
    ]
  }
}
