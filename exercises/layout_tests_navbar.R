library(shiny)
library(bslib)

server <- function(input, output){}

base_stats <- nav_panel("Base Stats",
                        layout_sidebar(
                          sidebar = sidebar("maybe?",
                                            "Some stuff")
                          )
)

compare_stats <- nav_panel("Compare Battle Stats",
                        layout_sidebar(
                          sidebar = sidebar("maybe?",
                                            "Some stuff")
                        )
)

moves <- nav_panel("Moves",
                        layout_sidebar(
                           sidebar = sidebar("maybe?",
                                            "Some stuff")
                        )
)

### navset_tab has same inputs as page_navbar

ui <- page_fluid(
  title = "Bulbasaur",
  navset_card_tab(
    base_stats,
    compare_stats,
    moves
  )
)

shinyApp(ui, server)
