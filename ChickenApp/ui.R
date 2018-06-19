library(shiny)

# Define UI 
shinyUI(fluidPage(
  
  # Application title
  titlePanel("Chicken Farm"),
  

  sidebarLayout(
    sidebarPanel(
      h1("Which Feed is Best?"),
      img(src= "chicken.png"),
       selectInput(inputId = "Feed", label = "Choose Feed",
                   choices = list("horsebean", "linseed", "soybean", "sunflower", "meatmeal", "casein"))
    ),
    
    mainPanel(
       h1("Tables and Charts"),
       p("Here are some charts to show the results which should be", em("very"), "interesting"),
	plotOutput("chickenz"),
       p("If you want further information about chickens, you can find it", a(href = "https://en.wikipedia.org/wiki/Chicken", "here"))
    )
  )
))
