view: jirarecords {
  sql_table_name: jira.jirarecords ;;

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
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}.created_date ;;
  }

  dimension: issue_id {
    type: number
    sql: ${TABLE}.issue_id ;;
  }

  dimension: issue_key {
    type: string
    sql: ${TABLE}.issue_key ;;
  }

  dimension: issue_type {
    type: string
    sql: ${TABLE}.issue_type ;;
  }

  dimension: project_abbrev {
    type: string
    sql: ${TABLE}.project_abbrev ;;
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

  dimension: status {
    type: string
    sql: ${TABLE}.status ;;
  }

  dimension_group: status {
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
    sql: ${TABLE}.status_date ;;
  }

  dimension: summary {
    type: string
    sql: ${TABLE}.summary ;;
  }

  measure: count {
    type: count
    drill_fields: [project_name]
  }

  dimension: primary_key  {
    primary_key: yes
    sql: CONCAT(${TABLE}.issue_key, cast(${TABLE}.status_date as varchar)) ;;
  }

}
