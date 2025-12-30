
# Get API key
api_key <- Sys.getenv("BREVO_API_KEY")

# Brevo endpoint to get all contacts
url <- "https://api.brevo.com/v3/contacts?listId=2"

# Make the GET request
resp <- GET(
  url,
  add_headers("api-key" = api_key)
)

# Check the status
if (status_code(resp) != 200) {
  stop("Error fetching contacts: ", content(resp, "text"))
}

# Parse JSON content
body <- content(resp, "text", encoding = "UTF-8")
data <- fromJSON(body)

# Extract contacts
contacts <- data$contacts

# Initiate empty lists for mails and preferences
pref_list <- list()
mails_dict <- list()

# Loop through the extracted mails and preferences, and fill the lists
for (id in contacts$id){
  contact <- contacts[contacts$id == id, ]
  per_id <- paste0("per_", id)
  pref_list[[per_id]] <- list()
  
  # For each indicator, try to add the indicator to the preferences list
  for(indic in names(titles_list)){
    tryCatch(
      {
          if (contact$attributes[[toupper(indic)]]) {
            if (NROW(tables_list_raw[indic][[1]]) > 0 &&
                NCOL(tables_list_raw[indic][[1]]) > 0) {

              # Create the strings to filter the Brevo result body
              indic_time <- paste0(toupper(indic), "_TIME")
              indic_filter <- paste0(toupper(indic), "_FILTER")
              
              # Extract which filters (countries/currencies) to include
              filter  <- contact$attributes[[indic_filter]][[1]]
              
              # Extract how many periods to include
              periods <- contact$attributes[[indic_time]]
              if(dropdowns_list[[indic]] == "geo") {
                start_period <- max(tables_list_raw[indic][[1]][geo %in% filter, TIME]) - periods 
              } else if (dropdowns_list[[indic]] == "CURRENCY") { 
                start_period <- max(tables_list_raw[indic][[1]][CURRENCY %in% filter, TIME]) - periods 
              }
              
              # Add to list of subscriber preferences
              pref_list[[per_id]][[indic]] <- 
                list("Filter" = filter,
                     "Period" = start_period)
            } else {
              # Add empty item
              pref_list[[per_id]][[indic]] <- list()
            }
            
        }
      },
      error = function(e) {
        cat("Error adding", indic, "to the preferences list for id no: ", id, "\n", e$message)
        return(NA)
      }
    )
  } 
  
  # Add mail to mail dictionary
  mails_dict[[per_id]] <- contact$email
}



