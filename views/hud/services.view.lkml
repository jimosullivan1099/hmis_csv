view: services {
  sql_table_name: services ;;

  dimension: ServicesID {
    type: string
    label: "ServicesID"
    primary_key: yes
    sql: ${TABLE}.ServicesID ;;
  }

  dimension: EnrollmentID {
    type: string
    label: "EnrollmentID"
    sql: ${TABLE}.EnrollmentID ;;
  }

  dimension: PersonalID {
    type: string
    label: "PersonalID"
    sql: ${TABLE}.PersonalID ;;
  }

  dimension: DateProvided {
    type: string
    label: "DateProvided"
    sql: ${TABLE}.DateProvided ;;
  }

  dimension: RecordType {
    type: string
    label: "RecordType"
    sql: ${TABLE}.RecordType ;;
  }

  dimension: TypeProvided {
    type: string
    label: "TypeProvided"
    sql: ${TABLE}.TypeProvided ;;
  }

  dimension: OtherTypeProvided {
    type: string
    label: "OtherTypeProvided"
    sql: ${TABLE}.OtherTypeProvided ;;
  }

  dimension: SubTypeProvided {
    type: string
    label: "SubTypeProvided"
    sql: ${TABLE}.SubTypeProvided ;;
  }

  dimension: FAAmount {
    type: string
    label: "FAAmount"
    sql: ${TABLE}.FAAmount ;;
  }

  dimension: ReferralOutcome {
    type: string
    label: "ReferralOutcome"
    sql: ${TABLE}.ReferralOutcome ;;
  }

  dimension: DateCreated {
    type: string
    label: "DateCreated"
    sql: ${TABLE}.DateCreated ;;
  }

  dimension: DateUpdated {
    type: string
    label: "DateUpdated"
    sql: ${TABLE}.DateUpdated ;;
  }

  dimension: UserID {
    type: string
    label: "UserID"
    sql: ${TABLE}.UserID ;;
  }

  dimension: DateDeleted {
    type: string
    label: "DateDeleted"
    sql: ${TABLE}.DateDeleted ;;
  }

  dimension: ExportID {
    type: string
    label: "ExportID"
    sql: ${TABLE}.ExportID ;;
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

  measure: count {
    type: count
  }
}
