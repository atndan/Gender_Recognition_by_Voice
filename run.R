# Stub for running within VSCode. Uncomment the following lines to run.
##update.packages(ask=FALSE, checkBuilt=TRUE)
library(shiny)

port <- Sys.getenv('PORT')

shiny::runApp(
  appDir = getwd(),
  host = '0.0.0.0',
  port = as.numeric(port)
)
