#' Calculate Actual Net GHG Removals by Sinks
#'
#' @param df A data frame containing the relevant data
#' @param year The name of the year column
#' @param tree_type The name of the tree_type column
#' @param deltaC_project The name of the column for change in project carbon stock
#' @param delta_nonCO2 The name of the column for non-CO2 GHG emissions
#' @return A data frame with actual net GHG removals by sinks grouped by year and tree_type
#' @export
calculate_actual_ghg_removals <- function(df, year = "year", tree_type = "tree_type", deltaC_project = "deltaC_project", delta_nonCO2 = "delta_nonCO2") {
  library(dplyr)

  df %>%
    group_by(!!sym(year), !!sym(tree_type)) %>%
    summarize(deltaC_actual = sum(!!sym(deltaC_project) - !!sym(delta_nonCO2), na.rm = TRUE), .groups = 'drop')
}
