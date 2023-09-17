library(shiny)
library(bslib)
library(bsicons)

server <- function(input, output){}

ui <- page_fluid(
  layout_sidebar(
    sidebar = accordion(
      accordion_panel("Axis Labels",
                      icon = bs_icon("body-text"),
                      textInput("xlab", "X label", "x vals"),
                      textInput("ylab", "Y label", "y yals")
      ),
      accordion_panel("Number of Observations",
                      numericInput("obs",
                                   "Number of observations:",
                                   min = 0,
                                   max = 1000,
                                   value = 500)
      ),
      open = 1
    ),
    "An imaginary plot"
  )
)

shinyApp(ui, server)
