view: word_cloud {
  sql_table_name: jira.word_cloud ;;

  dimension: lang {
    type: string
    sql: ${TABLE}.lang ;;
  }

  measure: val {
   type: average
    sql: ${TABLE}.val ;;
  }

  dimension: word {
    type: string
    sql: ${TABLE}.word ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
