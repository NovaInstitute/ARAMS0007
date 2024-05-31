#' Calculate Baseline Net GHG Removals by Sinks
#'
#' @param deltaC_tree Change in carbon stock in baseline tree biomass
#' @param deltaC_shrub Change in carbon stock in baseline shrub biomass
#' @param deltaC_deadwood Change in carbon stock in baseline dead-wood biomass
#' @param deltaC_litter Change in carbon stock in baseline litter biomass
#' @return Baseline net GHG removals by sinks
#' @export
calculate_baseline_ghg_removals <- function(deltaC_tree, deltaC_shrub, deltaC_deadwood, deltaC_litter) {
  deltaC_baseline <- deltaC_tree + deltaC_shrub + deltaC_deadwood + deltaC_litter
  return(deltaC_baseline)
}

