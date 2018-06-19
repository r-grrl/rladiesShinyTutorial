library(shiny)
library(dplyr)

chickwts <- chickwts

# Define server logic
shinyServer(function(input, output) {
   
	output$chickenz <- renderPlot({
	  data1 <- filter(chickwts, feed == input$Feed) %>% select(weight)
	  return(boxplot(data1))
	})
})
