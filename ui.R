
# This is the user-interface definition of a Shiny web application.
# You can find out more about building applications with Shiny here:
#
# http://shiny.rstudio.com
#

library(shiny)

shinyUI(fluidPage(

  # Application title
  titlePanel("Phelps' Homework"),

  # Sidebar with a slider input for number of bins
  sidebarLayout(
    sidebarPanel(
      numericInput('id1', 'Numeric input, labeled id1', 0, min = 0, max = 100, step = 1),
      checkboxGroupInput("id2", "Checkbox",
                        c("Cat" = "1",
                          "Fish" = "2",
                          "Dog" = "3")),
      dateInput("date", "Date:"),
      selectInput("dataset", "Choose a dataset:", 
                  choices = c("rock", "pressure", "cars")),     
      numericInput("obs", "Number of observations to view:", 10)
    ),

    # Show a plot of the generated distribution
    mainPanel(
      h3('Illustrating outputs'),
      verbatimTextOutput("oid1"),
      verbatimTextOutput("oid2"),
      verbatimTextOutput("odate"),
      verbatimTextOutput("summary"),
      
      tableOutput("view")    )
  )
))
