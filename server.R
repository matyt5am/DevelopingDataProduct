library(shiny)

# Define server logic required to summarize and view the selected dataset
shinyServer(function(input, output) {
  
  # The Output result is based on the input numbers and the operation selected:
  output$result <- renderPrint({
         
      if (input$operation=="+") {
        input$N1+input$N2
      } else {
        
        if (input$operation=="-") {
          input$N1-input$N2
        } else {
          
          if (input$operation=="*") {
            input$N1*input$N2
          } else {
            
            if (input$operation=="/") {
              input$N1/input$N2
            } else {}
          }
        }
      }
  })
  
})
