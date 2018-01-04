view: funder {
  sql_table_name: funder ;;

  dimension: FunderID {
    primary_key: yes
    type: string
    sql: ${TABLE}.FunderID ;;
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

  dimension: EndDate {
    type: string
    sql: ${TABLE}.EndDate ;;
  }

  dimension: ExportID {
    type: string
    # hidden: yes
    sql: ${TABLE}.ExportID ;;
  }

  dimension: Funder {
    type: string
    sql: ${TABLE}.Funder ;;
  }

  dimension: funder_description {
    type:  string
    case:   {
      when: {
        sql: ${Funder} = 1;;
        label: "HUD:CoC – Homelessness Prevention (High Performing Comm. Only)"
      }
      when: {
        sql: ${Funder} = 2;;
        label: "HUD:CoC – Permanent Supportive Housing"
      }
      when: {
        sql: ${Funder} = 3;;
        label: "HUD:CoC – Rapid Re-Housing"
      }
      when: {
        sql: ${Funder} = 4;;
        label: "HUD:CoC – Supportive Services Only"
      }
      when: {
        sql: ${Funder} = 5;;
        label: "HUD:CoC – Transitional Housing"
      }
      when: {
        sql: ${Funder} = 6;;
        label: "HUD:CoC – Safe Haven"
      }
      when: {
        sql: ${Funder} = 7;;
        label: "HUD:CoC – Single Room Occupancy (SRO)"
      }
      when: {
        sql: ${Funder} = 8;;
        label: "HUD:ESG – Emergency Shelter (operating and/or essential services)"
      }
      when: {
        sql: ${Funder} = 9;;
        label: "HUD:ESG – Homelessness Prevention"
      }
      when: {
        sql: ${Funder} = 10;;
        label: "HUD:ESG – Rapid Rehousing"
      }
      when: {
        sql: ${Funder} = 11;;
        label: "HUD:ESG – Street Outreach"
      }
      when: {
        sql: ${Funder} = 12;;
        label: "HUD:Rural Housing Stability Assistance Program"
      }
      when: {
        sql: ${Funder} = 13;;
        label: "HUD:HOPWA – Hotel/Motel Vouchers"
      }
      when: {
        sql: ${Funder} = 14;;
        label: "HUD:HOPWA – Housing Information"
      }
      when: {
        sql: ${Funder} = 15;;
        label: "HUD:HOPWA – Permanent Housing (facility based or TBRA)"
      }
      when: {
        sql: ${Funder} = 16;;
        label: "HUD:HOPWA – Permanent Housing Placement"
      }
      when: {
        sql: ${Funder} = 17;;
        label: "HUD:HOPWA – Short-Term Rent, Mortgage, Utility assistance"
      }
      when: {
        sql: ${Funder} = 18;;
        label: "HUD:HOPWA – Short-Term Supportive Facility"
      }
      when: {
        sql: ${Funder} = 19;;
        label: "HUD:HOPWA – Transitional Housing (facility based or TBRA)"
      }
      when: {
        sql: ${Funder} = 20;;
        label: "HUD:HUD/VASH"
      }
      when: {
        sql: ${Funder} = 21;;
        label: "HHS:PATH – Street Outreach & Supportive Services Only"
      }
      when: {
        sql: ${Funder} = 22;;
        label: "HHS:RHY – Basic Center Program (prevention and shelter)"
      }
      when: {
        sql: ${Funder} = 23;;
        label: "HHS:RHY – Maternity Group Home for Pregnant and Parenting Youth"
      }
      when: {
        sql: ${Funder} = 24;;
        label: "HHS:RHY – Transitional Living Program"
      }
      when: {
        sql: ${Funder} = 25;;
        label: "HHS:RHY – Street Outreach Project"
      }
      when: {
        sql: ${Funder} = 26;;
        label: "HHS:RHY – Demonstration Project"
      }
      when: {
        sql: ${Funder} = 27;;
        label: "VA: CRS Contract Residential Services"
      }
      when: {
        sql: ${Funder} = 29;;
        label: "VA:Domiciliary Care"
      }
      when: {
        sql: ${Funder} = 30;;
        label: "VA:Community Contract Safe Haven Program"
      }
      when: {
        sql: ${Funder} = 32;;
        label: "VA:Compensated Work Therapy Transitional Residence"
      }
      when: {
        sql: ${Funder} = 33;;
        label: "VA:Supportive Services for Veteran Families"
      }
      when: {
        sql: ${Funder} = 34;;
        label: "Other (N/A)"
      }
      when: {
        sql: ${Funder} = 35;;
        label: "HUD: Pay for Success"
      }
      when: {
        sql: ${Funder} = 36;;
        label: "HUD: Public and Indian Housing (PIH) Programs"
      }
      when: {
        sql: ${Funder} = 37;;
        label: "VA:Grant Per Diem – Bridge Housing"
      }
      when: {
        sql: ${Funder} = 38;;
        label: "VA:Grant Per Diem – Low Demand"
      }
      when: {
        sql: ${Funder} = 39;;
        label: "VA:Grant Per Diem – Hospital to Housing"
      }
      when: {
        sql: ${Funder} = 40;;
        label: "VA:Grant Per Diem – Clinical Treatment"
      }
      when: {
        sql: ${Funder} = 41;;
        label: "VA:Grant Per Diem – Service Intensive Transitional Housing"
      }
      when: {
        sql: ${Funder} = 42;;
        label: "VA:Grant Per Diem – Transition in Place"
      }
    }
  }

  dimension: GrantID {
    type: string
    sql: ${TABLE}.GrantID ;;
  }

  dimension: ProjectID {
    type: string
    # hidden: yes
    sql: ${TABLE}.ProjectID ;;
  }

  dimension: StartDate {
    type: string
    sql: ${TABLE}.StartDate ;;
  }

  dimension: UserID {
    type: string
    sql: ${TABLE}.UserID ;;
  }

  measure: count {
    type: count
  }
}
