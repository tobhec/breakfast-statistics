# Morning Statistics

Work in progress.

Windows: Rtools 4.5 (X86\_64~1.POS) must be installed to compile packages.
install.packages("blastula")
install.packages("glue")
install.packages("knitr")
install.packages("digest")
install.packages("blastula")
writeLines('PATH="${RTOOLS45_HOME}\\usr\\bin;${PATH}"', con = "~/.Renviron")
install.packages("remotes")
install.packages("bit64")
install.packages("zoo")
install.packages("XML")
install.packages("rsdmx")
install.packages("data.table")
remotes::install_github('zeugner/MDcountrycode'); 
remotes::install_github('zeugner/MD3'); #bit64 #zoo
remotes::install_github('zeugner/MDstats') #XML #rsdmx

