# Require packages
library(shiny)
# library(dplyr)
library(plotly)
library(rsconnect)
# library(jsonlite)

# setwd("/Users/Potato/Documents/info498/Final-Project-X/app")
# Link script files
# source('scripts/build_map.r')
# source('scripts/plotScript.R')
# source("scripts/summary-info.r")
source("pages/scripts/ericgit.R")

# Read in data
#df<- read.csv("data/Summarized data.csv")

shinyServer(function(input, output, session) {
  output$gitplot = renderPlotly({
    git
  })
  
})
