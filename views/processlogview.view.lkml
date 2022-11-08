view: processlogview {
  sql_table_name: jira.processlogview ;;

  dimension: dummy {
    type: string
    sql: ${TABLE}.dummy ;;
  }

  dimension: filename {
    type: string
    sql: ${TABLE}.filename ;;
  }

  dimension_group: process_date {
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
    sql: ${TABLE}.process_date ;;
  }

  dimension_group: process_time {
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
    sql: ${TABLE}.process_time ;;
  }

  dimension: rownum {
    type: number
    sql: ${TABLE}.rownum ;;
  }

  measure: count {
    type: count
    drill_fields: [filename]
  }
}
