include: "/views/custom/roi_custom.view"

view: +roi_custom {

  # measure: affiliation_count {
  #   group_label: "Counts"
  #   view_label: "Analysis - General"
  #   label: "Affiliation count"
  #   type: count_distinct


  #   drill_fields: [affiliation_queries_drill_fields*]

  # }

  # set: affiliation_queries_drill_fields {
  #   fields: [
  #     affiliation.AffiliationID
  #   ]
  # }
        # SELECT #{conn.connection.quote_column_name(idName)} AS id
        # FROM #{conn.connection.quote_table_name(tableName)}
        # WHERE #{fieldName} IS NULL OR #{fieldName} = '';
}
