#' Calculate Net Anthropogenic GHG Removals by Sinks
#'
#' @param df A data frame containing the relevant data
#' @param year The name of the year column
#' @param tree_type The name of the tree_type column
#' @param deltaC_actual The name of the column for actual net GHG removals by sinks
#' @param deltaC_baseline The name of the column for baseline net GHG removals by sinks
#' @param leakage The name of the column for leakage emissions
#' @return A data frame with net anthropogenic GHG removals by sinks grouped by year and tree_type
#' @export
calculate_net_anthropogenic_ghg_removals <- function(df, year = "year", tree_type = "tree_type", deltaC_actual = "deltaC_actual", deltaC_baseline = "deltaC_baseline", leakage = "leakage") {
  library(dplyr)

  df %>%
    group_by(!!sym(year), !!sym(tree_type)) %>%
    summarize(deltaC_net = sum(!!sym(deltaC_actual) - !!sym(deltaC_baseline) - !!sym(leakage), na.rm = TRUE), .groups = 'drop')
}
