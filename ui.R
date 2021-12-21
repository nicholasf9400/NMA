##NMA shiny web app
## Created 2021-12-09


library(shiny)

##Building UI

ui <- navbarPage("NMA",
                 tabPanel('Initialising',
                          source('TabPages/Init.R')),
                 tabPanel('Resultat matrix',
                          source("TabPages/results.R")),
                 tabPanel('Inkonsistens',
                          source("TabPages/Inkons.R")),
                 tabPanel('Forresplot',
                          source("TabPages/Forrest.R"))
                 )

shinyUI(ui)
