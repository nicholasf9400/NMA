sidebarPanel("Setup:",
             fileInput('dataset', 'Choose data file for analysis',
                       multiple = FALSE,
                       accept = c('.csv','.xls','.xlsx'),
                       width = NULL,
                       buttonLabel = "Select file",
                       placeholder = "No file selected"),
             checkboxGroupInput('interventions', label = 'Choose interventions')
             
)