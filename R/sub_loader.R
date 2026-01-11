
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

# Connect to the postgres database
con <- dbConnect(
  Postgres(),
  host = Sys.getenv("DB_HOST"),
  dbname = Sys.getenv("DB_NAME"),
  user = Sys.getenv("DB_USER"),
  password = Sys.getenv("DB_PASS")
)

# Initiate empty lists for mails and preferences
pref_list <- list()
mails_dict <- list()

# Loop through the extracted mails and preferences, and fill the lists
for (id in contacts$id){
  
  contact <- contacts[contacts$id == id, ]
  
  # Extract the config from postgres for the subscriber
  config <- dbGetQuery(
    con,
    "SELECT indicator_code, number_of_periods, filters
     FROM sub_config
     WHERE contact_id = $1",
    params = id
  )
  
  # If the id matches entries in the database
  if (nrow(config) != 0) {
    
    # Initiate empty element
    per_id <- paste0("per_", id)
    pref_list[[per_id]] <- list()
    
    # Loop through the number of indicators for the subscriber
    for (i in seq_len(nrow(config))) {
      
      # For each indicator, try to add the indicator to the preferences list
      tryCatch(
        {
          # If the data is not empty
          if (NROW(tables_list_raw[indic][[1]]) > 0 &&
              NCOL(tables_list_raw[indic][[1]]) > 0) {
            
            # Extract the values from the config
            indic = config$indicator_code[i]
            number_of_periods = config$number_of_periods[[i]]
            filters = unlist(strsplit(gsub("[{}]", "", config$filters[i]), ","))
            
            # Calculate the start period based on the number of periods and the available data
            if(dropdowns_list[[indic]] == "geo") {
              start_period <- max(tables_list_raw[indic][[1]][geo %in% filters, TIME]) - (number_of_periods - 1)
            } else if (dropdowns_list[[indic]] == "CURRENCY") { 
              start_period <- max(tables_list_raw[indic][[1]][CURRENCY %in% filters, TIME]) - (number_of_periods - 1)
            }
            
            # Add to list of subscriber preferences
            pref_list[[per_id]][[indic]] <- 
              list("Filter" = filters,
                   "Period" = start_period)
          } else {
            # Add empty item
            pref_list[[per_id]][[indic]] <- list()
          }
        },
        error = function(e) {
          cat("Error adding", indic, "to the preferences list for id no: ", id, "\n", e$message)
          return(NA)
        }
      )
    }
    
    # Add mail to mail dictionary
    mails_dict[[per_id]] <- list(
      "email" <- contact$email,
      "frequency" <- contact$attributes$FREQUENCY)
  }
}


