#' Calculate tCERs and lCERs
#'
#' @param deltaC_net Net anthropogenic GHG removals by sinks
#' @param t1 Start year of the verification period
#' @param t2 End year of the verification period
#' @return tCERs and lCERs
#' @export
calculate_cers <- function(deltaC_net, t1, t2) {
  tCERs <- deltaC_net * (t2 - t1)
  lCERs <- deltaC_net * (t2 - t1)
  return(list(tCERs = tCERs, lCERs = lCERs))
}
