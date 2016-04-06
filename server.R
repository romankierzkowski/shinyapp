library(shiny)

shinyServer(function(input, output) {
   
  output$histPlot <- renderPlot({
    x <- rnorm(input$n, mean = input$mean, sd = input$sd)
    hist(x, breaks = 50, col = 'darkgray', border = 'white', xlim=c(-10,10))
    sample_mean = mean(x)
    legend("topright", c('real mean', 'sample mean'), col=c(2,3), lwd=2)
    abline(v=input$mean, col=2, lwd=3)
    abline(v=sample_mean, col=3, lwd=3)
  })
})
