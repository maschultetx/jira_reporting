view: statusrank {
  sql_table_name: jira.statusrank ;;

  dimension: rank {
    type: number
    sql: ${TABLE}.rank ;;
  }

  dimension: status {
    type: string
    sql: ${TABLE}.status ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
