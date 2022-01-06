#
# This is the server logic of a Shiny web application. You can run the
# application by clicking 'Run App' above.
#
# Find out more about building applications with Shiny here:
#
#    http://shiny.rstudio.com/
#

library(shiny)

# Define server logic required to draw a histogram
shinyServer(function(input, output) {
    observe({
        req(input$dataset)
        data.set <- vroom::vroom(input$dataset$datapath,
                             header = T,
                             sep = ',')
        
        assign('choices', as.list(unique(c(data.set$'t2', data.set$'t1'))))
        
        if(is.null(choices)){
            choices = 'No data detected'
        }
        updateCheckboxGroupInput(inputId = 'interventions',
                                 label = 'Choose interventions',
                                 choices = choices,
                                 selected = choices)
    })
})
