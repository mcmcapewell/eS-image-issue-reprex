# eS-image-issue-reprex
Minimal reproducible example of the electricShine image issue

## How to compile
`appbuilder.R` contains the script for compiling the app, assuming a folder named build is located at the parent directory

## What is the issue?
The `logoexample.png` renders fine on the plot, but in the body it cannot be found. 
This is despite the `zzz.R` file which adds `www` to the resource path.
This issue does not happen if you just install the package normally (download the repo and use `devtools::build()` or `remotes::install_github(`mcmcapewell/eS-image-issue-reprex`)`).