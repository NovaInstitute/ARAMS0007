#' Calculate Actual Net GHG Removals by Sinks
#'
#' @param deltaC_project Change in the carbon stocks in project
#' @param delta_nonCO2 Increase in non-CO2 GHG emissions within the project boundary
#' @return Actual net GHG removals by sinks
#' @export
calculate_actual_ghg_removals <- function(deltaC_project, delta_nonCO2) {
  deltaC_actual <- deltaC_project - delta_nonCO2
  return(deltaC_actual)
}
