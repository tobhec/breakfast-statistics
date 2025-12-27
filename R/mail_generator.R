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
      
      # Initialise revision explanation
      revision_sentences <- ""
      
      # Check that the indicator is part of the vintage dataset to do the revision check
      if(indic %in% names(vintages)) {
        revision_table <- as.data.frame(revision_list[[indic]]) # TRUE/FALSE table
        diff_table     <- as.data.frame(diff_list[[indic]]) # numeric differences
        vintage_table <- as.data.frame(vintages[[indic]]) #vintages
        
        # Extract rows
        row_labels <- indic_colored$Country
        row_labels_rev <- revision_table$Country
        
        # Extract new columns
        col_names <- names(indic_colored)
        new_cols <- setdiff(names(indic_colored[-1]), names(vintage_table)[-1])
        new_cols <- new_cols[new_cols > max(names(vintage_table)[-1])]
        
        # Check each relevant cell if there has been new data or a revision
        # 1. Check for new releases (new columns)
        for (row_label in row_labels) {
          for (c_label in col_names[-1]) {   # skip ID column
            
            if (c_label %in% new_cols && 
                !is.na(i_temp[[indic]][row_label, c_label])) {
              # Mark new data green
              indic_colored[row_label, c_label] <- sprintf(
                "<span style='background-color:lightgreen;'>%s</span>",
                indic_colored[row_label, c_label]
              )
              }
            }
        }
        
        # 2. Check for revisions and new releases (of pre-existing columns)
          for (r_label in row_labels_rev) {
            for (c_label in names(revision_table)[-1]) {
                
              if (isTRUE(as.logical(revision_table[revision_table$Country == r_label, c_label]))) {
                # Mark revision yellow
                indic_colored[indic_colored$Country == r_label, c_label] <- sprintf(
                  "<span style='background-color:#FFD580;'>%s</span>",
                  indic_colored[indic_colored$Country == r_label, c_label]
                )
              
                # Add sentence
                old_value <- vintage_table[vintage_table$Country == r_label, c_label]
                diff_percentage <- diff_table[diff_table$Country == r_label, c_label] / old_value
                
                if(is.infinite(diff_percentage))
                {
                  revision_sentences <- paste0(
                    revision_sentences,
                    sprintf("- For %s, %s has been revised (from %s).<br>",
                            r_label, c_label,
                            formatC(old_value, format = "f", digits = 2))
                  )
                } else {
                  revision_sentences <- paste0(
                    revision_sentences,
                    sprintf("- For %s, %s has been revised by %.2f%% (from %s).<br>",
                            r_label, c_label,
                            100 * diff_percentage,   # scale to %
                            formatC(old_value, format = "f", digits = 2))
                    )
                  }
              }
                # If there is no revision, check if it is a new release
                else if (is.na(vintage_table[vintage_table$Country == r_label, c_label]) &&
                         !is.na(indic_colored[indic_colored$Country == r_label, c_label]))
                {
                  # Mark new data green (outside of new columns)
                  indic_colored[indic_colored$Country == r_label, c_label] <- sprintf(
                    "<span style='background-color:lightgreen;'>%s</span>",
                    indic_colored[indic_colored$Country == r_label, c_label]
                  )
                }
              }
          }
      }
      
      # Build HTML table
      table <- kable(indic_colored, format = "html", escape = FALSE)
      
      # Add mail graphics for the indicator
      indic_part <- glue("
  <span style='color:blue; font-weight:bold;'>{titles_temp[indic]} - {sources_list[indic]}\n\n</span>
  <span style='font-size:0.9em; color:black; font-style: italic;'>({units_temp[indic]})</span><br><br>
  {table}
  {revision_sentences}
  
  [See full dataset here]({links_temp[[indic]]})
  <hr>
  ")
      
      body_text <- paste0(body_text, "\n\n", indic_part)
    }
  }
}

#nchar(body_text)
email <- compose_email(body = md(body_text))
#email
