#' Calculate Change in Carbon Stocks in Project
#'
#' @param df A data frame containing the relevant data
#' @param year The name of the year column
#' @param tree_type The name of the tree_type column
#' @param deltaC_tree The name of the column for change in tree carbon stock
#' @param deltaC_shrub The name of the column for change in shrub carbon stock
#' @param deltaC_deadwood The name of the column for change in deadwood carbon stock
#' @param deltaC_litter The name of the column for change in litter carbon stock
#' @param deltaC_SOC The name of the column for change in soil organic carbon
#' @return A data frame with change in carbon stocks in project grouped by year and tree_type
#' @export
calculate_change_carbon_stocks <- function(df, year = "year", tree_type = "tree_type", deltaC_tree = "deltaC_tree", deltaC_shrub = "deltaC_shrub", deltaC_deadwood = "deltaC_deadwood", deltaC_litter = "deltaC_litter", deltaC_SOC = "deltaC_SOC") {
  library(dplyr)

  df %>%
    group_by(!!sym(year), !!sym(tree_type)) %>%
    summarize(deltaC_project = sum(!!sym(deltaC_tree), !!sym(deltaC_shrub), !!sym(deltaC_deadwood), !!sym(deltaC_litter), !!sym(deltaC_SOC), na.rm = TRUE), .groups = 'drop')
}
