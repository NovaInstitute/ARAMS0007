#' Calculate Baseline Net GHG Removals by Sinks
#'
#' @param df A data frame containing the relevant data
#' @param year The name of the year column
#' @param tree_type The name of the tree_type column
#' @param deltaC_tree The name of the column for change in tree carbon stock
#' @param deltaC_shrub The name of the column for change in shrub carbon stock
#' @param deltaC_deadwood The name of the column for change in deadwood carbon stock
#' @param deltaC_litter The name of the column for change in litter carbon stock
#' @return A data frame with baseline net GHG removals by sinks grouped by year and tree_type
#' @export
calculate_baseline_ghg_removals <- function(df, year = "year", tree_type = "tree_type", deltaC_tree = "deltaC_tree", deltaC_shrub = "deltaC_shrub", deltaC_deadwood = "deltaC_deadwood", deltaC_litter = "deltaC_litter") {
  library(dplyr)

  df %>%
    group_by(!!sym(year), !!sym(tree_type)) %>%
    summarize(deltaC_baseline = sum(!!sym(deltaC_tree), !!sym(deltaC_shrub), !!sym(deltaC_deadwood), !!sym(deltaC_litter), na.rm = TRUE), .groups = 'drop')
}

