view: inventory {
  sql_table_name: inventory ;;

  dimension: InventoryID {
    primary_key: yes
    type: string
    sql: ${TABLE}.InventoryID ;;
  }

  dimension: Availability {
    type: string
    sql: ${TABLE}.Availability ;;
  }

  dimension: BedInventory {
    type: string
    sql: ${TABLE}.BedInventory ;;
  }

  dimension: BedType {
    type: string
    sql: ${TABLE}.BedType ;;
  }

  dimension: CHBedCount {
    type: string
    sql: ${TABLE}.CHBedCount ;;
  }

  dimension: CoCCode {
    type: string
    sql: ${TABLE}.CoCCode ;;
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

  dimension: HMISParticipatingBeds {
    type: string
    sql: ${TABLE}.HMISParticipatingBeds ;;
  }

  dimension: HouseHoldType {
    type: string
    sql: ${TABLE}.HouseHoldType ;;
  }

  dimension: InformationDate {
    type: string
    sql: ${TABLE}.InformationDate ;;
  }

  dimension: InventoryEndDate {
    type: string
    sql: ${TABLE}.InventoryEndDate ;;
  }

  dimension: InventoryStartDate {
    type: string
    sql: ${TABLE}.InventoryStartDate ;;
  }

  dimension: ProjectID {
    type: string
    # hidden: yes
    sql: ${TABLE}.ProjectID ;;
  }

  dimension: UnitInventory {
    type: string
    sql: ${TABLE}.UnitInventory ;;
  }

  dimension: UserID {
    type: string
    sql: ${TABLE}.UserID ;;
  }

  dimension: VetBedInventory {
    type: string
    sql: ${TABLE}.VetBedInventory ;;
  }

  dimension: YouthAgeGroup {
    type: string
    sql: ${TABLE}.YouthAgeGroup ;;
  }

  dimension: YouthBedInventory {
    type: string
    sql: ${TABLE}.YouthBedInventory ;;
  }

  measure: count {
    type: count
  }
}
