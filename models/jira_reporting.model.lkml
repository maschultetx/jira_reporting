connection: "jira_reporting_mas_awsav2"

# include all the views
include: "/views/**/*.view"

datagroup: jira_reporting_default_datagroup {
  # sql_trigger: SELECT MAX(id) FROM etl_log;;
  max_cache_age: "0 seconds"
}

persist_with: jira_reporting_default_datagroup

explore: jirarecords {}

explore: flattened_history {

  join: jirarecords {
    type: left_outer
    sql_on: ${flattened_history.issue_key} = ${jirarecords.issue_key} ;;
    relationship: one_to_many
  }

  join: reporters {
    type: full_outer
    sql_on: ${flattened_history.reporter} = ${reporters.name} ;;
    relationship: many_to_one
  }

}

explore: projects {}

explore: processlogview {}

explore: processlog {}

explore: statusrank {}

explore: reporters {}

explore: word_cloud {}

explore: component_totals_all {}
explore: component_totals_open {}
explore: project_totals_all {}
explore: project_totals_open {}
explore: status_totals_all {}
explore: status_totals_open {}

explore: component_totals_all_trends {}
explore: component_totals_open_trends {}
explore: project_totals_all_trends {}
explore: project_totals_open_trends {}
explore: status_totals_all_trends {}
explore: status_totals_open_trends {}

explore:  flattened_assignee_history{}
explore:  ot_flattened_history {}
