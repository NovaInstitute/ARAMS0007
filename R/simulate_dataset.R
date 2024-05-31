#' Simulate Dataset for Testing
#'
#' @param n_years Number of years to simulate data for
#' @param n_tree_types Number of different tree types to include
#' @return A data frame containing simulated data for testing the package functions
#' @export
simulate_dataset <- function(n_years = 10, n_tree_types = 5) {
  set.seed(123)  # for reproducibility

  years <- seq(2000, 2000 + n_years - 1)
  tree_types <- paste0("TreeType_", seq_len(n_tree_types))

  expand.grid(year = years, tree_type = tree_types) %>%
    mutate(
      deltaC_tree = runif(n(), 0, 100),
      deltaC_shrub = runif(n(), 0, 50),
      deltaC_deadwood = runif(n(), 0, 30),
      deltaC_litter = runif(n(), 0, 20),
      deltaC_SOC = runif(n(), 0, 40),
      delta_nonCO2 = runif(n(), 0, 10),
      leakage_agriculture = runif(n(), 0, 15)
    )
}

# Example usage:
# df <- simulate_dataset(n_years = 10, n_tree_types = 5)
# head(df)
