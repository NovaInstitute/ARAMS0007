#' Calculate Net Anthropogenic GHG Removals by Sinks
#'
#' @param deltaC_actual Actual net GHG removals by sinks
#' @param deltaC_baseline Baseline net GHG removals by sinks
#' @param leakage Leakage emissions
#' @return Net anthropogenic GHG removals by sinks
#' @export
calculate_net_anthropogenic_ghg_removals <- function(deltaC_actual, deltaC_baseline, leakage) {
  deltaC_net <- deltaC_actual - deltaC_baseline - leakage
  return(deltaC_net)
}
