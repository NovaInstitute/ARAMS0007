#' Calculate tCERs and lCERs
#'
#' @param df A data frame containing the relevant data
#' @param year The name of the year column
#' @param tree_type The name of the tree_type column
#' @param deltaC_net The name of the column for net anthropogenic GHG removals by sinks
#' @param t1 Start year of the verification period
#' @param t2 End year of the verification period
#' @return A data frame with tCERs and lCERs grouped by year and tree_type
#' @export
calculate_cers <- function(df, year = "year", tree_type = "tree_type", deltaC_net = "deltaC_net", t1, t2) {
  library(dplyr)

  df %>%
    group_by(!!sym(year), !!sym(tree_type)) %>%
    summarize(tCERs = sum(!!sym(deltaC_net)) * (t2 - t1),
              lCERs = sum(!!sym(deltaC_net)) * (t2 - t1), .groups = 'drop')
}
