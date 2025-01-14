if (!require(languageserver)) {
  install.packages("languageserver", repos="http://cran.r-project.org", ask = FALSE)
}

if (!require(rmarkdown)) {
  install.packages("rmarkdown", repos="http://cran.r-project.org", ask = FALSE)
}

if (!require(jsonlite)) {
  install.packages("jsonlite", repos="http://cran.r-project.org", ask = FALSE)
}

if (!require(dplyr)) {
  install.packages("dplyr", repos="http://cran.r-project.org", ask = FALSE)
}

tinytex::install_tinytex()
