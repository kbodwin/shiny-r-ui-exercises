#' poke_move UI Function
#'
#' @description A shiny Module.
#'
#' @param id,input,output,session Internal parameters for {shiny}.
#'
#' @noRd
mod_poke_move_ui <- function(id) {
  ns <- NS(id)
  uiOutput(ns("poke_moves"))
}

#' poke_move Server Functions
#' @param selected Selected pokemon data.
#'
#' @noRd
mod_poke_move_server <- function(id, selected) {
  moduleServer(id, function(input, output, session) {
    ns <- session$ns

    # generate the card
    output$poke_moves <- renderUI({
      req(!is.null(selected()))

      moves <- selected()$moves

      panels <- purrr::map(moves, process_move_section)

      accordion(
        multiple = TRUE,
        !!!panels
      )
    })
  })
}

