view: services {
  derived_table: {
    sql: SELECT * FROM services ;;
    indexes: ["ServicesID", "EnrollmentID", "PersonalID"]
    sql_trigger_value: SELECT COUNT(*) FROM services ;;
  }

  dimension: ServicesID {
    primary_key: yes
    type: string
    sql: ${TABLE}.ServicesID ;;
  }

  dimension: DateCreated {
    type: string
    sql: ${TABLE}.DateCreated ;;
  }

  dimension: DateDeleted {
    type: string
    sql: ${TABLE}.DateDeleted ;;
  }

  dimension: DateProvided {
    type: date
    sql: ${TABLE}.DateProvided ;;
  }

  dimension: DateUpdated {
    type: string
    sql: ${TABLE}.DateUpdated ;;
  }

  dimension: ExportID {
    type: string
    sql: ${TABLE}.ExportID ;;
  }

  dimension: FAAmount {
    type: string
    sql: ${TABLE}.FAAmount ;;
  }

  dimension: OtherTypeProvided {
    type: string
    sql: ${TABLE}.OtherTypeProvided ;;
  }

  dimension: PersonalID {
    type: string
    sql: ${TABLE}.PersonalID ;;
  }

  dimension: EnrollmentID {
    type: string
    sql: ${TABLE}.EnrollmentID ;;
  }

  dimension: RecordType {
    type: string
    sql: ${TABLE}.RecordType ;;
  }

 dimension: record_type_description {
  type:  string
  case:   {
    when: {
      sql: ${RecordType} = 12;;
      label: "Contact"
          }
    when: {
      sql: ${RecordType} = 200;;
      label: "Bed Night"
    }
    when: {
      sql: ${RecordType} = 141;;
      label: "PATH service"
    } when: {
      sql: ${RecordType} = 142;;
      label: "RHY Service"
    } when: {
      sql: ${RecordType} = 143;;
      label: "HOPWA Service"
    } when: {
      sql: ${RecordType} = 144;;
      label: "SSVF Service"
    } when: {
      sql: ${RecordType} = 151;;
      label: "HOPWA financial assistance"
    } when: {
      sql: ${RecordType} = 152;;
      label: "SSVF financial assistance"
    } when: {
      sql: ${RecordType} = 161;;
      label: "PATH referral"
    } when: {
      sql: ${RecordType} = 162;;
      label: "RHY referral"
    } when: {
      sql: ${RecordType} = 210;;
      label: "HUD-VASH OTH voucher tracking"
    }
  }

 }



  dimension: ReferralOutcome {
    type: string
    sql: ${TABLE}.ReferralOutcome ;;
  }

  dimension: SubTypeProvided {
    type: string
    sql: ${TABLE}.SubTypeProvided ;;
  }

  dimension: TypeProvided {
    type: string
    sql: ${TABLE}.TypeProvided ;;
  }

  dimension:type_provided_description {
    type:  string
    case:   {
      when: {
        sql: ${RecordType} = 12;;
        label: "Contact"
      }
      when: {
        sql: ${RecordType} = 200;;
        label: "Bed Night"
      }
      when: {
        sql: ${RecordType} = 141 and ${TypeProvided} = 1;;
        label: "Re-engagement"
      } when: {
        sql: ${RecordType} = 141 and ${TypeProvided} = 2;;
        label: "Screening"
      } when: {
        sql: ${RecordType} = 141 and ${TypeProvided} = 3;;
        label: "Habilitation/rehabilitation"
      } when: {
        sql: ${RecordType} = 141 and ${TypeProvided} = 4;;
        label: "Community mental health"
      } when: {
        sql: ${RecordType} = 141 and ${TypeProvided} = 5;;
        label: "Substance use treatment"
      } when: {
        sql: ${RecordType} = 141 and ${TypeProvided} = 6;;
        label: "Case management"
      } when: {
        sql: ${RecordType} = 141 and ${TypeProvided} = 7;;
        label: "Residential supportive servicesl"
      } when: {
        sql: ${RecordType} = 141 and ${TypeProvided} = 8;;
        label: "Housing minor renovation"
      } when: {
        sql: ${RecordType} = 141 and ${TypeProvided} = 9;;
        label: "Housing moving assistance"
      }
      when: {
        sql: ${RecordType} = 141 and ${TypeProvided} = 10;;
        label: "Housing eligibility determination"
      }
      when: {
        sql: ${RecordType} = 141 and ${TypeProvided} = 11;;
        label:  "Security deposits"
      }
      when: {
        sql: ${RecordType} = 141 and ${TypeProvided} = 12;;
        label: "One-time rent for eviction prevention"
      }
      when: {
        sql: ${RecordType} = 141 and ${TypeProvided} = 13;;
        label: "Clinical assessment"
      }

      when: {
        sql: ${RecordType} = 142 and ${TypeProvided} = 1;;
        label: "Basic support services"
      } when: {
        sql: ${RecordType} = 142 and ${TypeProvided} = 2;;
        label: "Community service/service learning (CSL)"
      } when: {
        sql: ${RecordType} = 142 and ${TypeProvided} = 3;;
        label: "Counseling/therapy"
      } when: {
        sql: ${RecordType} = 142 and ${TypeProvided} = 4;;
        label: "Dental care"
      } when: {
        sql: ${RecordType} = 142 and ${TypeProvided} = 5;;
        label: "Education"
      } when: {
        sql: ${RecordType} = 142 and ${TypeProvided} = 6;;
        label: "Employment and training services"
      } when: {
        sql: ${RecordType} = 142 and ${TypeProvided} = 7;;
        label: "Criminal justice /legal services"
      } when: {
        sql: ${RecordType} = 142 and ${TypeProvided} = 8;;
        label: "Life skills training"
      } when: {
        sql: ${RecordType} = 142 and ${TypeProvided} = 9;;
        label: "Parenting education for parent of youth"
      }
      when: {
        sql: ${RecordType} = 142 and ${TypeProvided} = 10;;
        label: "Parenting education for youth with children"
      }
      when: {
        sql: ${RecordType} = 142 and ${TypeProvided} = 11;;
        label:  "Peer (youth) counseling"
      }
      when: {
        sql: ${RecordType} = 142 and ${TypeProvided} = 12;;
        label: "Post-natal care"
      }
      when: {
        sql: ${RecordType} = 142 and ${TypeProvided} = 13;;
        label: "Pre-natal care"
      }
      when: {
        sql: ${RecordType} = 142 and ${TypeProvided} = 14;;
        label: "Health/medical care"
      } when: {
        sql: ${RecordType} = 142 and ${TypeProvided} = 15;;
        label: "Psychological or psychiatric care"
      } when: {
        sql: ${RecordType} = 142 and ${TypeProvided} = 16;;
        label: "Recreational activities"
      } when: {
        sql: ${RecordType} = 142 and ${TypeProvided} = 17;;
        label: "Substance abuse assessment and/or treatment"
      } when: {
        sql: ${RecordType} = 142 and ${TypeProvided} = 18;;
        label: "Substance abuse prevention"
      } when: {
        sql: ${RecordType} = 142 and ${TypeProvided} = 19;;
        label: "Support group"
      }
      when: {
        sql: ${RecordType} = 142 and ${TypeProvided} = 20;;
        label: "Preventative – overnight interim, respite"
      }
      when: {
        sql: ${RecordType} = 142 and ${TypeProvided} = 21;;
        label:  "Preventative – formal placement in an alternative setting outside of BCP"
      }
      when: {
        sql: ${RecordType} = 142 and ${TypeProvided} = 22;;
        label: "Preventative – entry into BCP after preventative services"
      }
      when: {
        sql: ${RecordType} = 142 and ${TypeProvided} = 23;;
        label: "Street outreach – health and hygiene products distributed"
      }
      when: {
        sql: ${RecordType} = 142 and ${TypeProvided} = 24;;
        label: "Street outreach – food and drink items"
      }
      when: {
        sql: ${RecordType} = 142 and ${TypeProvided} = 25;;
        label: "Street outreach – services information/brochures"
      }

    }

  }

  dimension: UserID {
    type: string
    sql: ${TABLE}.UserID ;;
  }

  measure: count {
    type: count
  }
}
