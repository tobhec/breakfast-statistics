
# 1) Sender and receiver info
from_email <- Sys.getenv("SENDER_MAIL")
from_name  <- Sys.getenv("TITLE")
to_email   <- mails_dict[per][[1]]
subject    <- Sys.getenv("TITLE")

# 2) Extract HTML string
html_string <- get_html_str(email)  # single character vector with all HTML

# 3) Prepare request-body for Brevo transactional send
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

# 4) POST to Brevo API
#brevo_key <- Sys.getenv("api-key")  # recommended to store in env var
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

# 5) Check response
if (httr::status_code(res) %in% c(200,201,202)) {
  cat("Sent OK:", httr::content(res, "text"), "\n")
} else {
  cat("Problem:", httr::status_code(res), httr::content(res, "text"), "\n")
}


