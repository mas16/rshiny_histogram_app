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
        
        output$plot1 <- renderPlot({
                set.seed(1234)
                number_of_points <- input$numeric
                meanVal <- input$sliderX[1]
                sdVal <- input$sliderY[1]
                dataX <- rnorm(number_of_points, meanVal, sdVal)
                xlab <- ifelse(input$show_xlab, "Data Value", "")
                ylab <- ifelse(input$show_ylab, "Count", "")
                main <- ifelse(input$show_title, "Normal Distribution", "")
                hist(dataX, xlab=xlab, ylab=ylab, main=main, col="blue",
                     xlim=c(-400,400), ylim=c(0,400))
        })
  
})
