library(shiny)
library(bslib)

server <- function(input, output){}



card1 <- card(card_header("Hi"))

card2 <- card(card_header("Hi"),
              "Text")

card3 <- card(card_header("Hi"),
              "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.")

ui <- page_fluid(
  layout_column_wrap(
    width = 1/2, height = "600",
    card1,
    layout_column_wrap(
      width = 1,
      heights_equal = "row",
      card2, card3
    )
  )
)

### heights_equal = "row" will let each card fill as much as it can.
## If both are over, it won't care which is bigger, it just gives them half and half and makes them scrolly.
## If both are too short, it will pad inside the card equally.

shinyApp(ui, server)
