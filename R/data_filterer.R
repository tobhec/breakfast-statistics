# Script filtering the data in i_temp for the subscribers choices of countries/currencies 
# and periods, and restructures the data to a wide format


# Filter for the subscribers selections
if(dropdowns_list[[code]] == "geo") {
  
  # Filter out for the subscriber choices
  i_temp[[code]] <- i_temp[[code]][geo %in% cross_section_filters & TIME >= as.numeric(period)]
  
  # Make the column name more clean
  setnames(i_temp[[code]], old = c("geo", "TIME", "obs_value"), new = c("Country", "Time", "Value"))
  i_temp[[code]] <- dcast(i_temp[[code]], Country ~ Time, value.var = "Value")
  
  } else if (dropdowns_list[[code]] == "CURRENCY") {
    
    # Filter out for the subscriber choices
    i_temp[[code]] <- i_temp[[code]][CURRENCY %in% cross_section_filters & TIME >= as.numeric(period)]
    
    # Make the column name more clean
    setnames(i_temp[[code]], old = c("CURRENCY", "TIME", "obs_value"), new = c("Currency", "Time", "Value"))
    i_temp[[code]] <- dcast(i_temp[[code]], Currency ~ Time, value.var = "Value")
    
}



