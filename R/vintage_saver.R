
# Create a new folder for todays date
if (!dir.exists(paste0("./vintages/", format(Sys.Date(), "%Y-%m-%d")))) {
  dir.create(paste0("./vintages/", format(Sys.Date(), "%Y-%m-%d")), recursive = TRUE)
}

# Save each table as a separate file
index <- 0
for(table in tables_list) {
  index <- index + 1
  
  # Make a copy to avoid modifying the original
  tmp <- copy(table)
  tmp[, TIME := as.character(TIME)]
  
  # Save as vintage
  fwrite(tmp,
         file = paste0("./vintages/", format(Sys.Date(), "%Y-%m-%d"), "/", names(tables_list)[index]),
         sep = ";",
         col.names = TRUE)
}

# Delete vintages for T-180
cutoff <- as.Date(format(Sys.Date() - 180))
folders <- list.dirs("./vintages", recursive = FALSE, full.names = FALSE)
folder_dates <- as.Date(folders, format = "%Y-%m-%d")
old_folders <- folders[folder_dates < cutoff]
old_paths <- file.path("./vintages", old_folders)
unlink(old_paths, recursive = TRUE, force = TRUE)

