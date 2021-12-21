##NMA shiny web app
## Created 2021-12-09


library(shiny)

##Building UI

ui <- navbarPage("NMA",
                 tabPanel('Initialising',
                          
                          sidebarPanel("Setup:",
                                       fileInput('dataset', 'Choose data file for analysis',
                                                 multiple = FALSE,
                                                 accept = c('.csv','.xls','.xlsx'),
                                                 width = NULL,
                                                 buttonLabel = "Select file",
                                                 placeholder = "No file selected"),
                                       
                                       )
                          
                          ),
                 tabPanel('Resultat matrix'),
                 tabPanel('Inkonsistens'),
                 tabPanel('Forresplot')
                 )

shinyUI(ui)