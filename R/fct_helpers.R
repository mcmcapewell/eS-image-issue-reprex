#' Pastes logo onto a histogram
#'
#' @noRd
testfunc = function(N = 100, dir_ = system.file('assets', package = 'imgissuereprex')) {
  logo = magick::image_read(paste(dir_, "logoexample.png", sep = "/"))
  
  graphics::hist(stats::rnorm(n = N), prob = TRUE, xlim = c(-6, 6))
  graphics::rasterImage(logo, -6, 0.25, -6+2, 0.25+0.05)
}