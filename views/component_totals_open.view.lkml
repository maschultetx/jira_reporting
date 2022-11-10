view: component_totals_open {
  sql_table_name: jira.component_totals_open ;;

  dimension: percent {
    type: number
    value_format: "##%"
    sql: ${TABLE}.percent/100 ;;
  }

  dimension: component {
    type: string
    sql: ${TABLE}.component_main ;;
  }

  dimension: tot1 {
    type: number
    sql: ${TABLE}.tot1 ;;
  }

  dimension: tot2 {
    type: number
    sql: ${TABLE}.tot2 ;;
  }

  measure: count {
    type: count
  }

  measure: pie_info {
    type: number
    sql: ${TABLE}.tot1 ;;

    html:
      <br> <b>{{ percent._rendered_value }} </b> <br>  <b> {{ tot1._rendered_value }}  </b> </div>
      ;;
  }
}
