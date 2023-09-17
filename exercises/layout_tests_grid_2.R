library(shiny)
library(bslib)

server <- function(input, output){}


cards_names <- LETTERS[1:6]
cards_list <- purrr::map(cards_names, ~card(card_header(.x)))

ui <- page_fluid(
  layout_column_wrap(
    width = 1/3, height = "600",
    !!!cards_list
  )
)

### heights_equal = "row" will let each card fill as much as it can.
## If both are over, it won't care which is bigger, it just gives them half and half and makes them scrolly.
## If both are too short, it will pad inside the card equally.

shinyApp(ui, server)
