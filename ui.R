#
# This is the user-interface definition of a Shiny web application. You can
# run the application by clicking 'Run App' above.
#
# Find out more about building applications with Shiny here:
# 
#    http://shiny.rstudio.com/
#

library(shiny)

# Define UI for application that draws a histogram
shinyUI(fluidPage(
  
  # Application title
  titlePanel("Normal Distribution Simulator"),
  
  # Sidebar with a slider input for mean, var 
  sidebarLayout(
    sidebarPanel(
       numericInput("numeric", "How Many Data Points?",
                    value=1000, min=1, max=1000, step=1),
       sliderInput("sliderX", "Pick Mean Value",
                   -50, 50, 0),
       sliderInput("sliderY", "Pick Standard Deviation Value",
                   1, 100, 50),
       checkboxInput("show_xlab", "Show/Hide X Axis Label", value=TRUE),
       checkboxInput("show_ylab", "Show/Hide Y Axis Label", value=TRUE),
       checkboxInput("show_title", "Show/Hide Title", value=TRUE)
    ),
    
    # Show a plot of the generated distribution
    mainPanel(
       h3("Histogram of Normally Distributed Data"),
       plotOutput("plot1")
    )
  )
))
