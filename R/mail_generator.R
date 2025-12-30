body_text <- paste0(
  "## Breakfast Statistics - ", format(Sys.Date(), "%B %d, %Y"), "\n",
  
  #  "Data was downloaded around 07 AM Brussels time.\n\n",
  
  "<span style='background-color:lightgreen;'>Green numbers represent new data releases.</span>\n",
  "<span style='background-color:#FFD580;'>Orange numbers represent data revisions.</span>"
)

for(theme in themes) {
  # Extract the indicators for the given theme
  indics_by_theme <- raw_data_list[[theme]]
  
  # Check that there are any selected indicators within this theme
  if(length(intersect(names(i_temp), names(indics_by_theme))) > 0)
  {
    # Add title for the given theme
    theme_part <- glue("
  <span style='font-size:1.4em; color:black; font-weight:bold'>{theme}\n\n</span>
  ")
    
    body_text <- paste0(body_text, "\n\n", theme_part)
  }
  
  for (indic in names(indics_by_theme)) {
    # Check that the indicator is part of the selections
    if(indic %in% i_codes) {
      
      # Make a copy in which to add colour codes
      indic_colored <- as.data.frame(i_temp[[indic]])
      
      # Initialise notes for the table
      notes <- ""
      
      # Check that the new data exists
      if (NROW(tables_list_raw[indic][[1]]) > 0 &&
          NCOL(tables_list_raw[indic][[1]]) > 0) {
        
        # Check that the vintage dataset is not missing
        if(indic %in% names(vintages)) {
          revision_table <- as.data.frame(revision_list[[indic]])
          diff_table     <- as.data.frame(diff_list[[indic]])
          vintage_table <- as.data.frame(vintages[[indic]])
          
          # Extract new columns
          col_names <- names(indic_colored)
          new_cols <- setdiff(names(indic_colored[-1]), names(vintage_table)[-1])
          new_cols <- new_cols[new_cols > max(names(vintage_table)[-1])]
          
          # Extract rows
          row_label_col <- if(dropdowns_list[[indic]] == "geo") "Country" else "Currency"
          row_labels <- indic_colored[[row_label_col]]
          row_labels_rev <- revision_table[[row_label_col]]
          
          # Check each relevant cell if there has been new data or a revision
          # 1. Check for new releases (in new columns)
          for (row_label in row_labels) {
            # Find the row index corresponding to the label
            row_index <- which(indic_colored[[row_label_col]] == row_label)
            
            # Loop over all columns except the first (which is row labels)
            for (c_label in col_names[-1]) {
              
              # Check if this is a new column
              if (c_label %in% new_cols && !is.na(indic_colored[row_index, c_label])) {
                
                # Wrap the value in a green span
                indic_colored[row_index, c_label] <- sprintf(
                  "<span style='background-color:lightgreen;'>%s</span>",
                  indic_colored[row_index, c_label]
                )
              }
            }
          }
          # 2. Check for revisions and new releases (in pre-existing columns)
          if(length(row_labels_rev) > 0) {
            for (r_label in row_labels_rev) {
              for (c_label in names(revision_table)[-1]) {
                
                # If revision happened
                if (isTRUE(as.logical(revision_table[revision_table$Country == r_label, c_label]))) {
                  
                  # Mark number yellow
                  indic_colored[indic_colored$Country == r_label, c_label] <- sprintf(
                    "<span style='background-color:#FFD580;'>%s</span>",
                    indic_colored[indic_colored$Country == r_label, c_label]
                  )
                  
                  # Add sentence explaining the revision
                  old_value <- vintage_table[vintage_table$Country == r_label, c_label]
                  notes <- paste0(
                    notes,
                    sprintf("- For %s, %s has been revised from %s.<br>",
                            r_label, c_label,
                            formatC(old_value, format = "f", digits = 2))
                  )
                }
                # If there is no revision, check if it is a new release
                else if (is.na(vintage_table[vintage_table$Country == r_label, c_label]) &&
                         !is.na(indic_colored[indic_colored$Country == r_label, c_label]))
                {
                  # If so, mark new data green
                  indic_colored[indic_colored$Country == r_label, c_label] <- sprintf(
                    "<span style='background-color:lightgreen;'>%s</span>",
                    indic_colored[indic_colored$Country == r_label, c_label]
                  )
                }
              }
            }
          }
        } else {
          # Since vintage dataset is missing here, add a footnote to this table 
          # that there was no revision check executed
          notes <- paste0(
            notes,
            "Note: There was no vintage data available for this table to compare with!"
          )
        }
      } else {
        # Since there is no data loaded here, add a note explaining this to the 
        # subscriber
        notes <- paste0(
          notes,
          "Data loading failed for this indicator!"
        )
      }
      
      # Build HTML table
      table <- kable(indic_colored, format = "html", escape = FALSE)
      
      # Add mail graphics for the indicator
      indic_part <- glue("
  <span style='color:blue; font-weight:bold;'>{titles_temp[indic]} - {sources_list[indic]}\n\n</span>
  <span style='font-size:0.9em; color:black; font-style: italic;'>({units_temp[indic]})</span><br><br>
  {table}
  {notes}
  
  [See full dataset here]({links_temp[[indic]]})
  <hr>
  ")
      body_text <- paste0(body_text, "\n\n", indic_part)
    }
  }
}

# Compose the mail
email <- compose_email(body = md(body_text))