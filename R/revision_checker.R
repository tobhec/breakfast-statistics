# 1 = daily subscription, 2 = weekly subscription
if(mails_dict[[per]][[2]] == 1) {
  days_between_vintage <- 1
} else if (mails_dict[[per]][[2]] == 2) {
  days_between_vintage <- 7
}

# List all CSV files in directory
vintage_names <- list.files(paste0("./vintages/", 
                                   format(Sys.Date() - days_between_vintage, "%Y-%m-%d"), 
                                   "/"), full.names = TRUE)

# Read them all into a list of data.tables
vintages <- lapply(vintage_names, function(f) fread(f, header = TRUE))
names(vintages) <- tools::file_path_sans_ext(basename(vintage_names))
  
# Remove any newly added table from the vintage comparison
shared_tables <- intersect(names(i_temp), names(vintages))
indics_to_compare <- i_temp[shared_tables]
vintages <- vintages[shared_tables]

# Restructure the vintage into a different format for comparison
for (indic in names(vintages)) {

  if(dropdowns_list[[indic]] == "geo") {
    setnames(vintages[indic][[1]], old = c("geo", "TIME", "obs_value"), new = c("Country", "Time", "Value"))
    vintages[indic][[1]] <- dcast(vintages[indic][[1]], Country ~ Time, value.var = "Value")
    
  } else if (dropdowns_list[[indic]] == "CURRENCY") {
    setnames(vintages[indic][[1]], old = c("CURRENCY", "TIME", "obs_value"), new = c("Currency", "Time", "Value"))
    vintages[indic][[1]] <- dcast(vintages[indic][[1]], Currency ~ Time, value.var = "Value")
  }  
}
  
# Calculate differences between new data and vintages
diff_list <- Map(calc_diff, indics_to_compare, vintages)
  
# Make binary checks if data cells have been revised or not
revision_list <- Map(check_for_revisions, diff_list)




