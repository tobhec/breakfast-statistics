setwd("C:/Users/Tobia/raspberry_pi/breakfast-statistics")

library(blastula)
library(glue)
library(knitr)
library(MDstats)
library(httr)
library(jsonlite)

source("./R/functions.R")
source("./R/data_loader.R")
source("./R/data_processor.R")
source("./R/vintage_saver.R")
source("./R/config.R")

for (per in names(pref_list)) {
  
  # Try to define tables to be used in the script, based on the input by the subscriber
  tryCatch(
    {
      # Extract the selections by the subscriber
      i_selection <- pref_list[[per]]$indics
      i_codes <- names(i_selection)
      
      # Filter for the selections
      i_temp <- lapply(tables_list[names(tables_list) %in% i_codes], copy)
      titles_temp <- lapply(titles_list[names(titles_list) %in% i_codes], copy)
      units_temp <- lapply(units_list[names(units_list) %in% i_codes], copy)
      links_temp <- lapply(links_list[names(links_list) %in% i_codes], copy)
      dropdowns_temp <- lapply(dropdowns_list[names(dropdowns_list) %in% i_codes], copy)
    },
    error = function(e) {
      cat("Error defining variables for: ", per, "\n", e$message)
      return(NA)
    }
  )
      
  # Try to filter the data (i_temp) based on the selection made by the subscriber (per)
  tryCatch(
    {
      for (code in i_codes) {
          cross_section_filters <- i_selection[[code]]$Filter
          period   <- i_selection[[code]]$Period
          source("./R/data_filterer.R")
      }
    },
    error = function(e) {
      cat("Error filtering data for: ", per, "\n", e$message)
      return(NA)
    }
  )
      
  # Try to compare the data against the vintages to check for revisions
  tryCatch(
    {
      source("./R/revision_checker.R")
    },
    error = function(e) {
      cat("Error performing the revision check for:", per, "\n", e$message)
      return(NA)
    }
  )
  
  # Change the country code to the real name, for all tables used in the visualisation
  tryCatch(
    {
      for (code in i_codes) {
        if(dropdowns_list[[code]] == "geo") {
          i_temp[[code]]$Country <- ccode(i_temp[[code]]$Country, "iso2c", "name.en")
          diff_list[[code]]$Country <- ccode(diff_list[[code]]$Country, "iso2c", "name.en")
          revision_list[[code]]$Country <- ccode(revision_list[[code]]$Country, "iso2c", "name.en")
          vintages[[code]]$Country <- ccode(vintages[[code]]$Country, "iso2c", "name.en")
        }
      }
    },
    error = function(e) {
      cat("Error converting country codes for: ", per, "\n", e$message)
      return(NA)
    }
  )

  
  # Try to generate the mail for the current subscriber
  tryCatch(
    {
      # Generate the mail
      source("./R/mail_generator.R")
    },
    error = function(e) {
      cat("Error generating the mail for:", per, "\n", e$message)
      return(NA)
    }
  )
  
  # Try to send the mail for the current subscriber
  tryCatch(
    {
      # Send the mail
      source("./R/email_sender.R")
    },
    error = function(e) {
      cat("Error sending the mail or saving as vintage for:", per, "\n", e$message)
      return(NA)
    }
  )
      
      
}

