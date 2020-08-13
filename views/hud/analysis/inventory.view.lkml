include: "/views/hud/inventory.view"

view: +inventory {
  measure: inventory_count {
    group_label: "Counts"
    view_label: "Analysis - General"
    label: "Inventory count"
    type: count_distinct


    drill_fields: [inventory_queries_drill_fields*]
    sql: ${InventoryID} ;;
  }

  set: inventory_queries_drill_fields {
    fields: [
      inventory.InventoryID
    ]
  }
}
