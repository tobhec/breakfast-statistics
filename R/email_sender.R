
# Extract sender and receiver info
from_email <- Sys.getenv("SENDER_MAIL")
from_name  <- Sys.getenv("TITLE")
to_email   <- mails_dict[[per]][[1]]
subject    <- format(Sys.Date(), "%B %d, %Y")

# Extract HTML string
html_string <- get_html_str(email)  # single character vector with all HTML

# Prepare request-body for Brevo transactional send
request_body <- list(
  sender = list(
    name  = from_name,
    email = from_email
  ),
  to = list(
    list(
      email = to_email
    )
  ),
  subject = subject,
  htmlContent = html_string
)

# POST to Brevo API
brevo_api_key <- Sys.getenv("BREVO_API_KEY")
res <- httr::POST(
  url = "https://api.brevo.com/v3/smtp/email",
  httr::add_headers(
    "accept" = "application/json",
    "content-type" = "application/json",
    "api-key" = brevo_api_key
  ),
  body = jsonlite::toJSON(request_body, auto_unbox = TRUE)
)

# Check response
if (httr::status_code(res) %in% c(200,201,202)) {
  cat("Sent OK:", httr::content(res, "text"), "\n")
} else {
  cat("Problem:", httr::status_code(res), httr::content(res, "text"), "\n")
}


