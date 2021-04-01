# remotes::install_github("chasemc/electricShine@webpackmerge-fix")

dir_ <- "C:\\Users\\MCapewell\\Documents\\eS-image-issue-reprex"
buildPath <- paste(dir_, "build", sep = "\\")

## Potentially necessary fix for package
arch <- "x64"
platform <- "win"


## This also works!
electricShine::electrify(
   app_name = "ImageIssueReprex",
   short_description = "Reprex for issue",
   semantic_version = "0.1.0",
   build_path = buildPath,
   mran_date = NULL,
   cran_like_url = "https://cran.r-project.org",
   function_name = "run_app",
   git_host = NULL,
   git_repo = NULL,
   local_package_path = paste(dir_, "eS-image-issue-reprex", sep = "/"),
   package_install_opts = list(type = "binary"),
   run_build = TRUE
 )
