# Require packages
library(shiny)
library(jsonlite)
library(plotly)
#library(dplyr)
library(shinythemes)

#rmdfiles <- c("pages/projects.Rmd")
#sapply(rmdfiles, knit, quiet = T)

shinyUI(navbarPage(
  "Eric Eckert",
  theme = shinytheme("yeti"),
                   
                   tabPanel("Home",
                            mainPanel(
                              includeMarkdown("pages/index.Rmd")
                            )
                   ),
                   
                   tabPanel("Experience",
                            mainPanel(
                              includeMarkdown("pages/experience.Rmd")
                            )
                   ),
                   tabPanel("Projects",
                            mainPanel(
                              includeMarkdown("pages/projects.Rmd")
                            )
                   ),
                   tabPanel("Research",
                            mainPanel(
                              includeMarkdown("pages/research.Rmd")
                            )
                   ),
                   tabPanel("Design",
                            mainPanel(
                              includeMarkdown("pages/design.Rmd")
                            )
                   ),
                   tabPanel("CAD",
                            mainPanel(
                              includeMarkdown("pages/cad.Rmd")
                            )
                   ),
                   tabPanel("Digital Media",
                            mainPanel(
                              includeMarkdown("pages/dm.Rmd")
                            )
                   )
#                    tabPanel("Contact Me",
#                             mainPanel(
#                               includeMarkdown("pages/contact.Rmd")
#                             )
#                   )
))
