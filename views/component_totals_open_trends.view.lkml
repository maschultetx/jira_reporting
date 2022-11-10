view: component_totals_open_trends {
  sql_table_name: jira.component_totals_open_trends ;;

  dimension: ccomponent_main {
    type: string
    sql: ${TABLE}.ccomponent_main ;;
  }

  dimension: ctot1 {
    type: number
    sql: ${TABLE}.ctot1 ;;
  }

  dimension: ctot2 {
    type: number
    sql: ${TABLE}.ctot2 ;;
  }

  dimension: ptot1 {
    type: number
    sql: ${TABLE}.ptot1 ;;
  }

  dimension: ptot2 {
    type: number
    sql: ${TABLE}.ptot2 ;;
  }

  dimension: tot1diff {
    type: number
    sql: ${TABLE}.tot1diff ;;
  }

  dimension: tot1perdiff {
    type: number
    value_format: "##.##%"
    sql: ${TABLE}.tot1perdiff ;;
  }

  dimension: tot2diff {
    type: number
    sql: ${TABLE}.tot2diff ;;
  }

  dimension: tot2perdiff {
    type: number
    sql: ${TABLE}.tot2perdiff ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
