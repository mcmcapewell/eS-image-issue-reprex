#' main app ui
#'
#' @return shiny ui
#' @export
#'
app_ui <- function(){
  shiny::fluidPage(
    shiny::h3('Minimal reprex of image issue'),
	
    shiny::wellPanel(
	  shiny::p("Here is an image - meant to show"),
      shiny::tags$img(src = "assets/logoexample.png"),
	  shiny::numericInput(inputId = "n_", "Sample size for normal distribution",
                          min = 1, max = 100000, value = 100)
    ),
	
    shiny::mainPanel(
	  shiny::p("That same image, but rendered on a plot with magick is fine"),
      shiny::plotOutput('plot1')
    )
	
  )
}