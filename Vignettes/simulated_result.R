# Simulate a dataset with 10 years and 5 tree types
df <- simulate_dataset(n_years = 10, n_tree_types = 5)

# View the first few rows of the dataset
head(df)

# Test the package functions with the simulated dataset

# Calculate baseline net GHG removals by sinks
baseline_ghg_removals <- calculate_baseline_ghg_removals(df)
print(baseline_ghg_removals)

# Calculate actual net GHG removals by sinks
actual_ghg_removals <- calculate_actual_ghg_removals(df)
print(actual_ghg_removals)

# Calculate change in carbon stocks in project
change_carbon_stocks <- calculate_change_carbon_stocks(df)
print(change_carbon_stocks)

# Calculate leakage emissions
leakage_emissions <- calculate_leakage_emissions(df)
print(leakage_emissions)

# Calculate net anthropogenic GHG removals by sinks
net_anthropogenic_ghg_removals <- calculate_net_anthropogenic_ghg_removals(df)
print(net_anthropogenic_ghg_removals)

# Calculate tCERs and lCERs for a verification period from 2000 to 2009
cers <- calculate_cers(df, t1 = 2000, t2 = 2009)
print(cers)
