view: flattened_history {
  sql_table_name: jira.flattened_history ;;

  dimension: assignee {
    type: string
    sql: ${TABLE}.assignee ;;
  }

  dimension: component_all {
    type: string
    sql: ${TABLE}.component_all ;;
  }

  dimension: component_main {
    type: string
    sql: ${TABLE}.component_main ;;
  }

  dimension_group: created {
    type: time
    timeframes: [
      raw,
      time,
      date,
      day_of_week,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}.created_date ;;
  }

  dimension: string_date  {
    type: string
    sql:  substr((to_char(${TABLE}.created_date)),6,5);;
  }

  dimension: first_to_last_status {
    type: string
    sql: ${TABLE}.first_to_last_status ;;
  }

  dimension: issue_key {
    primary_key:  yes
    type: string
    sql: ${TABLE}.issue_key ;;
  }

  dimension: issue_type {
    type: string
    sql: ${TABLE}.issue_type ;;
  }

  dimension: project_name {
    type: string
    sql: ${TABLE}.project_name ;;
  }

  dimension: recent_to_last_status {
    type: string
    sql: ${TABLE}.recent_to_last_status ;;
  }

  dimension: reporter {
    type: string
    sql: ${TABLE}.reporter ;;
  }

  dimension: resolution {
    type: string
    sql: ${TABLE}.resolution ;;
  }

  dimension_group: resolved {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}.resolved_date ;;
  }

  dimension: string_date2  {
    type: string
    sql:  substr((to_char(${TABLE}.resolved_date)),6,5);;
  }


  dimension_group: status_date_last {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}.status_date_last ;;
  }

  dimension_group: status_date_orig {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}.status_date_orig ;;
  }

  dimension_group: status_date_recent {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}.status_date_recent ;;
  }

  dimension: status_last {
    type: string
    sql: ${TABLE}.status_last ;;
  }

  dimension: status_orig {
    type: string
    sql: ${TABLE}.status_orig ;;
  }

  dimension: status_recent {
    type: string
    sql: ${TABLE}.status_recent ;;
  }

  dimension: summary {
    type: string
    sql: ${TABLE}.summary ;;
  }

  measure: count {
    type: count
  }

  measure: average_month {
    type: number
    sql:  ${count}/${count_months} ;;
  }

  measure: average_days {
    type: number
    sql:  ${count}/${count_days} ;;
  }

  measure: average_month2 {
    type: number
    sql:  if ${count_months2} = 0 then 0 else ${count}/${count_months2} endif ;;
  }

  measure: average_days2 {
    type: number
    sql:  if ${count_days2} = 0 then 0 else ${count}/${count_days2} endif ;;
  }

  measure: count_percent {
    type: percent_of_total
    sql: ${TABLE}.dummy ;;
  }

  measure: dummy {
    type: sum
    sql: ${TABLE}.dummy ;;
  }

  measure: count_days {
    type: count_distinct
    sql: ${TABLE}.created_date ;;
  }

  measure: count_months {
    type: count_distinct
    sql: month(${TABLE}.created_date) ;;
  }

  measure: count_days2 {
    type: count_distinct
    sql: ${TABLE}.resolved_date ;;
  }

  measure: count_months2 {
    type: count_distinct
    sql: month(${TABLE}.resolved_date) ;;
  }

  measure: average_submissions {
    type: number
    sql:  ${count}/${count_days} ;;
  }

  measure: count_info {
    type:  count
    html:
      <b>{{ count._rendered_value }} </b> <br>  <b> {{ count_percent._rendered_value }}  </b> </div>

    ;;

  }

}
