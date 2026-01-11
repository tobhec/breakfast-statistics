# Script cleaning the data tables, and filtering the list containing all indicators
# to create specific lists which are easier to filter for information further one


# Create a vector with the themes
themes <- names(raw_data_list)

# Create a list of all titles
themes_and_titles_list <- lapply(raw_data_list, function(theme) {
  lapply(theme, function(indicator) {
    indicator[["title"]]
  })
})
titles_list <- do.call(c, themes_and_titles_list)
names(titles_list) <- sub(".*\\.", "", names(titles_list))

# Create a list of all data tables
themes_and_tables_list <- lapply(raw_data_list, function(theme) {
  lapply(theme, function(indicator) {
    indicator[["data"]]
  })
})
tables_list_raw <- do.call(c, themes_and_tables_list)
names(tables_list_raw) <- sub(".*\\.", "", names(tables_list_raw))
tables_list <- lapply(tables_list_raw, data.table::copy)

# Create a list of all links
themes_and_links_list <- lapply(raw_data_list, function(theme) {
  lapply(theme, function(indicator) {
    indicator[["link"]]
  })
})
links_list <- do.call(c, themes_and_links_list)
names(links_list) <- sub(".*\\.", "", names(links_list))

# Create a list of all units
themes_and_units_list <- lapply(raw_data_list, function(theme) {
  lapply(theme, function(indicator) {
    indicator[["unit"]]
  })
})
units_list <- do.call(c, themes_and_units_list)
names(units_list) <- sub(".*\\.", "", names(units_list))

# Create a list of all units
themes_and_sources_list <- lapply(raw_data_list, function(theme) {
  lapply(theme, function(indicator) {
    indicator[["source"]]
  })
})
sources_list <- do.call(c, themes_and_sources_list)
names(sources_list) <- sub(".*\\.", "", names(sources_list))

# Create a list of which dropdown the indicators have
themes_and_dropdowns_list <- lapply(raw_data_list, function(theme) {
  lapply(theme, function(indicator) {
    indicator[["dropdown"]]
  })
})
dropdowns_list <- do.call(c, themes_and_dropdowns_list)
names(dropdowns_list) <- sub(".*\\.", "", names(dropdowns_list))

# Remove duplicate tables, for when the table is in more than one theme
unique_idx <- !duplicated(names(tables_list))
tables_list_raw   <- tables_list_raw[unique_idx]
tables_list   <- tables_list[unique_idx]
titles_list   <- titles_list[unique_idx]
links_list    <- links_list[unique_idx]
units_list    <- units_list[unique_idx]
sources_list  <- sources_list[unique_idx]
dropdowns_list <- dropdowns_list[unique_idx]

# Remove status and conf columns if present
for(indic in names(tables_list)) {
  drop_cols <- intersect(c("obs_status", "obs_conf"), names(tables_list[[indic]]))
  if (length(drop_cols)) {
    tables_list[[indic]][, (drop_cols) := NULL]
  }
}