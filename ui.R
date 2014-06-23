library(shiny)

# Define UI for dataset viewer application
shinyUI(fluidPage(
  
  # Application title
  titlePanel("Simple calculator"),
  
  # Sidebar with controls to input the numbers and operation we want to do with numbers
  sidebarLayout(
    sidebarPanel(
      h3('Inputs'),
      numericInput("N1", "Type the first number:", 0),     
      selectInput("operation", "Choose an action:", 
                  choices = c("+", "-", "*", "/")),
      
      numericInput("N2", "Type the second number:", 0),
      submitButton("Calculate")
    ),
    
    
    # Show the result
    mainPanel(
      h3('Result'), 
      
      verbatimTextOutput("result")
    )
  )
))
