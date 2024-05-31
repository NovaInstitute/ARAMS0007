#' Calculate Leakage Emissions
#'
#' @param df A data frame containing the relevant data
#' @param year The name of the year column
#' @param tree_type The name of the tree_type column
#' @param leakage_agriculture The name of the column for leakage due to agriculture
#' @return A data frame with leakage emissions grouped by year and tree_type
#' @export
calculate_leakage_emissions <- function(df, year = "year", tree_type = "tree_type", leakage_agriculture = "leakage_agriculture") {
  library(dplyr)

  df %>%
    group_by(!!sym(year), !!sym(tree_type)) %>%
    summarize(leakage = sum(!!sym(leakage_agriculture), na.rm = TRUE), .groups = 'drop')
}
