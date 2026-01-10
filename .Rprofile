# Activate renv
source("renv/activate.R")

# Load project-specific environment variables
.rprofile_dir <- tryCatch(dirname(sys.frame(1)$ofile), error = function(e) getwd())
renviron_path <- file.path(.rprofile_dir, ".Renviron")
if (file.exists(renviron_path)) {
  readRenviron(renviron_path)
}