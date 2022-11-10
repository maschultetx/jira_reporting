view: status_totals_all {
  sql_table_name: jira.status_totals_all ;;

  dimension: percent {
    type: number
    value_format: "##.00%"
    sql: ${TABLE}.percent/100 ;;
  }
  dimension: status {
    type: string
    sql: ${TABLE}.status_last ;;
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
