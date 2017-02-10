view: project {
  sql_table_name: project ;;

  dimension: project_id {
    primary_key: yes
    type: string
    sql: ${TABLE}.ProjectID ;;
  }

  dimension: continuum_project {
    type: string
    sql: ${TABLE}.ContinuumProject ;;
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

  dimension: export_id {
    type: string
    # hidden: yes
    sql: ${TABLE}.ExportID ;;
  }

  dimension: organization_id {
    type: string
    # hidden: yes
    sql: ${TABLE}.OrganizationID ;;
  }

  dimension: pitcount {
    type: string
    sql: ${TABLE}.PITCount ;;
  }

  dimension: project_common_name {
    type: string
    sql: ${TABLE}.ProjectCommonName ;;
  }

  dimension: project_name {
    type: string
    sql: ${TABLE}.ProjectName ;;
  }

  dimension: project_type {
    type: string
    sql: ${TABLE}.ProjectType ;;
  }

  dimension: residential_affiliation {
    type: string
    sql: ${TABLE}.ResidentialAffiliation ;;
  }

  dimension: target_population {
    type: string
    sql: ${TABLE}.TargetPopulation ;;
  }

  dimension: tracking_method {
    type: string
    sql: ${TABLE}.TrackingMethod ;;
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
      project_id,
      project_common_name,
      project_name,
      organization.organization_name,
      organization.organization_id,
      organization.organization_common_name,
      export.export_id,
      export.source_name,
      export.software_name,
      affiliation.count,
      custom_bed_night_mappings.count,
      enrollment.count,
      enrollmentcoc.count,
      funder.count,
      inventory.count,
      projectcoc.count,
      servicemappings.count,
      servicemappings_copy.count,
      servicemappings_dm154.count,
      site.count,
      _casenotes.count,
      _casenotes1.count
    ]
  }
}