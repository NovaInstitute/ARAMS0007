#' Calculate Change in Carbon Stocks in Project
#'
#' @param deltaC_tree Change in carbon stock in project tree biomass
#' @param deltaC_shrub Change in carbon stock in project shrub biomass
#' @param deltaC_deadwood Change in carbon stock in project dead-wood biomass
#' @param deltaC_litter Change in carbon stock in project litter biomass
#' @param deltaC_SOC Change in carbon stock in soil organic carbon
#' @return Change in carbon stocks in project
#' @export
calculate_change_carbon_stocks <- function(deltaC_tree, deltaC_shrub, deltaC_deadwood, deltaC_litter, deltaC_SOC) {
  deltaC_project <- deltaC_tree + deltaC_shrub + deltaC_deadwood + deltaC_litter + deltaC_SOC
  return(deltaC_project)
}
