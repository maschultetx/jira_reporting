view: project_totals_all {
  sql_table_name: jira.project_totals_all ;;

  dimension: percent {
    type: number
    value_format: "##%"
    sql: ${TABLE}.percent/100 ;;
  }

  dimension: project_name {
    type: string
    sql: ${TABLE}.project_name ;;
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
    drill_fields: [project_name]
  }

  measure: pie_info {
    type: number
    sql: ${TABLE}.tot1 ;;

    html:
      <br> <b>{{ percent._rendered_value }} </b> <br>  <b> {{ tot1._rendered_value }}  </b> </div>
      ;;
    }
}
