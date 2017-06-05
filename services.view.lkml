view: services {
  derived_table: {
    sql: SELECT * FROM services
      ;;
    indexes: ["ProjectEntryId","PersonalId"]
  }



  dimension: services_id {
    primary_key: yes
    type: string
    sql: ${TABLE}.ServicesID ;;
  }

  dimension: date_created {
    type: string
    sql: ${TABLE}.DateCreated ;;
  }

  dimension: date_deleted {
    type: string
    sql: ${TABLE}.DateDeleted ;;
  }

  dimension: date_provided {
    type: date
    sql: ${TABLE}.DateProvided ;;
  }

  dimension: date_updated {
    type: string
    sql: ${TABLE}.DateUpdated ;;
  }

  dimension: export_id {
    type: string
    # hidden: yes
    sql: ${TABLE}.ExportID ;;
  }

  dimension: faamount {
    type: string
    sql: ${TABLE}.FAAmount ;;
  }

  dimension: other_type_provided {
    type: string
    sql: ${TABLE}.OtherTypeProvided ;;
  }

  dimension: personal_id {
    type: string
    sql: ${TABLE}.PersonalID ;;
  }

  dimension: project_entry_id {
    type: string
    sql: ${TABLE}.ProjectEntryID ;;
  }

  dimension: record_type {
    type: number
    sql: ${TABLE}.RecordType ;;
  }

 dimension: record_type_description {
  type:  string
  case:   {
    when: {
      sql: ${record_type} = 12;;
      label: "Contact"
          }
    when: {
      sql: ${record_type} = 200;;
      label: "Bed Night"
    }
    when: {
      sql: ${record_type} = 141;;
      label: "PATH service"
    } when: {
      sql: ${record_type} = 142;;
      label: "RHY Service"
    } when: {
      sql: ${record_type} = 143;;
      label: "HOPWA Service"
    } when: {
      sql: ${record_type} = 144;;
      label: "SSVF Service"
    } when: {
      sql: ${record_type} = 151;;
      label: "HOPWA financial assistance"
    } when: {
      sql: ${record_type} = 152;;
      label: "SSVF financial assistance"
    } when: {
      sql: ${record_type} = 161;;
      label: "PATH referral"
    } when: {
      sql: ${record_type} = 162;;
      label: "RHY referral"
    } when: {
      sql: ${record_type} = 210;;
      label: "HUD-VASH OTH voucher tracking"
    }
  }

 }



  dimension: referral_outcome {
    type: string
    sql: ${TABLE}.ReferralOutcome ;;
  }

  dimension: sub_type_provided {
    type: string
    sql: ${TABLE}.SubTypeProvided ;;
  }

  dimension: type_provided {
    type: number
    sql: ${TABLE}.TypeProvided ;;
  }

  dimension:type_provided_description {
    type:  string
    case:   {
      when: {
        sql: ${record_type} = 12;;
        label: "Contact"
      }
      when: {
        sql: ${record_type} = 200;;
        label: "Bed Night"
      }
      when: {
        sql: ${record_type} = 141 and ${type_provided} = 1;;
        label: "Re-engagement"
      } when: {
        sql: ${record_type} = 141 and ${type_provided} = 2;;
        label: "Screening"
      } when: {
        sql: ${record_type} = 141 and ${type_provided} = 3;;
        label: "Habilitation/rehabilitation"
      } when: {
        sql: ${record_type} = 141 and ${type_provided} = 4;;
        label: "Community mental health"
      } when: {
        sql: ${record_type} = 141 and ${type_provided} = 5;;
        label: "Substance use treatment"
      } when: {
        sql: ${record_type} = 141 and ${type_provided} = 6;;
        label: "Case management"
      } when: {
        sql: ${record_type} = 141 and ${type_provided} = 7;;
        label: "Residential supportive servicesl"
      } when: {
        sql: ${record_type} = 141 and ${type_provided} = 8;;
        label: "Housing minor renovation"
      } when: {
        sql: ${record_type} = 141 and ${type_provided} = 9;;
        label: "Housing moving assistance"
      }
      when: {
        sql: ${record_type} = 141 and ${type_provided} = 10;;
        label: "Housing eligibility determination"
      }
      when: {
        sql: ${record_type} = 141 and ${type_provided} = 11;;
        label:  "Security deposits"
      }
      when: {
        sql: ${record_type} = 141 and ${type_provided} = 12;;
        label: "One-time rent for eviction prevention"
      }
      when: {
        sql: ${record_type} = 141 and ${type_provided} = 13;;
        label: "Clinical assessment"
      }

      when: {
        sql: ${record_type} = 142 and ${type_provided} = 1;;
        label: "Basic support services"
      } when: {
        sql: ${record_type} = 142 and ${type_provided} = 2;;
        label: "Community service/service learning (CSL)"
      } when: {
        sql: ${record_type} = 142 and ${type_provided} = 3;;
        label: "Counseling/therapy"
      } when: {
        sql: ${record_type} = 142 and ${type_provided} = 4;;
        label: "Dental care"
      } when: {
        sql: ${record_type} = 142 and ${type_provided} = 5;;
        label: "Education"
      } when: {
        sql: ${record_type} = 142 and ${type_provided} = 6;;
        label: "Employment and training services"
      } when: {
        sql: ${record_type} = 142 and ${type_provided} = 7;;
        label: "Criminal justice /legal services"
      } when: {
        sql: ${record_type} = 142 and ${type_provided} = 8;;
        label: "Life skills training"
      } when: {
        sql: ${record_type} = 142 and ${type_provided} = 9;;
        label: "Parenting education for parent of youth"
      }
      when: {
        sql: ${record_type} = 142 and ${type_provided} = 10;;
        label: "Parenting education for youth with children"
      }
      when: {
        sql: ${record_type} = 142 and ${type_provided} = 11;;
        label:  "Peer (youth) counseling"
      }
      when: {
        sql: ${record_type} = 142 and ${type_provided} = 12;;
        label: "Post-natal care"
      }
      when: {
        sql: ${record_type} = 142 and ${type_provided} = 13;;
        label: "Pre-natal care"
      }
      when: {
        sql: ${record_type} = 142 and ${type_provided} = 14;;
        label: "Health/medical care"
      } when: {
        sql: ${record_type} = 142 and ${type_provided} = 15;;
        label: "Psychological or psychiatric care"
      } when: {
        sql: ${record_type} = 142 and ${type_provided} = 16;;
        label: "Recreational activities"
      } when: {
        sql: ${record_type} = 142 and ${type_provided} = 17;;
        label: "Substance abuse assessment and/or treatment"
      } when: {
        sql: ${record_type} = 142 and ${type_provided} = 18;;
        label: "Substance abuse prevention"
      } when: {
        sql: ${record_type} = 142 and ${type_provided} = 19;;
        label: "Support group"
      }
      when: {
        sql: ${record_type} = 142 and ${type_provided} = 20;;
        label: "Preventative – overnight interim, respite"
      }
      when: {
        sql: ${record_type} = 142 and ${type_provided} = 21;;
        label:  "Preventative – formal placement in an alternative setting outside of BCP"
      }
      when: {
        sql: ${record_type} = 142 and ${type_provided} = 22;;
        label: "Preventative – entry into BCP after preventative services"
      }
      when: {
        sql: ${record_type} = 142 and ${type_provided} = 23;;
        label: "Street outreach – health and hygiene products distributed"
      }
      when: {
        sql: ${record_type} = 142 and ${type_provided} = 24;;
        label: "Street outreach – food and drink items"
      }
      when: {
        sql: ${record_type} = 142 and ${type_provided} = 25;;
        label: "Street outreach – services information/brochures"
      }

    }

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
      services_id,
      export.export_id,
      export.source_name,
      export.software_name,
      servicemappings.count,
      servicemappings_copy.count,
      servicemappings_dm154.count,
      _casenotes.count,
      _casenotes1.count
    ]
  }
}
