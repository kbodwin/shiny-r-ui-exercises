library(shiny)
library(bslib)

server <- function(input, output){}

sidebar_left <- sidebar("Left Sidebar",
                        width = "33%",
                        class = "bg-light")
sidebar_right <- sidebar("Right Sidebar",
                         position = "right")

ui <- page_fluid(
  layout_sidebar(
    sidebar = sidebar_left,
    layout_sidebar(
      sidebar = sidebar_right,
      "Main Section"
    ),
    fillable = TRUE, ## use all available space
    class = "p-0" ## no padding on nested one
  )
)

shinyApp(ui, server)
