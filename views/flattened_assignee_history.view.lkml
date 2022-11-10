view: flattened_assignee_history {
  sql_table_name: jira.flattened_assignee_history ;;

  dimension: assignee_last {
    type: string
    sql: ${TABLE}.assignee_last ;;
  }

  dimension: assignee_orig {
    type: string
    sql: ${TABLE}.assignee_orig ;;
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
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}.created_date ;;
  }

  dimension: dummy {
    type: number
    sql: ${TABLE}.dummy ;;
  }

  dimension: first_to_last_status {
    type: string
    sql: ${TABLE}.first_to_last_status ;;
  }

  dimension: assignment_status {
    type: string
    sql: ${TABLE}.assignment_status ;;
  }

  dimension: issue_key {
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

  dimension: summary {
    type: string
    sql: ${TABLE}.summary ;;
  }

  measure: count {
    type: count
    drill_fields: [project_name]
  }
}
