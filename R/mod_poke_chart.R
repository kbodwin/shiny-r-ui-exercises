#' poke_stats UI Function
#'
#' @description A shiny Module.
#'
#' @param id,input,output,session Internal parameters for {shiny}.
#'
#' @noRd
mod_poke_chart_ui <- function(id) {
  ns <- NS(id)
  echarts4rOutput(outputId = ns("poke_stats"))
}

#' poke_stats Server Functions
#'
#' @param selected Selected pokemon data.
#'
#' @noRd
mod_poke_chart_server <- function(id, selected) {
  moduleServer(id, function(input, output, session) {
    ns <- session$ns

    # Generate radar chart for pokemons
    output$poke_stats <- renderEcharts4r({
      req(!is.null(selected()))
      create_radar_stats(selected())
    })

    # card wrapper for the charts
    # output$poke_stats_card <- renderUI({
    #   req(!is.null(selected()))

      # WORKSHOP TODO
      # Add the stat main ui including the radar chart output above:
      # echarts4rOutput(outputId = ns("poke_stats"))
    #})
  })
}
