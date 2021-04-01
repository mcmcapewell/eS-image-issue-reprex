#' main server of app
#'
#' @param input shiny input
#' @param output shiny output
#' @param session shiny session
#'
#' @return shiny server
#' @export
app_server <- function(input, output, session) {

  output$plot1 <- shiny::renderPlot({
    testfunc(N = input$n_)
  })
  
  
}
