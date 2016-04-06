#
# This is the user-interface definition of a Shiny web application. You can
# run the application by clicking 'Run App' above.
#
# Find out more about building applications with Shiny here:
# 
#    http://shiny.rstudio.com/
#

library(shiny)

shinyUI(fluidPage(
  
  titlePanel("The Sample Mean Compared to The Real Mean"),
  helpText("This shiny app compares the real mean with the sample mean.",
           "It draws samples from normal distribution which parameters can be adjusted."),
  helpText("When you increase the ",
           "sample size the discrepancy between the means decreases. ",
           "When you increase the standard deviation the difference usually increases."),
  sidebarLayout(
    sidebarPanel(
       sliderInput("mean",
                   "Real Mean:",
                   min = -3,
                   max = 3,
                   value = 0),
       sliderInput("sd",
                   "Real Standard Deviation:",
                   min = 1,
                   max = 3,
                   value = 1),
       sliderInput("n",
                   "Sample size:",
                   min = 10,
                   max = 1000,
                   value = 100)
       ),

    
    # Show a plot of the generated distribution
    mainPanel(
       plotOutput("histPlot")
    )
  )
))
