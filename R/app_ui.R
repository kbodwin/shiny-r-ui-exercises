#' The application User-Interface
#'
#' @param request Internal parameter for `{shiny}`.
#'     DO NOT REMOVE.
#' @import bslib
#' @noRd
app_ui <- function(request) {
  page_fluid(
    # theme =
    #   bs_theme(
    #     bg = "#283618",
    #     fg = "#DFD6A7",
    #     primary = "#F7CE5B",
    #     secondary = "#F7B05B"
    #   ),
    # Leave this function for adding external resources
    golem_add_external_resources(),

    layout_column_wrap(
      width = 1,
      heights_equal = "row",
      # Fancy header with Poke name and pic and stuff
      #???,
      mod_poke_select_ui("poke_select_1"),

      navset_card_tab(
        nav_panel(
          "Basic Stats",
          mod_poke_stats_ui("poke_stats_1")
        ),
        nav_panel(
          "Battle Strength",
          mod_poke_chart_ui("poke_chart_1")
        ),
        nav_panel(
          "Moves",
          mod_poke_move_ui("poke_move_1")
        )
      )
    )

    #

    # - mod_poke_info_ui("poke_info_1")
    # - mod_poke_type_ui("poke_type_1")
    # - mod_poke_evolve_ui("poke_evolve_1")
    # - mod_poke_stats_ui("poke_stats_1")
    # - mod_poke_move_ui("poke_move_1")
    # - mod_poke_location_ui("poke_location_1")

  )
}

#' Add external Resources to the Application
#'
#' This function is internally used to add external
#' resources inside the Shiny application.
#'
#' @importFrom golem add_resource_path activate_js favicon bundle_resources
#' @noRd
golem_add_external_resources <- function() {
  add_resource_path(
    "www",
    app_sys("app/www")
  )

  tags$head(
    favicon(),
    bundle_resources(
      path = app_sys("app/www"),
      app_title = "shinyMons2"
    ),
    # WORKSHOP TODO
    # Put any custom CSS and JS or font here.
    # Note that when elements are in the www folder,
    # there is no need to put them here because of
    # bundle_resources above.


  )
}
