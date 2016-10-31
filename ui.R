# Define UI for dataset viewer application
fluidPage(
  
  # Application title
  titlePanel("Summarized R Datasets"),
  
  # Sidebar with controls to select a dataset,
  # and specify the number of observations to view. 
  sidebarLayout(
    sidebarPanel(
          selectInput("dataset", "Choose a dataset:", 
          choices = c("iris", "airquality", "attitude")),
      
      numericInput("obs", "Number of observations to view:", 5)
    ),
    
    
    # Show a summary of the dataset and an HTML 
    # table with the requested number of observations
    mainPanel(

      verbatimTextOutput("summary"), 
      
      tableOutput("view")
    )
  )
)
