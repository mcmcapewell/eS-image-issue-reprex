#' Helper file for using local files in R Shiny packages (necessary for reading in logos etc.)
#'
#' @noRd
.onAttach <- function(libname, pkgname) {
  # This sets the R library path to the right place so that imgissuereprex can be found in the app directory
  # Fixes the magick rendered image issue
  Sys.setenv("R_LIBS_USER" = R.home("library"))
  # This allows www/ to be discovered - should fix the logo appearing in body but doesn't
   shiny::addResourcePath(
    prefix = "assets",
    directoryPath = system.file(
      "assets",
      package = "imgissuereprex"
    )
  )
									 
}


.onLoad <- function(libname, pkgname) {
  shiny::addResourcePath(
    prefix = "assets",
    directoryPath = system.file(
      "assets",
      package = "imgissuereprex"
    )
  )
}

.onUnload <- function(libname, pkgname) {
   shiny::removeResourcePath("assets")
}