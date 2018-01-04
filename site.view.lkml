view: site {
  sql_table_name: site ;;

  dimension: SiteID {
    primary_key: yes
    type: string
    sql: ${TABLE}.SiteID ;;
  }

  dimension: Address {
    type: string
    sql: ${TABLE}.Address ;;
  }

  dimension: City {
    type: string
    sql: ${TABLE}.City ;;
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

  dimension: GeoCode {
    type: string
    sql: ${TABLE}.GeoCode ;;
  }

  dimension: PrincipalSite {
    type: string
    sql: ${TABLE}.PrincipalSite ;;
  }

  dimension: ProjectID {
    type: string
    # hidden: yes
    sql: ${TABLE}.ProjectID ;;
  }

  dimension: State {
    type: string
    sql: ${TABLE}.State ;;
  }

  dimension: UserID {
    type: string
    sql: ${TABLE}.UserID ;;
  }

  dimension: Zip {
    type: string
    sql: ${TABLE}.Zip ;;
  }

  measure: count {
    type: count
  }
}
