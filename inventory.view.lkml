view: inventory {
  sql_table_name: inventory ;;

  dimension: inventory_id {
    primary_key: yes
    type: string
    sql: ${TABLE}.InventoryID ;;
  }

  dimension: availability {
    type: string
    sql: ${TABLE}.Availability ;;
  }

  dimension: bed_inventory {
    type: string
    sql: ${TABLE}.BedInventory ;;
  }

  dimension: bed_type {
    type: string
    sql: ${TABLE}.BedType ;;
  }

  dimension: chbed_count {
    type: string
    sql: ${TABLE}.CHBedCount ;;
  }

  dimension: co_ccode {
    type: string
    sql: ${TABLE}.CoCCode ;;
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

  dimension: hmisparticipating_beds {
    type: string
    sql: ${TABLE}.HMISParticipatingBeds ;;
  }

  dimension: house_hold_type {
    type: string
    sql: ${TABLE}.HouseHoldType ;;
  }

  dimension: information_date {
    type: string
    sql: ${TABLE}.InformationDate ;;
  }

  dimension: inventory_end_date {
    type: string
    sql: ${TABLE}.InventoryEndDate ;;
  }

  dimension: inventory_start_date {
    type: string
    sql: ${TABLE}.InventoryStartDate ;;
  }

  dimension: project_id {
    type: string
    # hidden: yes
    sql: ${TABLE}.ProjectID ;;
  }

  dimension: unit_inventory {
    type: string
    sql: ${TABLE}.UnitInventory ;;
  }

  dimension: user_id {
    type: string
    sql: ${TABLE}.UserID ;;
  }

  dimension: vet_bed_inventory {
    type: string
    sql: ${TABLE}.VetBedInventory ;;
  }

  dimension: youth_age_group {
    type: string
    sql: ${TABLE}.YouthAgeGroup ;;
  }

  dimension: youth_bed_inventory {
    type: string
    sql: ${TABLE}.YouthBedInventory ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  # ----- Sets of fields for drilling ------
  set: detail {
    fields: [
      inventory_id,
      project.project_id,
      project.project_common_name,
      project.project_name,
      export.export_id,
      export.source_name,
      export.software_name
    ]
  }
}